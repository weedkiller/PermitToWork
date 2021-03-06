﻿using PermitToWork.Models.Hira;
using PermitToWork.Models.Ptw;
using PermitToWork.Models.User;
using PermitToWork.Utilities;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Reflection;
using System.Web;
using PermitToWork.Models.Master;
using PermitToWork.Models.Workflow;

namespace PermitToWork.Models
{
    public class FIEntity : fire_impairment, IClearancePermitEntity
    {
        /// <summary>
        /// Override permit_to_work from base class
        /// return null for preventing circular reference
        /// </summary>
        public override permit_to_work permit_to_work { get { return null; } set { } }

        // ptw entity for PTW reference
        private PtwEntity ptw { get; set; }

        public string[] screening_spv_arr { get; set; }
        public string[] screening_so_arr { get; set; }
        public string[] screening_fo_arr { get; set; }

        public string[] can_screening_spv_arr { get; set; }
        public string[] can_screening_so_arr { get; set; }
        public string[] can_screening_fo_arr { get; set; }

        public Dictionary<string, UserEntity> userInFI { get; set; }

        // HIRA Document related
        public List<HiraEntity> hira_document { get; set; }
        public string hira_no { get; set; }

        public string fi_status { get; set; }

        public int ids { get; set; }
        public string statusText { get; set; }

        public int? ptw_status { get; set; }

        public bool is_guest { get; set; }
        public bool isUser { get; set; }

        private star_energy_ptwEntities db;

        public WorkflowNodeServiceModel workflowNodeService { get; set; }


        /// <summary>
        /// Status of Fire Impairment Clearance Permit
        /// </summary>
        public enum FIStatus {
            CREATE,
            REQUESTORAPPROVE,
            FIREWATCHAPPROVE,
            SPVSCREENING,
            SOAPPROVE,
            FOAPPROVE,
            DEPTFOAPPROVE,
            CLOSING,
            CANREQUESTORAPPROVE,
            CANSPVSCREENING,
            CANFIREWATCHAPPROVE,
            CANSOAPPROVE,
            CANFOAPPROVE,
            CANDEPTFOAPPROVE
        };

        public enum UserInFI
        {
            REQUESTOR,
            SUPERVISOR,
            FIREWATCH,
            SAFETYOFFICER,
            FACILITYOWNER,
            DEPTHEADFO,
            REQUESTORDELEGATE,
            FIREWATCHDELEGATE,
            SAFETYOFFICERDELEGATE,
            FACILITYOWNERDELEGATE,
            DEPTHEADFODELEGATE,
            CANREQUESTORDELEGATE,
            CANFIREWATCHDELEGATE,
            CANSAFETYOFFICERDELEGATE,
            CANFACILITYOWNERDELEGATE,
            CANDEPTHEADFODELEGATE,
        }

        // parameterless constructor for declaring db
        public FIEntity() : base()
        {
            this.db = new star_energy_ptwEntities();
            this.userInFI = new Dictionary<string, UserEntity>();
            this.workflowNodeService = new WorkflowNodeServiceModel();
        }

        // constructor with id to get object from database
        public FIEntity(int id, UserEntity user)
            : this()
        {
            fire_impairment fi = this.db.fire_impairment.Find(id);
            // this.ptw = new PtwEntity(fi.id_ptw.Value);
            ModelUtilization.Clone(fi, this);
            this.is_guest = fi.permit_to_work.is_guest == 1;
            this.screening_fo_arr = this.screening_fo.Split('#');
            this.screening_spv_arr = this.screening_spv.Split('#');
            this.screening_so_arr = this.screening_so.Split('#');

            this.can_screening_fo_arr = this.cancel_fo.Split('#');
            this.can_screening_spv_arr = this.cancel_spv.Split('#');
            this.can_screening_so_arr = this.cancel_so.Split('#');

            this.statusText = getStatus();

            generateUserInFI(user);

            this.hira_document = new ListHira(this.id_ptw.Value, this.db).listHira;
        }

        public FIEntity(int id, UserEntity user, ListUser listUser)
            : this()
        {
            fire_impairment fi = this.db.fire_impairment.Find(id);
            // this.ptw = new PtwEntity(fi.id_ptw.Value);
            ModelUtilization.Clone(fi, this);
            this.is_guest = fi.permit_to_work.is_guest == 1;
            this.screening_fo_arr = this.screening_fo.Split('#');
            this.screening_spv_arr = this.screening_spv.Split('#');
            this.screening_so_arr = this.screening_so.Split('#');

            this.can_screening_fo_arr = this.cancel_fo.Split('#');
            this.can_screening_spv_arr = this.cancel_spv.Split('#');
            this.can_screening_so_arr = this.cancel_so.Split('#');

            this.statusText = getStatus();

            generateUserInFI(user, listUser);

            this.hira_document = new ListHira(this.id_ptw.Value, this.db).listHira;
        }

        public FIEntity(fire_impairment fi, ListUser listUser, UserEntity user)
            : this()
        {
            // this.ptw = new PtwEntity(fi.id_ptw.Value);
            ModelUtilization.Clone(fi, this);
            this.isUser = false;
            this.statusText = getStatus();

            generateUserInFI(user, listUser);
        }

        public FIEntity(fire_impairment fi, UserEntity user)
            : this()
        {
            // this.ptw = new PtwEntity(fi.id_ptw.Value);
            ModelUtilization.Clone(fi, this);
            this.is_guest = fi.permit_to_work.is_guest == 1;
            this.screening_fo_arr = this.screening_fo.Split('#');
            this.screening_spv_arr = this.screening_spv.Split('#');
            this.screening_so_arr = this.screening_so.Split('#');

            this.can_screening_fo_arr = this.cancel_fo.Split('#');
            this.can_screening_spv_arr = this.cancel_spv.Split('#');
            this.can_screening_so_arr = this.cancel_so.Split('#');

            this.statusText = getStatus();

            //generateUserInFI(user);

            //this.hira_document = new ListHira(this.id_ptw.Value, this.db).listHira;
        }

        public FIEntity(int ptw_id, string requestor, string purpose, string acc_fo, string acc_supervisor) : this()
        {
            // TODO: Complete member initialization
            this.purpose = purpose;
            this.id_ptw = ptw_id;
            this.requestor = requestor;

            this.acc_fo = acc_fo;
            this.spv = acc_supervisor;

            this.screening_fo = "#####";
            this.screening_spv = "#####";
            this.screening_so = "#####";
            this.cancel_fo = "##";
            this.cancel_spv = "##";
            this.cancel_so = "##";
        }

        /// <summary>
        /// Creating Fire Impairment to save to database
        /// </summary>
        /// <returns>
        /// 1, if entry to database success
        /// 0, if fail
        /// </returns>
        public int create() {
            fire_impairment fi = new fire_impairment();
            this.status = (int)FIStatus.CREATE;
            ModelUtilization.Clone(this, fi);
            this.db.fire_impairment.Add(fi);
            int retVal = this.db.SaveChanges();
            this.id = fi.id;
            return retVal;
        }

        // function for editing by requestor
        public int edit()
        {
            int retVal = 0;
            fire_impairment fi = this.db.fire_impairment.Find(this.id);
            if (fi != null)
            {
                fi.purpose = this.purpose;
                fi.area_affected = this.area_affected;
                fi.fire_watch = this.fire_watch;

                this.db.Entry(fi).State = EntityState.Modified;
                retVal = this.db.SaveChanges();
            }

            return retVal;
        }

        public int delete()
        {
            fire_impairment fi = db.fire_impairment.Find(this.id);
            this.db.fire_impairment.Remove(fi);
            int retVal = this.db.SaveChanges();
            return retVal;
        }

        public void generateNumber(string ptw_no)
        {
            string result = "FI-" + ptw_no;

            this.fi_no = result;
        }

        /// <summary>
        /// save as draft Fire Impairment Clearance Permit
        /// </summary>
        /// <param name="who">1 if requestor, 2 if supervisor, 3 if fire watch, 4 if safety officer, 5 if facility owner, 6 if dept. head FO</param>
        /// <returns>1 if success, 0 if fail</returns>
        public int saveAsDraft(int who)
        {
            int retVal = 0;
            switch (who)
            {
                case 1 /* Requestor */:
                    retVal = this.edit();
                    break;
                case 3 /* Supervisor */:
                    retVal = SavePreScreening(1);
                    break;
                case 4 /* Safety Officer */:
                    retVal = SavePreScreening(2);
                    break;
                case 5 /* Facility Owner */:
                    retVal = SavePreScreening(3);
                    break;
                default:
                    retVal = 1;
                    break;
            }

            return retVal;
        }

        /// <summary>
        /// function for signing clearance permit
        /// </summary>
        /// <param name="who">1 if requestor, 2 if supervisor, 3 if fire watch, 4 if safety officer, 5 if facility owner, 6 if dept. head FO</param>
        /// <returns>1 if success, 0 if fail, -1 if user doesn't exist</returns>
        public int signClearance(int who, UserEntity user) {
            int retVal = 0, userId = 0;
            fire_impairment fi = this.db.fire_impairment.Find(this.id);
            UserEntity userFi = null;
            if (fi != null)
            {
                switch (who)
                {
                    case 1 /* Requestor */:
                        if (is_guest)
                        {
                            Int32.TryParse(fi.spv, out userId);
                            userFi = new UserEntity(userId, user.token, user);
                            if (user.id == userFi.id || user.id == userFi.employee_delegate)
                            {
                                fi.acc_work_leader_signature = fi.permit_to_work.acc_ptw_requestor_approve;
                            }
                        } else {
                            Int32.TryParse(fi.requestor, out userId);
                            userFi = new UserEntity(userId, user.token, user);
                            if (user.id == userFi.id)
                            {
                                fi.acc_work_leader_signature = "a" + user.signature;
                            }
                            else if (user.id == userFi.employee_delegate)
                            {
                                fi.acc_work_leader_signature = "d" + user.signature;
                                fi.acc_work_leader_delegate = user.id.ToString();
                            }
                        }

                        fi.status = (int)FIStatus.REQUESTORAPPROVE;
                        // create node
                        workflowNodeService.CreateNode(this.id, WorkflowNodeServiceModel.DocumentType.FIREIMPAIRMENT.ToString(),
                            WorkflowNodeServiceModel.FireImpairmentNodeName.REQUESTOR_APPROVE.ToString(), (byte)WorkflowNodeServiceModel.NodeStatus.APPROVED);

                        break;
                    case 2 /* Fire Watch */:
                        Int32.TryParse(fi.fire_watch, out userId);
                        userFi = new UserEntity(userId, user.token, user);
                        if (user.id == userFi.id)
                        {
                            fi.acc_fire_watch_signature = "a" + user.signature;
                        }
                        else if (user.id == userFi.employee_delegate)
                        {
                            fi.acc_fire_watch_signature = "d" + user.signature;
                            fi.acc_fire_wacth_delegate = user.id.ToString();
                        }

                        fi.status = (int)FIStatus.FIREWATCHAPPROVE;
                        // create node
                        workflowNodeService.CreateNode(this.id, WorkflowNodeServiceModel.DocumentType.FIREIMPAIRMENT.ToString(),
                            WorkflowNodeServiceModel.FireImpairmentNodeName.FIREWATCH_APPROVE.ToString(), (byte)WorkflowNodeServiceModel.NodeStatus.APPROVED);
                        break;
                    case 3 /* Supervisor */:
                        fi.status = (int)FIStatus.SPVSCREENING;
                        // create node
                        workflowNodeService.CreateNode(this.id, WorkflowNodeServiceModel.DocumentType.FIREIMPAIRMENT.ToString(),
                            WorkflowNodeServiceModel.FireImpairmentNodeName.SUPERVISOR_SCREENING.ToString(), (byte)WorkflowNodeServiceModel.NodeStatus.APPROVED);
                        break;
                    case 4 /* Safety Officer */:
                        Int32.TryParse(fi.acc_so, out userId);
                        userFi = new UserEntity(userId, user.token, user);
                        if (user.id == userFi.id)
                        {
                            fi.acc_so_signature = "a" + user.signature;
                        }
                        else if (user.id == userFi.employee_delegate)
                        {
                            fi.acc_so_signature = "d" + user.signature;
                            fi.acc_so_delegate = user.id.ToString();
                        }

                        fi.status = (int)FIStatus.SOAPPROVE;
                        // create node
                        workflowNodeService.CreateNode(this.id, WorkflowNodeServiceModel.DocumentType.FIREIMPAIRMENT.ToString(),
                            WorkflowNodeServiceModel.FireImpairmentNodeName.SAFETY_OFFICER_APPROVE.ToString(), (byte)WorkflowNodeServiceModel.NodeStatus.APPROVED);
                        break;
                    case 5 /* Facility Owner */:
                        Int32.TryParse(fi.acc_fo, out userId);
                        userFi = new UserEntity(userId, user.token, user);
                        if (user.id == userFi.id)
                        {
                            fi.acc_fo_signature = "a" + user.signature;
                        }
                        else
                        {
                            fi.acc_fo_signature = "d" + user.signature;
                            fi.acc_fo_delegate = user.id.ToString();
                        }

                        fi.status = (int)FIStatus.FOAPPROVE;
                        // create node
                        workflowNodeService.CreateNode(this.id, WorkflowNodeServiceModel.DocumentType.FIREIMPAIRMENT.ToString(),
                            WorkflowNodeServiceModel.FireImpairmentNodeName.FACILITY_OWNER_APPROVE.ToString(), (byte)WorkflowNodeServiceModel.NodeStatus.APPROVED);
                        break;
                    case 6 /* Dept. Head Facility Owner */:
                        Int32.TryParse(fi.acc_dept_head, out userId);
                        userFi = new UserEntity(userId, user.token, user);
                        if (user.id == userFi.id)
                        {
                            fi.acc_dept_head_signature = "a" + user.signature;
                        }
                        else if (user.id == userFi.employee_delegate)
                        {
                            fi.acc_dept_head_signature = "d" + user.signature;
                            fi.acc_dept_head_delegate = user.id.ToString();
                        }

                        fi.status = (int)FIStatus.DEPTFOAPPROVE;
                        // create node
                        workflowNodeService.CreateNode(this.id, WorkflowNodeServiceModel.DocumentType.FIREIMPAIRMENT.ToString(),
                            WorkflowNodeServiceModel.FireImpairmentNodeName.DEPT_HEAD_FO_APPROVE.ToString(), (byte)WorkflowNodeServiceModel.NodeStatus.APPROVED);

                        this.ptw = new PtwEntity(fi.id_ptw.Value, user);
                        this.ptw.setClerancePermitStatus((int)PtwEntity.statusClearance.COMPLETE, PtwEntity.clearancePermit.FIREIMPAIRMENT.ToString());
                        break;
                }

                this.db.Entry(fi).State = EntityState.Modified;
                retVal = this.db.SaveChanges();
            }

            return retVal;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="who"></param>
        /// <returns></returns>
        public int rejectClearance(int who)
        {
            int retVal = 0;
            fire_impairment fi = this.db.fire_impairment.Find(this.id);
            if (fi != null)
            {
                switch (who)
                {
                    case 1 /* Requestor */:

                        fi.status = (int)FIStatus.REQUESTORAPPROVE;

                        break;
                    case 2 /* Fire Watch */:
                        fi.acc_work_leader_signature = null;
                        fi.acc_work_leader_delegate = null;
                        fi.status = (int)FIStatus.CREATE;
                        // create node
                        workflowNodeService.CreateNode(this.id, WorkflowNodeServiceModel.DocumentType.FIREIMPAIRMENT.ToString(),
                            WorkflowNodeServiceModel.FireImpairmentNodeName.FIREWATCH_APPROVE.ToString(), (byte)WorkflowNodeServiceModel.NodeStatus.REJECTED);
                        break;
                    case 3 /* Supervisor */:
                        fi.acc_fire_watch_signature = null;
                        fi.acc_fire_wacth_delegate = null;
                        fi.status = (int)FIStatus.REQUESTORAPPROVE;
                        // create node
                        workflowNodeService.CreateNode(this.id, WorkflowNodeServiceModel.DocumentType.FIREIMPAIRMENT.ToString(),
                            WorkflowNodeServiceModel.FireImpairmentNodeName.SUPERVISOR_SCREENING.ToString(), (byte)WorkflowNodeServiceModel.NodeStatus.REJECTED);
                        break;
                    case 4 /* Safety Officer */:
                        fi.status = (int)FIStatus.FIREWATCHAPPROVE;
                        // create node
                        workflowNodeService.CreateNode(this.id, WorkflowNodeServiceModel.DocumentType.FIREIMPAIRMENT.ToString(),
                            WorkflowNodeServiceModel.FireImpairmentNodeName.SAFETY_OFFICER_APPROVE.ToString(), (byte)WorkflowNodeServiceModel.NodeStatus.REJECTED);
                        break;
                    case 5 /* Facility Owner */:
                        fi.acc_so_signature = null;
                        fi.acc_so_delegate = null;
                        fi.status = (int)FIStatus.SPVSCREENING;
                        // create node
                        workflowNodeService.CreateNode(this.id, WorkflowNodeServiceModel.DocumentType.FIREIMPAIRMENT.ToString(),
                            WorkflowNodeServiceModel.FireImpairmentNodeName.FACILITY_OWNER_APPROVE.ToString(), (byte)WorkflowNodeServiceModel.NodeStatus.REJECTED);
                        break;
                    case 6 /* Dept. Head Facility Owner */:
                        fi.acc_fo_signature = null;
                        fi.acc_fo_delegate = null;
                        fi.status = (int)FIStatus.SOAPPROVE;
                        // create node
                        workflowNodeService.CreateNode(this.id, WorkflowNodeServiceModel.DocumentType.FIREIMPAIRMENT.ToString(),
                            WorkflowNodeServiceModel.FireImpairmentNodeName.DEPT_HEAD_FO_APPROVE.ToString(), (byte)WorkflowNodeServiceModel.NodeStatus.REJECTED);
                        break;
                }

                this.db.Entry(fi).State = EntityState.Modified;
                retVal = this.db.SaveChanges();
            }

            return retVal;
        }


        /// <summary>
        /// sending email to user, need the object instatiate first to get user
        /// </summary>
        /// <param name="who"></param>
        /// <param name="serverUrl"></param>
        /// <param name="user"></param>
        /// <returns></returns>
        public int sendToUser(int who, int stat, string serverUrl, UserEntity user, string comment = "")
        {
            int retVal = 0;
            int? userId = null;
            fire_impairment fi = this.db.fire_impairment.Find(this.id);
            UserEntity userFi = null;
            List<string> listEmail = new List<string>();
            SendEmail sendEmail = new SendEmail();
            string message = "";
            string title = "";
            List<int> userIds = new List<int>();
            if (fi != null)
            {
#if DEBUG
                listEmail.Add("septujamasoka@gmail.com");
#endif
                switch (who)
                {
                    case 1 /* Requestor */:
#if !DEBUG
                        if (is_guest)
                        {
                            if (this.userInFI.Keys.ToList().Exists(p => p == UserInFI.SUPERVISOR.ToString()))
                            {
                                listEmail.Add(this.userInFI[UserInFI.SUPERVISOR.ToString()].email);
                                userIds.Add(this.userInFI[UserInFI.SUPERVISOR.ToString()].id);
                                if ((userId = this.userInFI[UserInFI.SUPERVISOR.ToString()].employee_delegate) != null)
                                {
                                    userFi = new UserEntity(userId.Value, user.token, user);
                                    listEmail.Add(userFi.email);
                                    userIds.Add(userFi.id);
                                }
                            }
                        }
                        else
                        {
                            if (this.userInFI.Keys.ToList().Exists(p => p == UserInFI.REQUESTOR.ToString()))
                            {
                                listEmail.Add(this.userInFI[UserInFI.REQUESTOR.ToString()].email);
                                userIds.Add(this.userInFI[UserInFI.REQUESTOR.ToString()].id);
                                if ((userId = this.userInFI[UserInFI.REQUESTOR.ToString()].employee_delegate) != null)
                                {
                                    userFi = new UserEntity(userId.Value, user.token, user);
                                    listEmail.Add(userFi.email);
                                    userIds.Add(userFi.id);
                                }
                            }
                        }

#endif

                        if (stat == 1)
                        {
                            title = "Fire Impairment Clearance Permit (" + this.fi_no + ") Need Review and Approval";
                            message = serverUrl + "Home?p=FI/edit/" + this.id;
                            sendEmail.SendToNotificationCenter(userIds, "Fire Impairment Permit", "Please approve Fire Impairment Permit No. " + this.fi_no, serverUrl + "Home?p=FI/edit/" + this.id);
                        }
                        else if (stat == 2)
                        {
                            message = serverUrl + "Home?p=FI/edit/" + this.id + "<br />Comment: " + comment;
                            title = "Fire Impairment Clearance Permit (" + this.fi_no + ") Rejected from Fire Watch";
                            sendEmail.SendToNotificationCenter(userIds, "Fire Impairment Permit", "Fire Impairment Permit No. " + this.fi_no + "is rejected with comment: " + comment, serverUrl + "Home?p=FI/edit/" + this.id);
                        }

                        retVal = 1;
                        break;
                    case 2 /* Fire Watch */:
                        #if !DEBUG

                        if (this.userInFI.Keys.ToList().Exists(p => p == UserInFI.FIREWATCH.ToString()))
                        {
                            listEmail.Add(this.userInFI[UserInFI.FIREWATCH.ToString()].email);
                            userIds.Add(this.userInFI[UserInFI.FIREWATCH.ToString()].id);
                            if ((userId = this.userInFI[UserInFI.FIREWATCH.ToString()].employee_delegate) != null)
                            {
                                userFi = new UserEntity(userId.Value, user.token, user);
                                listEmail.Add(userFi.email);
                                userIds.Add(userFi.id);
                            }
                        }

                        #endif

                        if (stat == 1)
                        {
                            title = "Fire Impairment Clearance Permit (" + this.fi_no + ") Need Review and Approval";
                            message = serverUrl + "Home?p=FI/edit/" + this.id;
                            sendEmail.SendToNotificationCenter(userIds, "Fire Impairment Permit", "Please approve Fire Impairment Permit No. " + this.fi_no, serverUrl + "Home?p=FI/edit/" + this.id);

                            sendEmailAssign(serverUrl, user);
                        }
                        else if (stat == 2)
                        {
                            message = serverUrl + "Home?p=FI/edit/" + this.id + "<br />Comment: " + comment;
                            title = "Fire Impairment Clearance Permit (" + this.fi_no + ") Rejected from Supervisor";
                            sendEmail.SendToNotificationCenter(userIds, "Fire Impairment Permit", "Fire Impairment Permit No. " + this.fi_no + "is rejected with comment: " + comment, serverUrl + "Home?p=FI/edit/" + this.id);
                        }
                        retVal = 1;
                        break;
                    case 3 /* Supervisor */:
                        #if !DEBUG

                        if (this.userInFI.Keys.ToList().Exists(p => p == UserInFI.SUPERVISOR.ToString()))
                        {
                            listEmail.Add(this.userInFI[UserInFI.SUPERVISOR.ToString()].email);
                            userIds.Add(this.userInFI[UserInFI.SUPERVISOR.ToString()].id);
                            if ((userId = this.userInFI[UserInFI.SUPERVISOR.ToString()].employee_delegate) != null)
                            {
                                userFi = new UserEntity(userId.Value, user.token, user);
                                listEmail.Add(userFi.email);
                                userIds.Add(userFi.id);
                            }
                        }
                        else
                        {

                        }

                        #endif

                        if (stat == 1)
                        {
                            title = "Fire Impairment Clearance Permit (" + this.fi_no + ") Need Review and Approval";
                            message = serverUrl + "Home?p=FI/edit/" + this.id;
                            sendEmail.SendToNotificationCenter(userIds, "Fire Impairment Permit", "Please approve Fire Impairment Permit No. " + this.fi_no, serverUrl + "Home?p=FI/edit/" + this.id);
                        }
                        else if (stat == 2)
                        {
                            message = serverUrl + "Home?p=FI/edit/" + this.id + "<br />Comment: " + comment;
                            title = "Fire Impairment Clearance Permit (" + this.fi_no + ") Rejected from Safety Officer";
                            sendEmail.SendToNotificationCenter(userIds, "Fire Impairment Permit", "Fire Impairment Permit No. " + this.fi_no + "is rejected with comment: " + comment, serverUrl + "Home?p=FI/edit/" + this.id);
                        }
                        retVal = 1;
                        break;
                    case 4 /* Safety Officer */:
                        if (this.userInFI.Keys.ToList().Exists(p => p == UserInFI.SAFETYOFFICER.ToString()) && this.userInFI[UserInFI.SAFETYOFFICER.ToString()] != null)
                        {
                            #if !DEBUG
                            listEmail.Add(this.userInFI[UserInFI.SAFETYOFFICER.ToString()].email);
                            userIds.Add(this.userInFI[UserInFI.SAFETYOFFICER.ToString()].id);
                            if ((userId = this.userInFI[UserInFI.SAFETYOFFICER.ToString()].employee_delegate) != null)
                            {
                                userFi = new UserEntity(userId.Value, user.token, user);
                                listEmail.Add(userFi.email);
                                userIds.Add(userFi.id);
                            }
                            #endif

                            if (stat == 1)
                            {
                                title = "Fire Impairment Clearance Permit (" + this.fi_no + ") Need Review and Approval";
                                message = serverUrl + "Home?p=FI/edit/" + this.id;
                                sendEmail.SendToNotificationCenter(userIds, "Fire Impairment Permit", "Please approve Fire Impairment Permit No. " + this.fi_no, serverUrl + "Home?p=FI/edit/" + this.id);
                            }
                            else if (stat == 2)
                            {
                                message = serverUrl + "Home?p=FI/edit/" + this.id + "<br />Comment: " + comment;
                                title = "Fire Impairment Clearance Permit (" + this.fi_no + ") Rejected from Facility Owner";
                                sendEmail.SendToNotificationCenter(userIds, "Fire Impairment Permit", "Fire Impairment Permit No. " + this.fi_no + "is rejected with comment: " + comment, serverUrl + "Home?p=FI/edit/" + this.id);
                            }
                        } else {
                            #if !DEBUG
                            listEmail.Add(this.userInFI[UserInFI.FACILITYOWNER.ToString()].email);
                            userIds.Add(this.userInFI[UserInFI.FACILITYOWNER.ToString()].id);
                            if ((userId = this.userInFI[UserInFI.FACILITYOWNER.ToString()].employee_delegate) != null)
                            {
                                userFi = new UserEntity(userId.Value, user.token, user);
                                listEmail.Add(userFi.email);
                                userIds.Add(userFi.id);
                            }

                            List<UserEntity> listDel = this.userInFI[UserInFI.FACILITYOWNER.ToString()].GetDelegateFO(user);
                            foreach (UserEntity u in listDel)
                            {
                                listEmail.Add(u.email);
                                userIds.Add(u.id);
                            }
                            #endif

                            title = "[URGENT] Fire Impairment Clearance Permit (" + this.fi_no + ") Safety Officer hasn't been Chosen";
                            message = serverUrl + "Home?p=FI/edit/" + this.id;
                            sendEmail.SendToNotificationCenter(userIds, "Fire Impairment Permit", "Please choose safety officer and Dept. Head FO for Fire Impairment Permit No. " + this.fi_no, serverUrl + "Home?p=FI/edit/" + this.id);
                        }
                        retVal = 1;
                        break;
                    case 5 /* Facility Owner */:
                        #if !DEBUG
                        if (this.userInFI.Keys.ToList().Exists(p => p == UserInFI.FACILITYOWNER.ToString()))
                        {
                            listEmail.Add(this.userInFI[UserInFI.FACILITYOWNER.ToString()].email);
                            userIds.Add(this.userInFI[UserInFI.FACILITYOWNER.ToString()].id);
                            if ((userId = this.userInFI[UserInFI.FACILITYOWNER.ToString()].employee_delegate) != null)
                            {
                                userFi = new UserEntity(userId.Value, user.token, user);
                                listEmail.Add(userFi.email);
                                userIds.Add(userFi.id);
                            }
                            List<UserEntity> listDel = this.userInFI[UserInFI.FACILITYOWNER.ToString()].GetDelegateFO(user);
                            foreach (UserEntity u in listDel)
                            {
                                listEmail.Add(u.email);
                                userIds.Add(u.id);
                            }
                        }
                        #endif

                        if (stat == 1)
                        {
                            title = "Fire Impairment Clearance Permit (" + this.fi_no + ") Need Review and Approval";
                            message = serverUrl + "Home?p=FI/edit/" + this.id;
                            sendEmail.SendToNotificationCenter(userIds, "Fire Impairment Permit", "Please approve Fire Impairment Permit No. " + this.fi_no, serverUrl + "Home?p=FI/edit/" + this.id);
                        }
                        else if (stat == 2)
                        {
                            message = serverUrl + "Home?p=FI/edit/" + this.id + "<br />Comment: " + comment;
                            title = "Fire Impairment Clearance Permit (" + this.fi_no + ") Rejected from Dept. Head FO";
                            sendEmail.SendToNotificationCenter(userIds, "Fire Impairment Permit", "Fire Impairment Permit No. " + this.fi_no + "is rejected with comment: " + comment, serverUrl + "Home?p=FI/edit/" + this.id);
                        }
                        retVal = 1;
                        break;
                    case 6 /* Dept. Head Facility Owner */:
                        #if !DEBUG
                        if (this.userInFI.Keys.ToList().Exists(p => p == UserInFI.DEPTHEADFO.ToString()))
                        {
                            listEmail.Add(this.userInFI[UserInFI.DEPTHEADFO.ToString()].email);
                            userIds.Add(this.userInFI[UserInFI.DEPTHEADFO.ToString()].id);
                            if ((userId = this.userInFI[UserInFI.DEPTHEADFO.ToString()].employee_delegate) != null)
                            {
                                userFi = new UserEntity(userId.Value, user.token, user);
                                listEmail.Add(userFi.email);
                                userIds.Add(userFi.id);
                            }
                        }
                        #endif

                        if (stat == 1)
                        {
                            title = "Fire Impairment Clearance Permit (" + this.fi_no + ") Need Review and Approval";
                            message = serverUrl + "Home?p=FI/edit/" + this.id;
                            sendEmail.SendToNotificationCenter(userIds, "Fire Impairment Permit", "Please approve Fire Impairment Permit No. " + this.fi_no, serverUrl + "Home?p=FI/edit/" + this.id);
                        }
                        retVal = 1;
                        break;

                    case 7 /* Requestor */:
#if !DEBUG
                        if (is_guest)
                        {
                            if (this.userInFI.Keys.ToList().Exists(p => p == UserInFI.SUPERVISOR.ToString()))
                            {
                                listEmail.Add(this.userInFI[UserInFI.SUPERVISOR.ToString()].email);
                                userIds.Add(this.userInFI[UserInFI.SUPERVISOR.ToString()].id);
                                if ((userId = this.userInFI[UserInFI.SUPERVISOR.ToString()].employee_delegate) != null)
                                {
                                    userFi = new UserEntity(userId.Value, user.token, user);
                                    listEmail.Add(userFi.email);
                                    userIds.Add(userFi.id);
                                }
                            }
                        }
                        else
                        {
                            if (this.userInFI.Keys.ToList().Exists(p => p == UserInFI.REQUESTOR.ToString()))
                            {
                                listEmail.Add(this.userInFI[UserInFI.REQUESTOR.ToString()].email);
                                userIds.Add(this.userInFI[UserInFI.REQUESTOR.ToString()].id);
                                if ((userId = this.userInFI[UserInFI.REQUESTOR.ToString()].employee_delegate) != null)
                                {
                                    userFi = new UserEntity(userId.Value, user.token, user);
                                    listEmail.Add(userFi.email);
                                    userIds.Add(userFi.id);
                                }
                            }
                        }

#endif

                        if (stat == 1)
                        {
                            title = "Fire Impairment Clearance Permit (" + this.fi_no + ") Completed and Approved";
                            message = serverUrl + "Home?p=FI/edit/" + this.id;
                            sendEmail.SendToNotificationCenter(userIds, "Fire Impairment Permit", "Fire Impairment Permit No. " + this.fi_no + " has been approved by Dept. Head Facility Owner.", serverUrl + "Home?p=FI/edit/" + this.id);
                        }

                        retVal = 1;
                        break;
                }

                sendEmail.Send(listEmail, message, title);
            }

            return retVal;
        }

        ///// <summary>
        ///// 
        ///// </summary>
        ///// <param name="serverUrl"></param>
        ///// <param name="user"></param>
        ///// <returns></returns>
        //public int sendToSPV(string serverUrl, UserEntity user)
        //{
        //    int retVal = 0;
        //    fire_impairment fi = this.db.fire_impairment.Find(this.id);
        //    if (fi != null)
        //    {
        //        if (this.userInFI[UserInFI.SUPERVISOR.ToString()] != null)
        //        {
        //            fi.status = (int)FIStatus.EDITANDSEND;

        //            this.db.Entry(fi).State = EntityState.Modified;
        //            this.db.SaveChanges();

        //            // sending email
        //            List<string> email = new List<string>();
        //            //email.Add(this.userInRadiography[UserInRadiography.SUPERVISOR.ToString()].email);
        //            email.Add("septujamasoka@gmail.com");
        //            SendEmail sendEmail = new SendEmail();
        //            //s.Add(gasTester.email);
        //            //s.Add("septu.jamasoka@gmail.com");

        //            string message = serverUrl + "Home?p=FI/edit/" + this.id;

        //            sendEmail.Send(email, message, "Fire Impairment Clearance Permit Supervisor Pre-Job Screening");
        //        }
        //        else
        //        {
        //            retVal = -1;
        //        }
        //    }

        //    return retVal;
        //}

        public int SavePreScreening(int type /* 1 = Spv, 2 = SO, 3 = FO */)
        {
            int retVal = 0;
            fire_impairment fi = this.db.fire_impairment.Find(this.id);
            if (fi != null)
            {
                fi.screening_remark = this.screening_remark;
                switch (type)
                {
                    case 1:
                        fi.screening_spv = this.screening_spv;
                        break;
                    case 2:
                        fi.screening_so = this.screening_so;
                        break;
                    case 3:
                        fi.screening_fo = this.screening_fo;
                        break;
                }


                this.db.Entry(fi).State = EntityState.Modified;
                retVal = this.db.SaveChanges();
            }

            return retVal;
        }

        //public int completePreScreening(int type /* 1 = Spv, 2 = SO, 3 = FO */, UserEntity user, string serverUrl = "")
        //{
        //    int retVal = 0;
        //    List<string> email = new List<string>();
        //    string message = "";
        //    string subject = "";
        //    SendEmail sendEmail = new SendEmail();
        //    fire_impairment fi = this.db.fire_impairment.Find(this.id);
        //    if (fi != null)
        //    {
        //        switch (type)
        //        {
        //            case 1:
        //                fi.status = (int)FIStatus.SPVSCREENING;
        //                if (this.userInFI[UserInFI.SAFETYOFFICER.ToString()] != null)
        //                {
        //                    email.Add(this.userInFI[UserInFI.SAFETYOFFICER.ToString()].email);
        //                    if (this.userInFI[UserInFI.SAFETYOFFICER.ToString()].employee_delegate != null)
        //                    {
        //                        UserEntity @delegate = new UserEntity(this.userInFI[UserInFI.SAFETYOFFICER.ToString()].employee_delegate.Value, user.token, user);
        //                        email.Add(@delegate.email);
        //                    }
        //                    subject = "Fire Impairment Clearance Permit Safety Officer Pre-Job Screening";
        //                }
        //                else
        //                {
        //                    email.Add(this.userInFI[UserInFI.REQUESTOR.ToString()].email);
        //                    if (this.userInFI[UserInFI.REQUESTOR.ToString()].employee_delegate != null)
        //                    {
        //                        UserEntity @delegate = new UserEntity(this.userInFI[UserInFI.REQUESTOR.ToString()].employee_delegate.Value, user.token, user);
        //                        email.Add(@delegate.email);
        //                    }
        //                    subject = "Fire Impairment Clearance Permit Safety Officer hasn't been Chosen";
        //                    message = "Fire Impairement Clearance Permit can not be continued because Safety Officer hasn't been chosen yet. Please inform Facility Owner to choose Safety Officer Immediately.";
        //                    email.Clear(); // for testing purpose, remove if not testing anymore
        //                    sendEmail.Send(email, message, subject);
        //                    email.Add(this.userInFI[UserInFI.FACILITYOWNER.ToString()].email);
        //                    if (this.userInFI[UserInFI.FACILITYOWNER.ToString()].employee_delegate != null)
        //                    {
        //                        UserEntity @delegate = new UserEntity(this.userInFI[UserInFI.FACILITYOWNER.ToString()].employee_delegate.Value, user.token, user);
        //                        email.Add(@delegate.email);
        //                    }
        //                    subject = "[URGENT] Fire Impairment Clearance Permit Safety Officer hasn't been Chosen";
        //                    message = "Fire Impairement Clearance Permit can not be continued because Safety Officer hasn't been chosen yet. Please choose Safety Officer Immediately. Link: " + serverUrl + "Home?p=FI/edit/" + this.id;
        //                }
        //                break;
        //            case 2:
        //                fi.status = (int)FIStatus.SOSCREENING;
        //                email.Add(this.userInFI[UserInFI.FACILITYOWNER.ToString()].email);
        //                if (this.userInFI[UserInFI.FACILITYOWNER.ToString()].employee_delegate != null)
        //                {
        //                    UserEntity @delegate = new UserEntity(this.userInFI[UserInFI.FACILITYOWNER.ToString()].employee_delegate.Value, user.token, user);
        //                    email.Add(@delegate.email);
        //                }
        //                subject = "Fire Impairment Clearance Permit Facility Owner Pre-Job Screening";
        //                break;
        //            case 3:
        //                fi.status = (int)FIStatus.FOSCREENING;
        //                email.Add(this.userInFI[UserInFI.REQUESTOR.ToString()].email);
        //                if (this.userInFI[UserInFI.REQUESTOR.ToString()].employee_delegate != null)
        //                {
        //                    UserEntity @delegate = new UserEntity(this.userInFI[UserInFI.REQUESTOR.ToString()].employee_delegate.Value, user.token, user);
        //                    email.Add(@delegate.email);
        //                }
        //                subject = "Fire Impairment Clearance Permit Pre-Job Screening Completed";
        //                break;
        //        }


        //        this.db.Entry(fi).State = EntityState.Modified;
        //        retVal = this.db.SaveChanges();

        //        message = serverUrl + "Home?p=FI/edit/" + this.id;

        //        /* for testing purpose */
        //        email.Clear();
        //        email.Add("septujamasoka@gmail.com");
        //        sendEmail.Send(email, message, subject);
        //    }

        //    return retVal;
        //}



        public int sendEmailAssign(string serverUrl, UserEntity user)
        {
            // sending email
            List<string> email = new List<string>();
            List<int> userId = new List<int>();
            int foId = 0;
            Int32.TryParse(this.acc_fo, out foId);
            UserEntity spv = new UserEntity(foId, user.token, user);
            email.Add(spv.email);
            userId.Add(spv.id);

            List<UserEntity> listDel = spv.GetDelegateFO(user);
            foreach (UserEntity u in listDel)
            {
                email.Add(u.email);
                userId.Add(u.id);
            }
            // email.Add("septujamasoka@gmail.com");
            SendEmail sendEmail = new SendEmail();
            //s.Add(gasTester.email);
            //s.Add("septu.jamasoka@gmail.com");

            string message = serverUrl + "Home?p=FI/edit/" + this.id;

            sendEmail.Send(email, message, "Assign Safety Officer and Dept. Head FO for Fire Impairment Clearance Permit");
            sendEmail.SendToNotificationCenter(userId, "Fire Impairment Permit", "Please choose safety officer and Dept. Head FO for Fire Impairment Permit No. " + this.fi_no, serverUrl + "Home?p=FI/edit/" + this.id);

            return 1;
        }

        //public int rejectPreScreening(int who /* 1 = spv, 2 = rad, 3 = fo */, string serverUrl, string comment)
        //{
        //    int retVal = 0;
        //    fire_impairment fi = this.db.fire_impairment.Find(this.id);
        //    if (fi != null)
        //    {
        //        // sending email
        //        List<string> email = new List<string>();
        //        string title = "";
        //        switch (who)
        //        {
        //            case 1:
        //                title = "Fire Impairment Clearance Permit Rejected by Supervisor on Pre-Job Screening";
        //                break;
        //            case 2:
        //                title = "Fire Impairment Clearance Permit Rejected by Radiographer Level 2 on Pre-Job Screening";
        //                break;
        //            case 3:
        //                title = "Fire Impairment Clearance Permit Rejected by Facility Owner on Pre-Job Screening";
        //                break;
        //        }
        //        //email.add(this.userInRadiography[UserInRadiography.SUPERVISOR.ToString()].email);
        //        email.Add("septujamasoka@gmail.com");
        //        SendEmail sendEmail = new SendEmail();
        //        string message = serverUrl + "Home?p=FI/edit/" + this.id;
        //        sendEmail.Send(email, message, title);

        //        retVal = 1;
        //    }

        //    return retVal;
        //}

        public string getHiraNo()
        {
            this.hira_no = "";
            if (this.ptw.hira_docs != null)
            {
                string[] s = this.ptw.hira_docs.Split(new string[] { "#@#" }, StringSplitOptions.None);
                foreach (string ss in s)
                {
                    if (!String.IsNullOrEmpty(ss))
                    {
                        string name = ss.Split('/').Last();
                        string fileName = name.Substring(0, name.Length - 4);
                        fileName = HttpUtility.UrlDecode(fileName);
                        this.hira_no += ", " + fileName;
                    }
                }
            }

            if (this.hira_no.Length == 0)
            {
                return this.hira_no;
            }
            else
            {
                return this.hira_no.Substring(2);
            }
        }

        //public ResponseModel approvePermit(UserEntity user, int type /* 1 = requestor / workers leader; 2 = fire watch; 3 = SO; 4 = FO; 5 = Dept. Head FO */, string serverUrl)
        //{
        //    ResponseModel response = new ResponseModel();
        //    fire_impairment fi = this.db.fire_impairment.Find(this.id);
        //    int userId = 0;
        //    List<string> email = new List<string>();
        //    string message = "";
        //    string subject = "";
        //    UserEntity userFi = new UserEntity();
        //    SendEmail sendEmail = new SendEmail();
        //    if (fi != null)
        //    {
        //        fi.purpose = this.purpose;
        //        fi.area_affected = this.area_affected;
        //        switch (type)
        //        {
        //            case 1:
        //                Int32.TryParse(fi.requestor, out userId);
        //                userFi = new UserEntity(userId, user.token, user);
        //                if (user.id == userFi.id)
        //                {
        //                    fi.acc_work_leader_signature = "a" + user.signature;
        //                }
        //                else if (user.id == userFi.employee_delegate)
        //                {
        //                    fi.acc_work_leader_signature = "d" + user.signature;
        //                    fi.acc_work_leader_delegate = user.id.ToString();
        //                }
        //                else
        //                {
        //                    response.status = 401;
        //                }

        //                fi.status = (int)FIStatus.REQUESTORAPPROVE;

        //                //email.Add(this.userInFI[UserInFI.FIREWATCH.ToString()].email);
        //                //if (this.userInFI[UserInFI.FIREWATCH.ToString()].employee_delegate != null)
        //                //{
        //                //    UserEntity @delegate = new UserEntity(this.userInFI[UserInFI.FIREWATCH.ToString()].employee_delegate.Value, user.token, user);
        //                //    email.Add(@delegate.email);
        //                //}
        //                subject = "Fire Impairment Clearance Permit Need Approval from Fire Watch";
        //                response.message = "Fire Impairment Clearance Permit Approved. \nFire Watch (" + userFi.alpha_name + ") will be notified to approve this Fire Impairment Clearance Permit.";
        //                break;
        //            case 2:
        //                Int32.TryParse(fi.fire_watch, out userId);
        //                userFi = new UserEntity(userId, user.token, user);
        //                if (user.id == userFi.id)
        //                {
        //                    fi.acc_fire_watch_signature = "a" + user.signature;
        //                }
        //                else if (user.id == userFi.employee_delegate)
        //                {
        //                    fi.acc_fire_watch_signature = "d" + user.signature;
        //                    fi.acc_fire_wacth_delegate = user.id.ToString();
        //                }
        //                else
        //                {
        //                    response.status = 401;
        //                }

        //                fi.status = (int)FIStatus.FIREWATCHAPPROVE;

        //                //email.Add(this.userInFI[UserInFI.SAFETYOFFICER.ToString()].email);
        //                //if (this.userInFI[UserInFI.SAFETYOFFICER.ToString()].employee_delegate != null)
        //                //{
        //                //    UserEntity @delegate = new UserEntity(this.userInFI[UserInFI.SAFETYOFFICER.ToString()].employee_delegate.Value, user.token, user);
        //                //    email.Add(@delegate.email);
        //                //}
        //                subject = "Fire Impairment Clearance Permit Need Approval from Safety Officer";
        //                response.message = "Fire Impairment Clearance Permit Approved. \nSafety Officer (" + userFi.alpha_name + ") will be notified to approve this Fire Impairment Clearance Permit.";
        //                break;
        //            case 3:
        //                Int32.TryParse(fi.acc_so, out userId);
        //                userFi = new UserEntity(userId, user.token, user);
        //                if (user.id == userFi.id)
        //                {
        //                    fi.acc_so_signature = "a" + user.signature;
        //                }
        //                else if (user.id == userFi.employee_delegate)
        //                {
        //                    fi.acc_so_signature = "d" + user.signature;
        //                    fi.acc_so_delegate = user.id.ToString();
        //                }
        //                else
        //                {
        //                    response.status = 401;
        //                }

        //                fi.status = (int)FIStatus.SOAPPROVE;

        //                //email.Add(this.userInFI[UserInFI.FACILITYOWNER.ToString()].email);
        //                //if (this.userInFI[UserInFI.FACILITYOWNER.ToString()].employee_delegate != null)
        //                //{
        //                //    UserEntity @delegate = new UserEntity(this.userInFI[UserInFI.FACILITYOWNER.ToString()].employee_delegate.Value, user.token, user);
        //                //    email.Add(@delegate.email);
        //                //}
        //                subject = "Fire Impairment Clearance Permit Need Approval from Facility Owner";
        //                response.message = "Fire Impairment Clearance Permit Approved. \nFacility Owner (" + userFi.alpha_name + ") will be notified to approve this Fire Impairment Clearance Permit.";
        //                break;
        //            case 4:
        //                Int32.TryParse(fi.acc_fo, out userId);
        //                userFi = new UserEntity(userId, user.token, user);
        //                if (user.id == userFi.id)
        //                {
        //                    fi.acc_fo_signature = "a" + user.signature;
        //                }
        //                else if (user.id == userFi.employee_delegate)
        //                {
        //                    fi.acc_fo_signature = "d" + user.signature;
        //                    fi.acc_fo_delegate = user.id.ToString();
        //                }
        //                else
        //                {
        //                    response.status = 401;
        //                }

        //                fi.status = (int)FIStatus.FOAPPROVE;

        //                //email.Add(this.userInFI[UserInFI.DEPTHEADFO.ToString()].email);
        //                //if (this.userInFI[UserInFI.DEPTHEADFO.ToString()].employee_delegate != null)
        //                //{
        //                //    UserEntity @delegate = new UserEntity(this.userInFI[UserInFI.DEPTHEADFO.ToString()].employee_delegate.Value, user.token, user);
        //                //    email.Add(@delegate.email);
        //                //}
        //                subject = "Fire Impairment Clearance Permit Need Approval from Dept. Head Facility Owner";
        //                response.message = "Fire Impairment Clearance Permit Approved. \nDept. Head Facility Owner (" + userFi.alpha_name + ") will be notified to approve this Fire Impairment Clearance Permit.";
        //                break;
        //            case 5:
        //                Int32.TryParse(fi.acc_dept_head, out userId);
        //                userFi = new UserEntity(userId, user.token, user);
        //                if (user.id == userFi.id)
        //                {
        //                    fi.acc_dept_head_signature = "a" + user.signature;
        //                }
        //                else if (user.id == userFi.employee_delegate)
        //                {
        //                    fi.acc_dept_head_signature = "d" + user.signature;
        //                    fi.acc_dept_head_delegate = user.id.ToString();
        //                }
        //                else
        //                {
        //                    response.status = 401;
        //                }

        //                fi.status = (int)FIStatus.DEPTFOAPPROVE;

        //                //email.Add(this.userInFI[UserInFI.REQUESTOR.ToString()].email);
        //                //if (this.userInFI[UserInFI.REQUESTOR.ToString()].employee_delegate != null)
        //                //{
        //                //    UserEntity @delegate = new UserEntity(this.userInFI[UserInFI.REQUESTOR.ToString()].employee_delegate.Value, user.token, user);
        //                //    email.Add(@delegate.email);
        //                //}
        //                subject = "Fire Impairment Clearance Permit Approval Complete";
        //                response.message = "Fire Impairment Clearance Permit Approved.";

        //                this.ptw = new PtwEntity(fi.id_ptw.Value, user);

        //                this.ptw.setClerancePermitStatus((int)PtwEntity.statusClearance.COMPLETE, PtwEntity.clearancePermit.FIREIMPAIRMENT.ToString());
        //                break;
        //        }

        //        if (response.status != 401)
        //        {
        //            this.db.Entry(fi).State = EntityState.Modified;
        //            response.status = this.db.SaveChanges() == 1 ? 200 : 404;
        //        }


        //        message = serverUrl + "Home?p=FI/edit/" + this.id;

        //        /* for testing purpose */
        //        email.Clear();
        //        email.Add("septujamasoka@gmail.com");
        //        sendEmail.Send(email, message, subject);
        //    }

        //    response.id = this.id;

        //    return response;
        //}

        //public ResponseModel rejectPermit(UserEntity user, int type /* 1 = requestor / workers leader; 2 = fire watch; 3 = SO; 4 = FO; 5 = Dept. Head FO */, string serverUrl, string comment)
        //{
        //    ResponseModel response = new ResponseModel();
        //    fire_impairment fi = this.db.fire_impairment.Find(this.id);
        //    int userId = 0;
        //    List<string> email = new List<string>();
        //    string message = "";
        //    string subject = "";
        //    UserEntity userFi = new UserEntity();
        //    SendEmail sendEmail = new SendEmail();
        //    if (fi != null)
        //    {
        //        switch (type)
        //        {
        //            case 2:
        //                fi.acc_work_leader_signature = null;
        //                fi.acc_work_leader_delegate = null;
        //                //fi.status = (int)FIStatus.FOSCREENING;

        //                Int32.TryParse(fi.requestor, out userId);
        //                userFi = new UserEntity(userId, user.token, user);
        //                email.Add(userFi.email);
        //                subject = "Fire Impairment Clearance Permit Rejected from Fire Watch";
        //                response.message = "Fire Impairment Clearance Permit is rejected. \nRequestor (" + userFi.alpha_name + ") will be notified to revised this Fire Impairment Clearance Permit.";
        //                break;
        //            case 3:
        //                fi.acc_fire_watch_signature = null;
        //                fi.acc_fire_wacth_delegate = null;
        //                fi.status = (int)FIStatus.REQUESTORAPPROVE;

        //                Int32.TryParse(fi.fire_watch, out userId);
        //                userFi = new UserEntity(userId, user.token, user);
        //                email.Add(userFi.email);
        //                subject = "Fire Impairment Clearance Permit Rejected from Safety Officer";
        //                response.message = "Fire Impairment Clearance Permit is rejected. \nFire Watch (" + userFi.alpha_name + ") will be notified to revised this Fire Impairment Clearance Permit.";
        //                break;
        //            case 4:
        //                fi.acc_so_signature = null;
        //                fi.acc_so_delegate = null;
        //                fi.status = (int)FIStatus.FIREWATCHAPPROVE;

        //                Int32.TryParse(fi.acc_so, out userId);
        //                userFi = new UserEntity(userId, user.token, user);
        //                email.Add(userFi.email);
        //                subject = "Fire Impairment Clearance Permit Rejected from Facility Owner";
        //                response.message = "Fire Impairment Clearance Permit is rejected. \nSafety Officer (" + userFi.alpha_name + ") will be notified to revised this Fire Impairment Clearance Permit.";
        //                break;
        //            case 5:
        //                fi.acc_fo_signature = null;
        //                fi.acc_fo_delegate = null;
        //                fi.status = (int)FIStatus.SOAPPROVE;

        //                Int32.TryParse(fi.acc_fo, out userId);
        //                userFi = new UserEntity(userId, user.token, user);
        //                email.Add(userFi.email);
        //                subject = "Fire Impairment Clearance Permit Rejected from Dept. Head FO";
        //                response.message = "Fire Impairment Clearance Permit is rejected. \nFacility Owner (" + userFi.alpha_name + ") will be notified to revised this Fire Impairment Clearance Permit.";
        //                break;
        //        }

        //        if (response.status != 401)
        //        {
        //            this.db.Entry(fi).State = EntityState.Modified;
        //            response.status = this.db.SaveChanges() == 1 ? 200 : 404;
        //        }


        //        message = serverUrl + "Home?p=FI/edit/" + this.id + "<br />" + comment;

        //        /* for testing purpose */
        //        email.RemoveAt(0);
        //        email.Add("septujamasoka@gmail.com");
        //        sendEmail.Send(email, message, subject);
        //    }

        //    response.id = this.id;

        //    return response;
        //}

        /// <summary>
        /// save as draft Fire Impairment Clearance Permit Cancellation
        /// </summary>
        /// <param name="who">1 if requestor, 2 if supervisor, 3 if fire watch, 4 if safety officer, 5 if facility owner, 6 if dept. head FO</param>
        /// <returns>1 if success, 0 if fail</returns>
        public int saveAsDraftCancel(int who)
        {
            int retVal = 0;
            switch (who)
            {
                case 3 /* Supervisor */:
                    retVal = SaveCancelScreening(1);
                    break;
                case 4 /* Safety Officer */:
                    retVal = SaveCancelScreening(2);
                    break;
                case 5 /* Facility Owner */:
                    retVal = SaveCancelScreening(3);
                    break;
                default:
                    retVal = 1;
                    break;
            }

            return retVal;
        }

        /// <summary>
        /// function for signing clearance permit
        /// </summary>
        /// <param name="who">1 if requestor, 2 if supervisor, 3 if fire watch, 4 if safety officer, 5 if facility owner, 6 if dept. head FO</param>
        /// <returns>1 if success, 0 if fail, -1 if user doesn't exist</returns>
        public int signClearanceCancel(int who, UserEntity user)
        {
            int retVal = 0, userId = 0;
            fire_impairment fi = this.db.fire_impairment.Find(this.id);
            UserEntity userFi = null;
            if (fi != null)
            {
                switch (who)
                {
                    case 1 /* Requestor */:
                        if (is_guest)
                        {
                            Int32.TryParse(fi.spv, out userId);
                            userFi = new UserEntity(userId, user.token, user);
                            if (user.id == userFi.id || user.id == userFi.employee_delegate)
                            {
                                fi.cancel_work_leader_signature = fi.permit_to_work.acc_ptw_requestor_approve;
                            }
                        }
                        else
                        {
                            Int32.TryParse(fi.requestor, out userId);
                            userFi = new UserEntity(userId, user.token, user);
                            if (user.id == userFi.id)
                            {
                                fi.cancel_work_leader_signature = "a" + user.signature;
                            }
                            else if (user.id == userFi.employee_delegate)
                            {
                                fi.cancel_work_leader_signature = "d" + user.signature;
                                fi.cancel_work_leader_delegate = user.id.ToString();
                            }
                        }

                        fi.status = (int)FIStatus.CANREQUESTORAPPROVE;
                        // create node
                        workflowNodeService.CreateNode(this.id, WorkflowNodeServiceModel.DocumentType.FIREIMPAIRMENT.ToString(),
                            WorkflowNodeServiceModel.FireImpairmentNodeName.CANCELLATION_REQUESTOR.ToString(), (byte)WorkflowNodeServiceModel.NodeStatus.APPROVED);

                        break;
                    case 2 /* Fire Watch */:
                        Int32.TryParse(fi.fire_watch, out userId);
                        userFi = new UserEntity(userId, user.token, user);
                        if (user.id == userFi.id)
                        {
                            fi.cancel_fire_watch_signature = "a" + user.signature;
                        }
                        else if (user.id == userFi.employee_delegate)
                        {
                            fi.cancel_fire_watch_signature = "d" + user.signature;
                            fi.cancel_fire_watch_delegate = user.id.ToString();
                        }

                        fi.status = (int)FIStatus.CANFIREWATCHAPPROVE;
                        // create node
                        workflowNodeService.CreateNode(this.id, WorkflowNodeServiceModel.DocumentType.FIREIMPAIRMENT.ToString(),
                            WorkflowNodeServiceModel.FireImpairmentNodeName.CANCELLATION_FIREWATCH.ToString(), (byte)WorkflowNodeServiceModel.NodeStatus.APPROVED);
                        break;
                    case 3 /* Supervisor */:
                        fi.status = (int)FIStatus.CANSPVSCREENING;
                        // create node
                        workflowNodeService.CreateNode(this.id, WorkflowNodeServiceModel.DocumentType.FIREIMPAIRMENT.ToString(),
                            WorkflowNodeServiceModel.FireImpairmentNodeName.CANCELLATION_SUPERVISOR.ToString(), (byte)WorkflowNodeServiceModel.NodeStatus.APPROVED);

                        this.ptw = new PtwEntity(fi.id_ptw.Value, user);
                        this.ptw.setClerancePermitStatus((int)PtwEntity.statusClearance.REQUESTORCANCELLED, PtwEntity.clearancePermit.FIREIMPAIRMENT.ToString());
                        break;
                    case 4 /* Safety Officer */:
                        Int32.TryParse(fi.acc_so, out userId);
                        userFi = new UserEntity(userId, user.token, user);
                        if (user.id == userFi.id)
                        {
                            fi.cancel_so_signature = "a" + user.signature;
                        }
                        else if (user.id == userFi.employee_delegate)
                        {
                            fi.cancel_so_signature = "d" + user.signature;
                            fi.cancel_so_delegate = user.id.ToString();
                        }

                        fi.status = (int)FIStatus.CANSOAPPROVE;
                        // create node
                        workflowNodeService.CreateNode(this.id, WorkflowNodeServiceModel.DocumentType.FIREIMPAIRMENT.ToString(),
                            WorkflowNodeServiceModel.FireImpairmentNodeName.CANCELLATION_SAFETY_OFFICER.ToString(), (byte)WorkflowNodeServiceModel.NodeStatus.APPROVED);
                        break;
                    case 5 /* Facility Owner */:
                        Int32.TryParse(fi.acc_fo, out userId);
                        userFi = new UserEntity(userId, user.token, user);
                        if (user.id == userFi.id)
                        {
                            fi.cancel_fo_signature = "a" + user.signature;
                        }
                        else
                        {
                            fi.cancel_fo_signature = "d" + user.signature;
                            fi.cancel_fo_delegate = user.id.ToString();
                        }

                        fi.status = (int)FIStatus.CANFOAPPROVE;
                        // create node
                        workflowNodeService.CreateNode(this.id, WorkflowNodeServiceModel.DocumentType.FIREIMPAIRMENT.ToString(),
                            WorkflowNodeServiceModel.FireImpairmentNodeName.CANCELLATION_FACILITY_OWNER.ToString(), (byte)WorkflowNodeServiceModel.NodeStatus.APPROVED);
                        break;
                    case 6 /* Dept. Head Facility Owner */:
                        Int32.TryParse(fi.acc_dept_head, out userId);
                        userFi = new UserEntity(userId, user.token, user);
                        if (user.id == userFi.id)
                        {
                            fi.cancel_dept_head_signature = "a" + user.signature;
                        }
                        else if (user.id == userFi.employee_delegate)
                        {
                            fi.cancel_dept_head_signature = "d" + user.signature;
                            fi.cancel_dept_head_delegate = user.id.ToString();
                        }

                        fi.status = (int)FIStatus.CANDEPTFOAPPROVE;
                        // create node
                        workflowNodeService.CreateNode(this.id, WorkflowNodeServiceModel.DocumentType.FIREIMPAIRMENT.ToString(),
                            WorkflowNodeServiceModel.FireImpairmentNodeName.CANCELLATION_DEPT_HEAD_FO.ToString(), (byte)WorkflowNodeServiceModel.NodeStatus.APPROVED);

                        this.ptw = new PtwEntity(fi.id_ptw.Value, user);
                        this.ptw.setClerancePermitStatus((int)PtwEntity.statusClearance.CLOSE, PtwEntity.clearancePermit.FIREIMPAIRMENT.ToString());
                        break;
                }

                this.db.Entry(fi).State = EntityState.Modified;
                retVal = this.db.SaveChanges();
            }

            return retVal;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="who"></param>
        /// <returns></returns>
        public int rejectClearanceCancel(int who)
        {
            int retVal = 0;
            fire_impairment fi = this.db.fire_impairment.Find(this.id);
            if (fi != null)
            {
                switch (who)
                {
                    case 1 /* Requestor */:

                        fi.status = (int)FIStatus.CLOSING;

                        break;
                    case 2 /* Fire Watch */:
                        fi.cancel_work_leader_signature = null;
                        fi.cancel_work_leader_delegate = null;
                        fi.status = (int)FIStatus.CLOSING;
                        // create node
                        workflowNodeService.CreateNode(this.id, WorkflowNodeServiceModel.DocumentType.FIREIMPAIRMENT.ToString(),
                            WorkflowNodeServiceModel.FireImpairmentNodeName.CANCELLATION_FIREWATCH.ToString(), (byte)WorkflowNodeServiceModel.NodeStatus.REJECTED);
                        break;
                    case 3 /* Supervisor */:
                        fi.cancel_fire_watch_signature = null;
                        fi.cancel_fire_watch_delegate = null;
                        fi.status = (int)FIStatus.CANREQUESTORAPPROVE;
                        // create node
                        workflowNodeService.CreateNode(this.id, WorkflowNodeServiceModel.DocumentType.FIREIMPAIRMENT.ToString(),
                            WorkflowNodeServiceModel.FireImpairmentNodeName.CANCELLATION_SUPERVISOR.ToString(), (byte)WorkflowNodeServiceModel.NodeStatus.REJECTED);
                        break;
                    case 4 /* Safety Officer */:
                        fi.status = (int)FIStatus.CANFIREWATCHAPPROVE;
                        // create node
                        workflowNodeService.CreateNode(this.id, WorkflowNodeServiceModel.DocumentType.FIREIMPAIRMENT.ToString(),
                            WorkflowNodeServiceModel.FireImpairmentNodeName.CANCELLATION_SAFETY_OFFICER.ToString(), (byte)WorkflowNodeServiceModel.NodeStatus.REJECTED);
                        break;
                    case 5 /* Facility Owner */:
                        fi.cancel_so_signature = null;
                        fi.cancel_so_delegate = null;
                        fi.status = (int)FIStatus.CANSPVSCREENING;
                        // create node
                        workflowNodeService.CreateNode(this.id, WorkflowNodeServiceModel.DocumentType.FIREIMPAIRMENT.ToString(),
                            WorkflowNodeServiceModel.FireImpairmentNodeName.CANCELLATION_FACILITY_OWNER.ToString(), (byte)WorkflowNodeServiceModel.NodeStatus.REJECTED);
                        break;
                    case 6 /* Dept. Head Facility Owner */:
                        fi.cancel_fo_signature = null;
                        fi.cancel_fo_delegate = null;
                        fi.status = (int)FIStatus.CANSOAPPROVE;
                        // create node
                        workflowNodeService.CreateNode(this.id, WorkflowNodeServiceModel.DocumentType.FIREIMPAIRMENT.ToString(),
                            WorkflowNodeServiceModel.FireImpairmentNodeName.CANCELLATION_DEPT_HEAD_FO.ToString(), (byte)WorkflowNodeServiceModel.NodeStatus.REJECTED);
                        break;
                }

                this.db.Entry(fi).State = EntityState.Modified;
                retVal = this.db.SaveChanges();
            }

            return retVal;
        }

        /// <summary>
        /// sending email to user, need the object instatiate first to get user
        /// </summary>
        /// <param name="who"></param>
        /// <param name="serverUrl"></param>
        /// <param name="user"></param>
        /// <returns></returns>
        public int sendToUserCancel(int who, int stat, string serverUrl, UserEntity user, string comment = "")
        {
            int retVal = 0;
            int? userId = null;
            fire_impairment fi = this.db.fire_impairment.Find(this.id);
            UserEntity userFi = null;
            List<string> listEmail = new List<string>();
            SendEmail sendEmail = new SendEmail();
            string message = "";
            string title = "";
            List<int> userIds = new List<int>();
            if (fi != null)
            {
#if DEBUG
                listEmail.Add("septujamasoka@gmail.com");
#endif
                switch (who)
                {
                    case 1 /* Requestor */:
#if !DEBUG
                        if (is_guest)
                        {
                            if (this.userInFI.Keys.ToList().Exists(p => p == UserInFI.SUPERVISOR.ToString()))
                            {
                                listEmail.Add(this.userInFI[UserInFI.SUPERVISOR.ToString()].email);
                                userIds.Add(this.userInFI[UserInFI.SUPERVISOR.ToString()].id);
                                if ((userId = this.userInFI[UserInFI.SUPERVISOR.ToString()].employee_delegate) != null)
                                {
                                    userFi = new UserEntity(userId.Value, user.token, user);
                                    listEmail.Add(userFi.email);
                                    userIds.Add(userFi.id);
                                }
                            }
                        }
                        else
                        {
                            if (this.userInFI.Keys.ToList().Exists(p => p == UserInFI.REQUESTOR.ToString()))
                            {
                                listEmail.Add(this.userInFI[UserInFI.REQUESTOR.ToString()].email);
                                userIds.Add(this.userInFI[UserInFI.REQUESTOR.ToString()].id);
                                if ((userId = this.userInFI[UserInFI.REQUESTOR.ToString()].employee_delegate) != null)
                                {
                                    userFi = new UserEntity(userId.Value, user.token, user);
                                    listEmail.Add(userFi.email);
                                    userIds.Add(userFi.id);
                                }
                            }
                        }


#endif

                        if (stat == 1)
                        {
                            title = "Fire Impairment Clearance Permit (" + this.fi_no + ") Cancellation Need Review and Approval";
                            message = serverUrl + "Home?p=FI/edit/" + this.id;
                            sendEmail.SendToNotificationCenter(userIds, "Fire Impairment Permit", "Please approve cancellation of Fire Impairment Permit No. " + this.fi_no, serverUrl + "Home?p=FI/edit/" + this.id);
                        }
                        else if (stat == 2)
                        {
                            message = serverUrl + "Home?p=FI/edit/" + this.id + "<br />Comment: " + comment;
                            title = "Fire Impairment Clearance Permit (" + this.fi_no + ") Cancellation Rejected from Fire Watch";
                            sendEmail.SendToNotificationCenter(userIds, "Fire Impairment Permit", "Cancellation of Fire Impairment Permit No. " + this.fi_no + " is rejected with comment: " + comment, serverUrl + "Home?p=FI/edit/" + this.id);
                        }

                        retVal = 1;
                        break;
                    case 2 /* Fire Watch */:
#if !DEBUG

                        if (this.userInFI.Keys.ToList().Exists(p => p == UserInFI.FIREWATCH.ToString()))
                        {
                            listEmail.Add(this.userInFI[UserInFI.FIREWATCH.ToString()].email);
                            userIds.Add(this.userInFI[UserInFI.FIREWATCH.ToString()].id);
                            if ((userId = this.userInFI[UserInFI.FIREWATCH.ToString()].employee_delegate) != null)
                            {
                                userFi = new UserEntity(userId.Value, user.token, user);
                                listEmail.Add(userFi.email);
                                userIds.Add(userFi.id);
                            }
                        }

#endif

                        if (stat == 1)
                        {
                            title = "Fire Impairment Clearance Permit (" + this.fi_no + ") Cancellation Need Review and Approval";
                            message = serverUrl + "Home?p=FI/edit/" + this.id;
                            sendEmail.SendToNotificationCenter(userIds, "Fire Impairment Permit", "Please approve cancellation of Fire Impairment Permit No. " + this.fi_no, serverUrl + "Home?p=FI/edit/" + this.id);
                        }
                        else if (stat == 2)
                        {
                            message = serverUrl + "Home?p=FI/edit/" + this.id + "<br />Comment: " + comment;
                            title = "Fire Impairment Clearance Permit (" + this.fi_no + ") Cancellation Rejected from Supervisor";
                            sendEmail.SendToNotificationCenter(userIds, "Fire Impairment Permit", "Cancellation of Fire Impairment Permit No. " + this.fi_no + " is rejected with comment: " + comment, serverUrl + "Home?p=FI/edit/" + this.id);
                        }
                        retVal = 1;
                        break;
                    case 3 /* Supervisor */:
#if !DEBUG

                        if (this.userInFI.Keys.ToList().Exists(p => p == UserInFI.SUPERVISOR.ToString()))
                        {
                            listEmail.Add(this.userInFI[UserInFI.SUPERVISOR.ToString()].email);
                            userIds.Add(this.userInFI[UserInFI.SUPERVISOR.ToString()].id);
                            if ((userId = this.userInFI[UserInFI.SUPERVISOR.ToString()].employee_delegate) != null)
                            {
                                userFi = new UserEntity(userId.Value, user.token, user);
                                listEmail.Add(userFi.email);
                                userIds.Add(userFi.id);
                            }
                        }
                        else
                        {

                        }

#endif

                        if (stat == 1)
                        {
                            title = "Fire Impairment Clearance Permit (" + this.fi_no + ") Cancellation Need Review and Approval";
                            message = serverUrl + "Home?p=FI/edit/" + this.id;
                            sendEmail.SendToNotificationCenter(userIds, "Fire Impairment Permit", "Please approve cancellation of Fire Impairment Permit No. " + this.fi_no, serverUrl + "Home?p=FI/edit/" + this.id);
                        }
                        else if (stat == 2)
                        {
                            message = serverUrl + "Home?p=FI/edit/" + this.id + "<br />Comment: " + comment;
                            title = "Fire Impairment Clearance Permit (" + this.fi_no + ") Cancellation Rejected from Safety Officer";
                            sendEmail.SendToNotificationCenter(userIds, "Fire Impairment Permit", "Cancellation of Fire Impairment Permit No. " + this.fi_no + " is rejected with comment: " + comment, serverUrl + "Home?p=FI/edit/" + this.id);
                        }
                        retVal = 1;
                        break;
                    case 4 /* Safety Officer */:
                        if (this.userInFI.Keys.ToList().Exists(p => p == UserInFI.SAFETYOFFICER.ToString()))
                        {
#if !DEBUG
                            listEmail.Add(this.userInFI[UserInFI.SAFETYOFFICER.ToString()].email);
                            userIds.Add(this.userInFI[UserInFI.SAFETYOFFICER.ToString()].id);
                            if ((userId = this.userInFI[UserInFI.SAFETYOFFICER.ToString()].employee_delegate) != null)
                            {
                                userFi = new UserEntity(userId.Value, user.token, user);
                                listEmail.Add(userFi.email);
                                userIds.Add(userFi.id);
                            }
#endif
                        }

                        if (stat == 1)
                        {
                            title = "Fire Impairment Clearance Permit (" + this.fi_no + ") Cancellation Need Review and Approval";
                            message = serverUrl + "Home?p=FI/edit/" + this.id;
                            sendEmail.SendToNotificationCenter(userIds, "Fire Impairment Permit", "Please approve cancellation of Fire Impairment Permit No. " + this.fi_no, serverUrl + "Home?p=FI/edit/" + this.id);
                        }
                        else if (stat == 2)
                        {
                            message = serverUrl + "Home?p=FI/edit/" + this.id + "<br />Comment: " + comment;
                            title = "Fire Impairment Clearance Permit (" + this.fi_no + ") Cancellation Rejected from Facility Owner";
                            sendEmail.SendToNotificationCenter(userIds, "Fire Impairment Permit", "Cancellation of Fire Impairment Permit No. " + this.fi_no + " is rejected with comment: " + comment, serverUrl + "Home?p=FI/edit/" + this.id);
                        }
                        retVal = 1;
                        break;
                    case 5 /* Facility Owner */:
#if !DEBUG
                        if (this.userInFI.Keys.ToList().Exists(p => p == UserInFI.FACILITYOWNER.ToString()))
                        {
                            listEmail.Add(this.userInFI[UserInFI.FACILITYOWNER.ToString()].email);
                            userIds.Add(this.userInFI[UserInFI.FACILITYOWNER.ToString()].id);
                            if ((userId = this.userInFI[UserInFI.FACILITYOWNER.ToString()].employee_delegate) != null)
                            {
                                userFi = new UserEntity(userId.Value, user.token, user);
                                listEmail.Add(userFi.email);
                                userIds.Add(userFi.id);
                            }
                            List<UserEntity> listDel = this.userInFI[UserInFI.FACILITYOWNER.ToString()].GetDelegateFO(user);
                            foreach (UserEntity u in listDel)
                            {
                                listEmail.Add(u.email);
                                userIds.Add(u.id);
                            }
                        }
#endif

                        if (stat == 1)
                        {
                            title = "Fire Impairment Clearance Permit (" + this.fi_no + ") Cancellation Need Review and Approval";
                            message = serverUrl + "Home?p=FI/edit/" + this.id;
                            sendEmail.SendToNotificationCenter(userIds, "Fire Impairment Permit", "Please approve cancellation of Fire Impairment Permit No. " + this.fi_no, serverUrl + "Home?p=FI/edit/" + this.id);
                        }
                        else if (stat == 2)
                        {
                            message = serverUrl + "Home?p=FI/edit/" + this.id + "<br />Comment: " + comment;
                            title = "Fire Impairment Clearance Permit (" + this.fi_no + ") Cancellation Rejected from Dept. Head FO";
                            sendEmail.SendToNotificationCenter(userIds, "Fire Impairment Permit", "Cancellation of Fire Impairment Permit No. " + this.fi_no + " is rejected with comment: " + comment, serverUrl + "Home?p=FI/edit/" + this.id);
                        }
                        retVal = 1;
                        break;
                    case 6 /* Dept. Head Facility Owner */:
#if !DEBUG
                        if (this.userInFI.Keys.ToList().Exists(p => p == UserInFI.DEPTHEADFO.ToString()))
                        {
                            listEmail.Add(this.userInFI[UserInFI.DEPTHEADFO.ToString()].email);
                            userIds.Add(this.userInFI[UserInFI.DEPTHEADFO.ToString()].id);
                            if ((userId = this.userInFI[UserInFI.DEPTHEADFO.ToString()].employee_delegate) != null)
                            {
                                userFi = new UserEntity(userId.Value, user.token, user);
                                listEmail.Add(userFi.email);
                                userIds.Add(userFi.id);
                            }
                        }
#endif

                        if (stat == 1)
                        {
                            title = "Fire Impairment Clearance Permit (" + this.fi_no + ") Cancellation Need Review and Approval";
                            message = serverUrl + "Home?p=FI/edit/" + this.id;
                            sendEmail.SendToNotificationCenter(userIds, "Fire Impairment Permit", "Please approve cancellation of Fire Impairment Permit No. " + this.fi_no, serverUrl + "Home?p=FI/edit/" + this.id);
                        }
                        retVal = 1;
                        break;
                    case 7 /* Requestor */:
#if !DEBUG
                        if (is_guest)
                        {
                            if (this.userInFI.Keys.ToList().Exists(p => p == UserInFI.SUPERVISOR.ToString()))
                            {
                                listEmail.Add(this.userInFI[UserInFI.SUPERVISOR.ToString()].email);
                                userIds.Add(this.userInFI[UserInFI.SUPERVISOR.ToString()].id);
                                if ((userId = this.userInFI[UserInFI.SUPERVISOR.ToString()].employee_delegate) != null)
                                {
                                    userFi = new UserEntity(userId.Value, user.token, user);
                                    listEmail.Add(userFi.email);
                                    userIds.Add(userFi.id);
                                }
                            }
                        }
                        else
                        {
                            if (this.userInFI.Keys.ToList().Exists(p => p == UserInFI.REQUESTOR.ToString()))
                            {
                                listEmail.Add(this.userInFI[UserInFI.REQUESTOR.ToString()].email);
                                userIds.Add(this.userInFI[UserInFI.REQUESTOR.ToString()].id);
                                if ((userId = this.userInFI[UserInFI.REQUESTOR.ToString()].employee_delegate) != null)
                                {
                                    userFi = new UserEntity(userId.Value, user.token, user);
                                    listEmail.Add(userFi.email);
                                    userIds.Add(userFi.id);
                                }
                            }
                        }

#endif

                        if (stat == 1)
                        {
                            title = "Fire Impairment Clearance Permit (" + this.fi_no + ") Cancellation Approved";
                            message = serverUrl + "Home?p=FI/edit/" + this.id;
                            sendEmail.SendToNotificationCenter(userIds, "Fire Impairment Permit", "Cancellation of Fire Impairment Permit No. " + this.fi_no + " has been completed.", serverUrl + "Home?p=FI/edit/" + this.id);
                        }

                        retVal = 1;
                        break;
                }

                sendEmail.Send(listEmail, message, title);
            }

            return retVal;
        }

        public string cancelFIPermit(UserEntity user, string serverUrl)
        {
            fire_impairment fi = this.db.fire_impairment.Find(this.id);
            this.status = (int)FIStatus.CLOSING;

            fi.status = this.status;
            this.db.Entry(fi).State = EntityState.Modified;
            this.db.SaveChanges();

            // sending email
            List<string> email = new List<string>();
            int spvId = 0;
            Int32.TryParse(this.spv, out spvId);
            UserEntity spv = new UserEntity(spvId, user.token, user);
            email.Add(spv.email);
            // email.Add("septujamasoka@gmail.com");
            SendEmail sendEmail = new SendEmail();
            //s.Add(gasTester.email);
            //s.Add("septu.jamasoka@gmail.com");

            string message = serverUrl + "Home?p=FI/edit/" + this.id;

            sendEmail.Send(email, message, "Fire Impairment Clearance Permit Supervisor Cancellation Screening");

            return "200";
        }

        public int SaveCancelScreening(int type /* 1 = Spv, 2 = SO, 3 = FO */)
        {
            int retVal = 0;
            fire_impairment fi = this.db.fire_impairment.Find(this.id);
            if (fi != null)
            {
                fi.cancel_remark = this.cancel_remark;
                switch (type)
                {
                    case 1:
                        fi.cancel_spv = this.cancel_spv;
                        break;
                    case 2:
                        fi.cancel_so = this.cancel_so;
                        break;
                    case 3:
                        fi.cancel_fo = this.cancel_fo;
                        break;
                }


                this.db.Entry(fi).State = EntityState.Modified;
                retVal = this.db.SaveChanges();
            }

            return retVal;
        }

        //public ResponseModel approvePermitCancel(UserEntity user, int type /* 1 = requestor / workers leader; 2 = fire watch; 3 = SO; 4 = FO; 5 = Dept. Head FO */, string serverUrl)
        //{
        //    ResponseModel response = new ResponseModel();
        //    fire_impairment fi = this.db.fire_impairment.Find(this.id);
        //    int userId = 0;
        //    List<string> email = new List<string>();
        //    string message = "";
        //    string subject = "";
        //    UserEntity userFi = new UserEntity();
        //    SendEmail sendEmail = new SendEmail();
        //    if (fi != null)
        //    {
        //        switch (type)
        //        {
        //            case 1:
        //                Int32.TryParse(fi.requestor, out userId);
        //                userFi = new UserEntity(userId, user.token, user);
        //                if (user.id == userFi.id)
        //                {
        //                    fi.cancel_work_leader_signature = "a" + user.signature;
        //                }
        //                else if (user.id == userFi.employee_delegate)
        //                {
        //                    fi.cancel_work_leader_signature = "d" + user.signature;
        //                    fi.cancel_work_leader_delegate = user.id.ToString();
        //                }
        //                else
        //                {
        //                    response.status = 401;
        //                }

        //                fi.status = (int)FIStatus.CANREQUESTORAPPROVE;

        //                Int32.TryParse(fi.fire_watch, out userId);
        //                userFi = new UserEntity(userId, user.token, user);
        //                email.Add(userFi.email);
        //                subject = "Fire Impairment Clearance Permit Need Cancellation from Fire Watch";
        //                response.message = "Fire Impairment Clearance Permit Approved. \nFire Watch (" + userFi.alpha_name + ") will be notified to cancel this Fire Impairment Clearance Permit.";
        //                break;
        //            case 2:
        //                Int32.TryParse(fi.fire_watch, out userId);
        //                userFi = new UserEntity(userId, user.token, user);
        //                if (user.id == userFi.id)
        //                {
        //                    fi.cancel_fire_watch_signature = "a" + user.signature;
        //                }
        //                else if (user.id == userFi.employee_delegate)
        //                {
        //                    fi.cancel_fire_watch_signature = "d" + user.signature;
        //                    fi.cancel_fire_watch_delegate = user.id.ToString();
        //                }
        //                else
        //                {
        //                    response.status = 401;
        //                }

        //                fi.status = (int)FIStatus.CANFIREWATCHAPPROVE;

        //                Int32.TryParse(fi.acc_so, out userId);
        //                userFi = new UserEntity(userId, user.token, user);
        //                email.Add(userFi.email);
        //                subject = "Fire Impairment Clearance Permit Need Cancellation from Safety Officer";
        //                response.message = "Fire Impairment Clearance Permit Approved. \nSafety Officer (" + userFi.alpha_name + ") will be notified to cancel this Fire Impairment Clearance Permit.";
        //                break;
        //            case 3:
        //                Int32.TryParse(fi.acc_so, out userId);
        //                userFi = new UserEntity(userId, user.token, user);
        //                if (user.id == userFi.id)
        //                {
        //                    fi.cancel_so_signature = "a" + user.signature;
        //                }
        //                else if (user.id == userFi.employee_delegate)
        //                {
        //                    fi.cancel_so_signature = "d" + user.signature;
        //                    fi.cancel_so_delegate = user.id.ToString();
        //                }
        //                else
        //                {
        //                    response.status = 401;
        //                }

        //                fi.status = (int)FIStatus.CANSOAPPROVE;

        //                Int32.TryParse(fi.acc_fo, out userId);
        //                userFi = new UserEntity(userId, user.token, user);
        //                email.Add(userFi.email);
        //                subject = "Fire Impairment Clearance Permit Need Cancellation from Facility Owner";
        //                response.message = "Fire Impairment Clearance Permit Approved. \nFacility Owner (" + userFi.alpha_name + ") will be notified to cancel this Fire Impairment Clearance Permit.";
        //                break;
        //            case 4:
        //                Int32.TryParse(fi.acc_fo, out userId);
        //                userFi = new UserEntity(userId, user.token, user);
        //                if (user.id == userFi.id)
        //                {
        //                    fi.cancel_fo_signature = "a" + user.signature;
        //                }
        //                else if (user.id == userFi.employee_delegate)
        //                {
        //                    fi.cancel_fo_signature = "d" + user.signature;
        //                    fi.cancel_fo_delegate = user.id.ToString();
        //                }
        //                else
        //                {
        //                    response.status = 401;
        //                }

        //                fi.status = (int)FIStatus.CANFOAPPROVE;

        //                Int32.TryParse(fi.acc_dept_head, out userId);
        //                userFi = new UserEntity(userId, user.token, user);
        //                email.Add(userFi.email);
        //                subject = "Fire Impairment Clearance Permit Need Cancellation from Dept. Head Facility Owner";
        //                response.message = "Fire Impairment Clearance Permit Approved. \nDept. Head Facility Owner (" + userFi.alpha_name + ") will be notified to cancel this Fire Impairment Clearance Permit.";
        //                break;
        //            case 5:
        //                Int32.TryParse(fi.acc_dept_head, out userId);
        //                userFi = new UserEntity(userId, user.token, user);
        //                if (user.id == userFi.id)
        //                {
        //                    fi.cancel_dept_head_signature = "a" + user.signature;
        //                }
        //                else if (user.id == userFi.employee_delegate)
        //                {
        //                    fi.cancel_dept_head_signature = "d" + user.signature;
        //                    fi.cancel_dept_head_delegate = user.id.ToString();
        //                }
        //                else
        //                {
        //                    response.status = 401;
        //                }

        //                fi.status = (int)FIStatus.CANDEPTFOAPPROVE;

        //                Int32.TryParse(fi.requestor, out userId);
        //                userFi = new UserEntity(userId, user.token, user);
        //                email.Add(userFi.email);
        //                subject = "Fire Impairment Clearance Permit Cancellation Completed";
        //                response.message = "Fire Impairment Clearance Permit Approved.";
        //                this.ptw = new PtwEntity(fi.id_ptw.Value, user);

        //                this.ptw.setClerancePermitStatus((int)PtwEntity.statusClearance.CLOSE, PtwEntity.clearancePermit.FIREIMPAIRMENT.ToString());
        //                break;
        //        }

        //        if (response.status != 401)
        //        {
        //            this.db.Entry(fi).State = EntityState.Modified;
        //            response.status = this.db.SaveChanges() == 1 ? 200 : 404;
        //        }


        //        message = serverUrl + "Home?p=FI/edit/" + this.id;

        //        /* for testing purpose */
        //        email.RemoveAt(0);
        //        email.Add("septujamasoka@gmail.com");
        //        sendEmail.Send(email, message, subject);
        //    }

        //    response.id = this.id;

        //    return response;
        //}

        //public ResponseModel rejectPermitCancel(UserEntity user, int type /* 1 = requestor / workers leader; 2 = fire watch; 3 = SO; 4 = FO; 5 = Dept. Head FO */, string serverUrl, string comment)
        //{
        //    ResponseModel response = new ResponseModel();
        //    fire_impairment fi = this.db.fire_impairment.Find(this.id);
        //    int userId = 0;
        //    List<string> email = new List<string>();
        //    string message = "";
        //    string subject = "";
        //    UserEntity userFi = new UserEntity();
        //    SendEmail sendEmail = new SendEmail();
        //    if (fi != null)
        //    {
        //        switch (type)
        //        {
        //            case 2:
        //                fi.cancel_work_leader_signature = null;
        //                fi.cancel_work_leader_delegate = null;
        //                //fi.status = (int)FIStatus.FOSCREENING;

        //                Int32.TryParse(fi.requestor, out userId);
        //                userFi = new UserEntity(userId, user.token, user);
        //                email.Add(userFi.email);
        //                subject = "Fire Impairment Clearance Permit Cancellation Rejected from Fire Watch";
        //                response.message = "Fire Impairment Clearance Permit is rejected. \nRequestor (" + userFi.alpha_name + ") will be notified to revised this Fire Impairment Clearance Permit.";
        //                break;
        //            case 3:
        //                fi.acc_fire_watch_signature = null;
        //                fi.acc_fire_wacth_delegate = null;
        //                fi.status = (int)FIStatus.REQUESTORAPPROVE;

        //                Int32.TryParse(fi.fire_watch, out userId);
        //                userFi = new UserEntity(userId, user.token, user);
        //                email.Add(userFi.email);
        //                subject = "Fire Impairment Clearance Permit Rejected from Safety Officer";
        //                response.message = "Fire Impairment Clearance Permit is rejected. \nFire Watch (" + userFi.alpha_name + ") will be notified to revised this Fire Impairment Clearance Permit.";
        //                break;
        //            case 4:
        //                fi.acc_so_signature = null;
        //                fi.acc_so_delegate = null;
        //                fi.status = (int)FIStatus.FIREWATCHAPPROVE;

        //                Int32.TryParse(fi.acc_so, out userId);
        //                userFi = new UserEntity(userId, user.token, user);
        //                email.Add(userFi.email);
        //                subject = "Fire Impairment Clearance Permit Rejected from Facility Owner";
        //                response.message = "Fire Impairment Clearance Permit is rejected. \nSafety Officer (" + userFi.alpha_name + ") will be notified to revised this Fire Impairment Clearance Permit.";
        //                break;
        //            case 5:
        //                fi.acc_fo_signature = null;
        //                fi.acc_fo_delegate = null;
        //                fi.status = (int)FIStatus.SOAPPROVE;

        //                Int32.TryParse(fi.acc_fo, out userId);
        //                userFi = new UserEntity(userId, user.token, user);
        //                email.Add(userFi.email);
        //                subject = "Fire Impairment Clearance Permit Rejected from Dept. Head FO";
        //                response.message = "Fire Impairment Clearance Permit is rejected. \nFacility Owner (" + userFi.alpha_name + ") will be notified to revised this Fire Impairment Clearance Permit.";
        //                break;
        //        }

        //        if (response.status != 401)
        //        {
        //            this.db.Entry(fi).State = EntityState.Modified;
        //            response.status = this.db.SaveChanges() == 1 ? 200 : 404;
        //        }


        //        message = serverUrl + "Home?p=FI/edit/" + this.id + "<br />" + comment;

        //        /* for testing purpose */
        //        email.RemoveAt(0);
        //        email.Add("septujamasoka@gmail.com");
        //        sendEmail.Send(email, message, subject);
        //    }

        //    response.id = this.id;

        //    return response;
        //}

        public string getStatus()
        {
            string retVal = "";
            switch (this.status)
            {
                case (int)FIStatus.CREATE: retVal = "Fire Impairment Permit is still edited by Requestor"; break;
                //case (int)FIStatus.EDITANDSEND: retVal = "Waiting for Supervisor Pre-job Screening"; break;
                case (int)FIStatus.SPVSCREENING: retVal = "Waiting for Approval by Safety Officer"; break;
                //case (int)FIStatus.SOSCREENING: retVal = "Waiting for FO Pre-job Screening"; break;
                //case (int)FIStatus.FOSCREENING: retVal = "Waiting for Approval by Requestor"; break;
                case (int)FIStatus.REQUESTORAPPROVE: retVal = "Waiting for Approval by Fire Watch"; break;
                case (int)FIStatus.FIREWATCHAPPROVE: retVal = "Waiting for Pre-job Screening by Supervisor"; break;
                case (int)FIStatus.SOAPPROVE: retVal = "Waiting for Approval by Facility Owner"; break;
                case (int)FIStatus.FOAPPROVE: retVal = "Waiting for Approval by Dept. Head Facility Owner"; break;
                case (int)FIStatus.DEPTFOAPPROVE: retVal = "Completed. Fire Impairment Permit has been approved by Dept. Head Facility Owner"; break;
                case (int)FIStatus.CLOSING: retVal = "Fire Impairment Permit is cancelled by Requestor. Waiting for supervisor's cancellation screening"; break;
                case (int)FIStatus.CANSPVSCREENING: retVal = "Waiting for Cancellation approving by Safety Officer"; break;
                //case (int)FIStatus.CANSOSCREENING: retVal = "Waiting for FO's cancellation screening"; break;
                //case (int)FIStatus.CANFOSCREENING: retVal = "Waiting for Cancellation approval by Requestor"; break;
                case (int)FIStatus.CANREQUESTORAPPROVE: retVal = "Waiting for Cancellation approving by Fire Watch"; break;
                case (int)FIStatus.CANFIREWATCHAPPROVE: retVal = "Waiting for Cancellation Screening by Safety Officer"; break;
                case (int)FIStatus.CANSOAPPROVE: retVal = "Waiting for Cancellation approving by Facility Owner"; break;
                case (int)FIStatus.CANFOAPPROVE: retVal = "Waiting for Cancellation approving by Dept. Head Facility Owner"; break;
                case (int)FIStatus.CANDEPTFOAPPROVE: retVal = "Fire Impairment Permit is Cancelled"; break;
            };

            return retVal;
        }

        #region assign User in Fire Impairment

        public int assignSupervisor(UserEntity supervisor)
        {
            this.spv = supervisor.id.ToString();

            fire_impairment fi = this.db.fire_impairment.Find(this.id);
            fi.spv = this.spv;

            this.db.Entry(fi).State = EntityState.Modified;

            return this.db.SaveChanges();
        }

        public int assignSO(UserEntity so, string serverUrl)
        {
            this.acc_so = so.id.ToString();
            this.cancel_so = this.acc_so;

            fire_impairment fi = this.db.fire_impairment.Find(this.id);
            fi.acc_so = this.acc_so;

            this.db.Entry(fi).State = EntityState.Modified;

            // sending email
            List<string> email = new List<string>();
            email.Add(so.email);
            // email.Add("septujamasoka@gmail.com");
            SendEmail sendEmail = new SendEmail();

            string message = serverUrl + "Home?p=FI/edit/" + this.id;

            sendEmail.Send(email, message, "Assigned as Safety Officer for Fire Impairment Clearance Permit");

            return this.db.SaveChanges();
        }

        public int assignFO(UserEntity fo)
        {
            this.acc_fo = fo.id.ToString();

            fire_impairment fi = this.db.fire_impairment.Find(this.id);
            fi.acc_fo = this.acc_fo;

            this.db.Entry(fi).State = EntityState.Modified;

            return this.db.SaveChanges();
        }

        public int assignFO(int fo_id)
        {
            this.acc_fo = fo_id.ToString();
            this.cancel_fo = fo_id.ToString();

            fire_impairment fi = this.db.fire_impairment.Find(this.id);
            fi.acc_fo = this.acc_fo;
            fi.cancel_fo = this.cancel_fo;

            this.db.Entry(fi).State = EntityState.Modified;

            return this.db.SaveChanges();
        }

        public int assignDeptHead(UserEntity deptHead, string serverUrl)
        {
            this.acc_dept_head = deptHead.id.ToString();

            fire_impairment fi = this.db.fire_impairment.Find(this.id);
            fi.acc_dept_head = this.acc_dept_head;

            this.db.Entry(fi).State = EntityState.Modified;

            // sending email
            List<string> email = new List<string>();
            email.Add(deptHead.email);
            // email.Add("septujamasoka@gmail.com");
            SendEmail sendEmail = new SendEmail();

            string message = serverUrl + "Home?p=FI/edit/" + this.id;

            sendEmail.Send(email, message, "Assigned as Safety Officer for Fire Impairment Clearance Permit");

            return this.db.SaveChanges();
        }

        public void UpdateNodeAssignSODeptHeadFO()
        {
            // create node
            workflowNodeService.CreateNode(this.id, WorkflowNodeServiceModel.DocumentType.FIREIMPAIRMENT.ToString(),
                WorkflowNodeServiceModel.FireImpairmentNodeName.CHOOSING_SO_DEPT_HEAD_FO.ToString(), (byte)WorkflowNodeServiceModel.NodeStatus.APPROVED);
        }

        #endregion

        #region is user can edit form

        public bool isUserInFI(UserEntity user, ListUser listUser)
        {
            return (isFireWatch(user, listUser) || isSO(user, listUser) || isDeptHead(user, listUser));
        }

        private bool isDeptHead(UserEntity user, ListUser listUser)
        {
            int deptHeadId = 0;
            Int32.TryParse(this.acc_dept_head, out deptHeadId);
            if (deptHeadId != 0)
            {
                UserEntity deptHead = listUser.listUser.Find(p => p.id == deptHeadId);
                if (deptHead != null && (user.id == deptHead.id || user.id == deptHead.employee_delegate))
                {
                    return true;
                }
            }
            return false;
        }

        public bool isFO(UserEntity user,ListUser listUser = null)
        {
            int foId = 0;
            Int32.TryParse(this.acc_fo, out foId);

            if (foId != 0)
            {
                UserEntity fo = listUser == null ? new UserEntity(foId, user.token, user) : listUser.listUser.Find(p => p.id == foId);
                if (fo != null)
                {
                    List<UserEntity> listDel = fo.GetDelegateFO(user);
                    if (user.id == fo.id || user.id == fo.employee_delegate)
                    {
                        return true;
                    }
                    else if (listDel.Exists(p => p.id == user.id))
                    {
                        return true;
                    }
                }
            }
            return false;
        }

        private bool isSO(UserEntity user, ListUser listUser)
        {
            int soId = 0;
            Int32.TryParse(this.acc_so, out soId);
            if (soId != 0)
            {
                UserEntity so = listUser.listUser.Find(p => p.id == soId);
                if (so != null && (user.id == so.id || user.id == so.employee_delegate))
                {
                    return true;
                }
            }
            return false;
        }

        private bool isFireWatch(UserEntity user, ListUser listUser)
        {
            int fireWatchId = 0;
            Int32.TryParse(this.fire_watch, out fireWatchId);
            if (fireWatchId != 0)
            {
                UserEntity fireWatch = listUser.listUser.Find(p => p.id == fireWatchId);
                if (fireWatch != null && (user.id == fireWatch.id || user.id == fireWatch.employee_delegate))
                {
                    return true;
                }
            }
            return false;
        }

        private bool isSpv(UserEntity user, ListUser listUser)
        {
            int spvId = 0;
            Int32.TryParse(this.spv, out spvId);
            if (spvId != 0)
            {
                UserEntity spv = listUser.listUser.Find(p => p.id == spvId);
                if (spv != null && (user.id == spv.id || user.id == spv.employee_delegate))
                {
                    return true;
                }
            }
            return false;
        }

        private bool isRequestor(UserEntity user, ListUser listUser)
        {
            int requestorId = 0;
            Int32.TryParse(this.requestor, out requestorId);
            if (requestorId != 0)
            {
                UserEntity requestor = listUser.listUser.Find(p => p.id == requestorId);
                if (requestor != null && (user.id == requestor.id || user.id == requestor.employee_delegate))
                {
                    return true;
                }
            }
            return false;
        }

        public bool isCanEditFormRequestor(UserEntity user, ListUser listUser)
        {
            int requestorId = 0;
            if (this.ptw.is_guest == 1)
            {
                Int32.TryParse(this.spv, out requestorId);
                if (requestorId != 0)
                {
                    UserEntity requestor = listUser.listUser.Find(p => p.id == requestorId);
                    if ((user.id == requestor.id || user.id == requestor.employee_delegate) && this.status == (int)FIStatus.CREATE)
                    {
                        return true;
                    }
                }
            }
            else
            {
                Int32.TryParse(this.requestor, out requestorId);
                if (requestorId  != 0)
                {
                    UserEntity requestor = listUser.listUser.Find(p => p.id == requestorId);
                    if ((user.id == requestor.id || user.id == requestor.employee_delegate) && this.status == (int)FIStatus.CREATE)
                    {
                        return true;
                    }
                }
            }
            return false;
        }

        public bool isCanEditFormSPV(UserEntity user, ListUser listUser)
        {
            int spvId = 0;
            Int32.TryParse(this.spv, out spvId);
            if (spvId != 0)
            {
                UserEntity spv = listUser.listUser.Find(p => p.id == spvId);
                if ((user.id == spv.id || user.id == spv.employee_delegate) && this.status == (int)FIStatus.FIREWATCHAPPROVE)
                {
                    return true;
                }
            }
            return false;
        }

        public bool isCanEditAssign(UserEntity user, ListUser listUser)
        {
            int foId = 0;
            Int32.TryParse(this.acc_fo, out foId);
            if (foId != 0)
            {
                UserEntity fo = listUser.listUser.Find(p => p.id == foId);
                List<UserEntity> listDel = fo.GetDelegateFO(user, listUser);
                if ((user.id == fo.id || user.id == fo.employee_delegate) && (this.acc_so == null || this.acc_dept_head == null))
                {
                    return true;
                }
                else if (listDel.Exists(p => p.id == user.id) && (this.acc_so == null || this.acc_dept_head == null))
                {
                    return true;
                }
            }
            return false;
        }

        public bool isCanEditApproveFireWatch(UserEntity user, ListUser listUser)
        {
            int fireWatchId = 0;
            Int32.TryParse(this.fire_watch, out fireWatchId);
            if (fireWatchId != 0)
            {
                UserEntity fireWatch = listUser.listUser.Find(p => p.id == fireWatchId);
                if ((user.id == fireWatch.id || user.id == fireWatch.employee_delegate) && this.status == (int)FIStatus.REQUESTORAPPROVE)
                {
                    return true;
                }
            }
            return false;
        }

        public bool isCanEditApproveSO(UserEntity user, ListUser listUser)
        {
            int sOId = 0;
            Int32.TryParse(this.acc_so, out sOId);
            if (sOId != 0)
            {
                UserEntity sO = listUser.listUser.Find(p => p.id == sOId);
                if ((user.id == sO.id || user.id == sO.employee_delegate) && this.status == (int)FIStatus.SPVSCREENING)
                {
                    return true;
                }
            }
            return false;
        }

        public bool isCanEditApproveFO(UserEntity user, ListUser listUser)
        {
            int fOId = 0;
            Int32.TryParse(this.acc_fo, out fOId);
            if (fOId != 0)
            {
                UserEntity fO = listUser.listUser.Find(p => p.id == fOId);
                List<UserEntity> listDel = fO.GetDelegateFO(user, listUser);
                if ((user.id == fO.id || user.id == fO.employee_delegate) && this.status == (int)FIStatus.SOAPPROVE)
                {
                    return true;
                }
                else if (listDel.Exists(p => p.id == user.id) && this.status == (int)FIStatus.SOAPPROVE)
                {
                    return true;
                }
            }
            return false;
        }

        public bool isCanEditApproveDeptHead(UserEntity user, ListUser listUser)
        {
            int deptHeadId = 0;
            Int32.TryParse(this.acc_dept_head, out deptHeadId);
            if (deptHeadId != 0)
            {
                UserEntity deptHead = listUser.listUser.Find(p => p.id == deptHeadId);
                if ((user.id == deptHead.id || user.id == deptHead.employee_delegate) && this.status == (int)FIStatus.FOAPPROVE)
                {
                    return true;
                }
            }
            return false;
        }

        public bool isCanEditCancel(UserEntity user, ListUser listUser)
        {
            int requestorId = 0;
            if (this.ptw.is_guest == 1)
            {
                Int32.TryParse(this.spv, out requestorId);
                if (requestorId != 0)
                {
                    UserEntity requestor = listUser.listUser.Find(p => p.id == requestorId);
                    if ((user.id == requestor.id || user.id == requestor.employee_delegate) && this.status == (int)FIStatus.DEPTFOAPPROVE)
                    {
                        return true;
                    }
                }
            }
            else
            {
                Int32.TryParse(this.requestor, out requestorId);
                if (requestorId != 0)
                {
                    UserEntity requestor = listUser.listUser.Find(p => p.id == requestorId);
                    if ((user.id == requestor.id || user.id == requestor.employee_delegate) && this.status == (int)FIStatus.DEPTFOAPPROVE)
                    {
                        return true;
                    }
                }
            }
            return false;
        }

        public bool isCanEditFormSPVCancel(UserEntity user, ListUser listUser)
        {
            int spvId = 0;
            Int32.TryParse(this.spv, out spvId);
            if (spvId != 0)
            {
                UserEntity spv = listUser.listUser.Find(p => p.id == spvId);
                if ((user.id == spv.id || user.id == spv.employee_delegate) && this.status == (int)FIStatus.CANFIREWATCHAPPROVE)
                {
                    return true;
                }
            }
            return false;
        }

        //public bool isCanEditFormSOCancel(UserEntity user)
        //{
        //    int soId = 0;
        //    Int32.TryParse(this.acc_so, out soId);
        //    UserEntity so = new UserEntity(soId, user.token, user);
        //    if ((user.id == so.id || user.id == so.employee_delegate) && this.status == (int)FIStatus.CANSPVSCREENING)
        //    {
        //        return true;
        //    }
        //    return false;
        //}

        //public bool isCanEditFormFOCancel(UserEntity user)
        //{
        //    int foId = 0;
        //    Int32.TryParse(this.acc_fo, out foId);
        //    UserEntity fo = new UserEntity(foId, user.token, user);
        //    //if ((user.id == fo.id || user.id == fo.employee_delegate) && this.status == (int)FIStatus.CANSOSCREENING)
        //    //{
        //    //    return true;
        //    //}
        //    return false;
        //}

        public bool isCanEditApproveRequestorCancel(UserEntity user, ListUser listUser)
        {
            int requestorId = 0;
            if (this.ptw.is_guest == 1)
            {
                Int32.TryParse(this.spv, out requestorId);
                if (requestorId != 0)
                {
                    UserEntity requestor = listUser.listUser.Find(p => p.id == requestorId);
                    if ((user.id == requestor.id || user.id == requestor.employee_delegate) && this.status == (int)FIStatus.CLOSING)
                    {
                        return true;
                    }
                }
            }
            else
            {
                Int32.TryParse(this.requestor, out requestorId);
                if (requestorId != 0)
                {
                    UserEntity requestor = listUser.listUser.Find(p => p.id == requestorId);
                    if ((user.id == requestor.id || user.id == requestor.employee_delegate) && this.status == (int)FIStatus.CLOSING)
                    {
                        return true;
                    }
                }
            }
            return false;
        }

        public bool isCanEditApproveFireWatchCancel(UserEntity user, ListUser listUser)
        {
            int fireWatchId = 0;
            Int32.TryParse(this.fire_watch, out fireWatchId);
            if (fireWatchId != 0)
            {
                UserEntity fireWatch = listUser.listUser.Find(p => p.id == fireWatchId);
                if ((user.id == fireWatch.id || user.id == fireWatch.employee_delegate) && this.status == (int)FIStatus.CANREQUESTORAPPROVE)
                {
                    return true;
                }
            }
            return false;
        }

        public bool isCanEditApproveSOCancel(UserEntity user, ListUser listUser)
        {
            int sOId = 0;
            Int32.TryParse(this.acc_so, out sOId);
            if (sOId != 0)
            {
                UserEntity sO = listUser.listUser.Find(p => p.id == sOId);
                if ((user.id == sO.id || user.id == sO.employee_delegate) && this.status == (int)FIStatus.CANSPVSCREENING)
                {
                    return true;
                }
            }
            return false;
        }

        public bool isCanEditApproveFOCancel(UserEntity user, ListUser listUser)
        {
            int fOId = 0;
            Int32.TryParse(this.acc_fo, out fOId);
            if (fOId != 0)
            {
                UserEntity fO = listUser.listUser.Find(p => p.id == fOId);
                List<UserEntity> listDel = fO.GetDelegateFO(user, listUser);
                if ((user.id == fO.id || user.id == fO.employee_delegate) && this.status == (int)FIStatus.CANSOAPPROVE)
                {
                    return true;
                }
                else if (listDel.Exists(p => p.id == user.id) && this.status == (int)FIStatus.CANSOAPPROVE)
                {
                    return true;
                }
            }
            return false;
        }

        public bool isCanEditApproveDeptHeadCancel(UserEntity user, ListUser listUser)
        {
            int deptHeadId = 0;
            Int32.TryParse(this.acc_dept_head, out deptHeadId);
            if (deptHeadId != 0)
            {
                UserEntity deptHead = listUser.listUser.Find(p => p.id == deptHeadId);
                if ((user.id == deptHead.id || user.id == deptHead.employee_delegate) && this.status == (int)FIStatus.CANFOAPPROVE)
                {
                    return true;
                }
            }
            return false;
        }

        public bool isExistFO()
        {
            return this.acc_fo != null;
        }

#endregion

        #region internal function

        private void generateUserInFI(UserEntity user, ListUser listUsers = null)
        {
            ListUser listUser = listUsers != null ? listUsers : new ListUser(user.token, user.id);
            int userId = 0;

            if (is_guest)
            {
                UserEntity userGuest = new UserEntity();
                userGuest.alpha_name = this.requestor;
                this.userInFI.Add(UserInFI.REQUESTOR.ToString(), userGuest);
            }
            else
            {
                Int32.TryParse(this.requestor, out userId);
                isUser = isUser || user.id == userId;
                this.userInFI.Add(UserInFI.REQUESTOR.ToString(), listUser.listUser.Find(p => p.id == userId));
            }

            userId = 0;
            Int32.TryParse(this.spv, out userId);
            isUser = isUser || user.id == userId;
            this.userInFI.Add(UserInFI.SUPERVISOR.ToString(), listUser.listUser.Find(p => p.id == userId));

            userId = 0;
            Int32.TryParse(this.acc_so, out userId);
            isUser = isUser || user.id == userId;
            this.userInFI.Add(UserInFI.SAFETYOFFICER.ToString(), listUser.listUser.Find(p => p.id == userId));

            userId = 0;
            Int32.TryParse(this.acc_fo, out userId);
            isUser = isUser || user.id == userId;
            this.userInFI.Add(UserInFI.FACILITYOWNER.ToString(), listUser.listUser.Find(p => p.id == userId));

            userId = 0;
            Int32.TryParse(this.fire_watch, out userId);
            isUser = isUser || user.id == userId;
            this.userInFI.Add(UserInFI.FIREWATCH.ToString(), listUser.listUser.Find(p => p.id == userId));

            userId = 0;
            Int32.TryParse(this.acc_dept_head, out userId);
            isUser = isUser || user.id == userId;
            this.userInFI.Add(UserInFI.DEPTHEADFO.ToString(), listUser.listUser.Find(p => p.id == userId));

            userId = 0;
            Int32.TryParse(this.acc_work_leader_delegate, out userId);
            if (userId != 0)
            {
                isUser = isUser || user.id == userId;
                this.userInFI.Add(UserInFI.REQUESTORDELEGATE.ToString(), listUser.listUser.Find(p => p.id == userId));
            }

            userId = 0;
            Int32.TryParse(this.acc_fire_wacth_delegate, out userId);
            if (userId != 0)
            {
                isUser = isUser || user.id == userId;
                this.userInFI.Add(UserInFI.FIREWATCHDELEGATE.ToString(), listUser.listUser.Find(p => p.id == userId));
            }

            userId = 0;
            Int32.TryParse(this.acc_so_delegate, out userId);
            if (userId != 0)
            {
                isUser = isUser || user.id == userId;
                this.userInFI.Add(UserInFI.SAFETYOFFICERDELEGATE.ToString(), listUser.listUser.Find(p => p.id == userId));
            }

            userId = 0;
            Int32.TryParse(this.acc_fo_delegate, out userId);
            if (userId != 0)
            {
                isUser = isUser || user.id == userId;
                this.userInFI.Add(UserInFI.FACILITYOWNERDELEGATE.ToString(), listUser.listUser.Find(p => p.id == userId));
            }

            userId = 0;
            Int32.TryParse(this.acc_dept_head_delegate, out userId);
            if (userId != 0)
            {
                isUser = isUser || user.id == userId;
                this.userInFI.Add(UserInFI.DEPTHEADFODELEGATE.ToString(), listUser.listUser.Find(p => p.id == userId));
            }

            userId = 0;
            Int32.TryParse(this.cancel_work_leader_delegate, out userId);
            if (userId != 0)
            {
                isUser = isUser || user.id == userId;
                this.userInFI.Add(UserInFI.CANREQUESTORDELEGATE.ToString(), listUser.listUser.Find(p => p.id == userId));
            }

            userId = 0;
            Int32.TryParse(this.cancel_fire_watch_delegate, out userId);
            if (userId != 0)
            {
                isUser = isUser || user.id == userId;
                this.userInFI.Add(UserInFI.CANFIREWATCHDELEGATE.ToString(), listUser.listUser.Find(p => p.id == userId));
            }

            userId = 0;
            Int32.TryParse(this.cancel_so_delegate, out userId);
            if (userId != 0)
            {
                isUser = isUser || user.id == userId;
                this.userInFI.Add(UserInFI.CANSAFETYOFFICERDELEGATE.ToString(), listUser.listUser.Find(p => p.id == userId));
            }

            userId = 0;
            Int32.TryParse(this.cancel_fo_delegate, out userId);
            if (userId != 0)
            {
                isUser = isUser || user.id == userId;
                this.userInFI.Add(UserInFI.CANFACILITYOWNERDELEGATE.ToString(), listUser.listUser.Find(p => p.id == userId));
            }

            userId = 0;
            Int32.TryParse(this.cancel_dept_head_delegate, out userId);
            if (userId != 0)
            {
                isUser = isUser || user.id == userId;
                this.userInFI.Add(UserInFI.CANDEPTHEADFODELEGATE.ToString(), listUser.listUser.Find(p => p.id == userId));
            }
        }

        public string sendEmailFO(List<UserEntity> listFO, string serverUrl, string token, UserEntity user, int? ext = null)
        {
            if (ext == null)
            {

                string salt = "susahbangetmencarisaltyangpalingbaikdanbenar";
                string val = "emailfo";
                SendEmail sendEmail = new SendEmail();
                foreach (UserEntity fo in listFO)
                {
                    string timestamp = DateTime.UtcNow.Ticks.ToString();
                    List<string> s = new List<string>();
#if (!DEBUG)
                    s.Add(fo.email);
#else
                    s.Add("septu.jamasoka@gmail.com");
#endif
                    if (fo.employee_delegate != null)
                    {
                        UserEntity del = new UserEntity(fo.employee_delegate.Value, token, user);
#if (!DEBUG)
                        s.Add(del.email);
#else
                        s.Add("septu.jamasoka@gmail.com");
#endif
                    }

                    string encodedValue = this.status + salt + fo.id + val + this.id;
                    string encodedElement = Base64.Base64Encode(encodedValue);

                    string seal = Base64.MD5Seal(timestamp + salt + val);

                    string message = serverUrl + "Fi/SetFacilityOwner?a=" + timestamp + "&b=" + seal + "&c=" + encodedElement;

                    sendEmail.Send(s, message, "Fire Impairment Facility Owner");
                }
            }

            return "200";
        }

        public void getPtw(UserEntity user)
        {
            this.ptw = new PtwEntity(this.id_ptw.Value, user);
            this.ptw_status = this.ptw.status;
        }
        public void getPtw(UserEntity user, ListUser listUser)
        {
            this.ptw = new PtwEntity(this.id_ptw.Value, user, listUser);
            this.ptw_status = this.ptw.status;
        }

        #endregion
    }
}