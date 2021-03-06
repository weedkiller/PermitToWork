﻿using PermitToWork.Models.Hira;
using PermitToWork.Models.Ptw;
using PermitToWork.Models.User;
using PermitToWork.Utilities;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.IO;
using PermitToWork.Models.Workflow;

namespace PermitToWork.Models.ClearancePermit
{
    public class CsepEntity : confined_space, IClearancePermitEntity
    {
        public override permit_to_work permit_to_work { get { return null; } set { } }

        public string[] screening_spv_arr { get; set; }
        public string[] screening_fo_arr { get; set; }
        public string[] screening_1_arr { get; set; }
        public string[] screening_2_arr { get; set; }
        public string[] screening_3_arr { get; set; }
        public string[] screening_4_arr { get; set; }
        public string[] screening_5_arr { get; set; }
        public string[] screening_6_arr { get; set; }
        public string[] screening_7_arr { get; set; }

        // ptw entity for PTW reference
        private PtwEntity ptw { get; set; }

        public List<HiraEntity> hira_document { get; set; }
        public string hira_no { get; set; }

        public string csep_status { get; set; }

        public int ids { get; set; }
        public string statusText { get; set; }

        public bool is_guest { get; set; }
        public bool isUser { get; set; }


        public Dictionary<string, UserEntity> userInCSEP { get; set; }
        public Dictionary<string, List<string>> listDocumentUploaded { get; set; }

        public WorkflowNodeServiceModel workflowNodeService { get; set; }

        public enum CsepStatus
        {
            CREATE,
            SPVSCREENING,
            FOSCREENING,
            GASTESTER,
            ACCWORKLEADER,
            ACCSPV,
            ACCFO,
            EXTCREATE1,
            EXTFOSCREENING1,
            EXTGASTESTER1,
            EXTACCWORKLEADER1,
            EXTACCFO1,
            EXTCREATE2,
            EXTFOSCREENING2,
            EXTGASTESTER2,
            EXTACCWORKLEADER2,
            EXTACCFO2,
            EXTCREATE3,
            EXTFOSCREENING3,
            EXTGASTESTER3,
            EXTACCWORKLEADER3,
            EXTACCFO3,
            EXTCREATE4,
            EXTFOSCREENING4,
            EXTGASTESTER4,
            EXTACCWORKLEADER4,
            EXTACCFO4,
            EXTCREATE5,
            EXTFOSCREENING5,
            EXTGASTESTER5,
            EXTACCWORKLEADER5,
            EXTACCFO5,
            EXTCREATE6,
            EXTFOSCREENING6,
            EXTGASTESTER6,
            EXTACCWORKLEADER6,
            EXTACCFO6,
            EXTCREATE7,
            EXTFOSCREENING7,
            EXTGASTESTER7,
            EXTACCWORKLEADER7,
            EXTACCFO7,
            CANCEL,
            CANWORKLEADER,
            CANSPV,
            CANFO,
        }

        private star_energy_ptwEntities db;

        public CsepEntity() : base()
        {
            this.db = new star_energy_ptwEntities();
            this.listDocumentUploaded = new Dictionary<string, List<string>>();
            this.workflowNodeService = new WorkflowNodeServiceModel();
        }

        // constructor with id to get object from database
        public CsepEntity(int id, UserEntity user)
            : this()
        {
            confined_space csep = this.db.confined_space.Find(id);
            // this.ptw = new PtwEntity(fi.id_ptw.Value);
            ModelUtilization.Clone(csep, this);
            this.is_guest = csep.permit_to_work.is_guest == 1;

            this.screening_spv_arr = this.screening_spv.Split('#');
            this.screening_fo_arr = this.screening_fo.Split('#');
            this.screening_1_arr = this.screening_1.Split('#');
            this.screening_2_arr = this.screening_2.Split('#');
            this.screening_3_arr = this.screening_3.Split('#');
            this.screening_4_arr = this.screening_4.Split('#');
            this.screening_5_arr = this.screening_5.Split('#');
            this.screening_6_arr = this.screening_6.Split('#');
            this.screening_7_arr = this.screening_7.Split('#');

            this.is_guest = csep.permit_to_work.is_guest == 1;
            this.status = csep.status;

            this.statusText = getStatus();

            string path = HttpContext.Current.Server.MapPath("~/Upload/ConfinedSpace/" + this.id + "");
            if (!Directory.Exists(path))
            {
                Directory.CreateDirectory(path);
            }

            DirectoryInfo d = new DirectoryInfo(path);//Assuming Test is your Folder
            FileInfo[] Files = d.GetFiles(); //Getting Text files

            this.listDocumentUploaded.Add("ATTACHMENT", Files.Select(p => p.Name).ToList());

            this.hira_document = new ListHira(this.id_ptw.Value, this.db).listHira;
        }

        public CsepEntity(confined_space csep, UserEntity user)
            : this()
        {
            // this.ptw = new PtwEntity(fi.id_ptw.Value);
            ModelUtilization.Clone(csep, this);

            this.is_guest = csep.permit_to_work.is_guest == 1;

            this.statusText = getStatus();
        }

        public CsepEntity(int id_ptw, string work_leader, string purpose, string acc_spv = null, string acc_spv_del = null, string acc_fo = null)
            : this()
        {
            this.id_ptw = id_ptw;
            this.work_leader = work_leader;
            this.purpose = purpose;
            this.acc_supervisor = acc_spv;
            this.acc_supervisor_delegate = acc_spv_del;
            this.can_supervisor = acc_spv;
            this.can_supervisor_delegate = acc_spv_del;
            this.acc_fo = acc_fo;
            this.can_fo = acc_fo;

            this.screening_spv = "########";
            this.screening_fo = "########";
            this.screening_1 = "########";
            this.screening_2 = "########";
            this.screening_3 = "########";
            this.screening_4 = "########";
            this.screening_5 = "########";
            this.screening_6 = "########";
            this.screening_7 = "########";
        }

        public int create()
        {
            generateRandomPIN();
            confined_space csep = new confined_space();
            this.status = (int)CsepStatus.CREATE;
            ModelUtilization.Clone(this, csep);
            this.db.confined_space.Add(csep);
            int retVal = this.db.SaveChanges();
            this.id = csep.id;

            string path = HttpContext.Current.Server.MapPath("~/Upload/ConfinedSpace/" + this.id);
            if (!Directory.Exists(path))
            {
                Directory.CreateDirectory(path);
            }
            return retVal;
        }

        public int delete()
        {
            confined_space csep = this.db.confined_space.Find(this.id);
            this.db.confined_space.Remove(csep);
            return this.db.SaveChanges();
        }

        public int edit()
        {
            confined_space csep = this.db.confined_space.Find(this.id);
            csep.attendant = this.attendant;
            csep.purpose = this.purpose;
            csep.validity_period_start = this.validity_period_start;
            csep.validity_period_end = this.validity_period_end;
            csep.screening_spv = this.screening_spv;
            csep.screening_fo = this.screening_fo;
            csep.screening_1 = this.screening_1;
            csep.screening_2 = this.screening_2;
            csep.screening_3 = this.screening_3;
            csep.screening_4 = this.screening_4;
            csep.screening_5 = this.screening_5;
            csep.screening_6 = this.screening_6;
            csep.screening_7 = this.screening_7;
            csep.notes = this.notes;
            csep.methane_result = this.methane_result;
            csep.o2_result = this.o2_result;
            csep.h2s_result = this.h2s_result;
            csep.co_result = this.co_result;
            csep.other_gas = this.other_gas;
            csep.other_result = this.other_result;

            this.db.Entry(csep).State = System.Data.EntityState.Modified;
            return this.db.SaveChanges();
        }

        #region generate CSEP number

        public void generateNumber(string ptw_no)
        {
            string result = "CSEP-" + ptw_no;

            this.csep_no = result;
        }

        #endregion

        #region check user

        public bool isWorkLeader(UserEntity user, ListUser listUser)
        {
            var retVal = false;
            string user_id = user.id.ToString();
            if ((this.work_leader == user_id))
            {
                retVal = true;
            }

            return retVal;
        }

        public bool isAccSupervisor(UserEntity user, ListUser listUser)
        {
            var retVal = false;
            string user_id = user.id.ToString();
            int foId = 0;
            Int32.TryParse(this.acc_supervisor, out foId); if (foId != 0)
            {
                UserEntity fo = listUser.listUser.Find(p => p.id == foId);
                if ((this.acc_supervisor == user_id || (fo.employee_delegate != null && fo.employee_delegate.ToString() == user_id)))
                {
                    retVal = true;
                }
            }

            return retVal;
        }

        public bool isAccFireWatch(UserEntity user, ListUser listUser)
        {
            var retVal = false;
            string user_id = user.id.ToString();
            int foId = 0;
            Int32.TryParse(this.acc_fire_watch, out foId);
            if (foId != 0)
            {
                UserEntity fo = listUser.listUser.Find(p => p.id == foId);
                if ((this.acc_fire_watch == user_id || (fo.employee_delegate != null && fo.employee_delegate.ToString() == user_id)))
                {
                    retVal = true;
                }
            }

            return retVal;
        }

        public bool isAccFO(UserEntity user, ListUser listUser)
        {
            var retVal = false;
            int foId = 0;
            Int32.TryParse(this.acc_fo, out foId);
            if (foId != 0)
            {
                UserEntity fo = listUser.listUser.Find(p => p.id == foId);
                string user_id = user.id.ToString();
                List<UserEntity> listDel = fo.GetDelegateFO(user, listUser);
                if ((this.acc_fo == user_id || (fo.employee_delegate != null && fo.employee_delegate.ToString() == user_id)))
                {
                    retVal = true;
                }
                else if (listDel.Exists(p => p.id == user.id))
                {
                    return true;
                }
            }
            return retVal;
        }

        public bool isAccGasTester(UserEntity user, ListUser listUser)
        {
            var retVal = false;
            string user_id = user.id.ToString();
            if (this.acc_gas_tester == user_id)
            {
                retVal = true;
            }

            return retVal;
        }

        public bool isCanSupervisor(UserEntity user, ListUser listUser)
        {
            var retVal = false;
            string user_id = user.id.ToString();
            int foId = 0;
            Int32.TryParse(this.can_supervisor, out foId);
            if (foId != 0)
            {
                UserEntity fo = listUser.listUser.Find(p => p.id == foId);
                if ((this.can_supervisor == user_id || (fo.employee_delegate != null && fo.employee_delegate.ToString() == user_id)))
                {
                    retVal = true;
                }
            }

            return retVal;
        }

        public bool isCanFireWatch(UserEntity user, ListUser listUser)
        {
            var retVal = false;
            string user_id = user.id.ToString();
            int foId = 0;
            Int32.TryParse(this.can_fire_watch, out foId);
            if (foId != 0)
            {
                UserEntity fo = listUser.listUser.Find(p => p.id == foId);
                if ((this.can_fire_watch == user_id || (fo.employee_delegate != null && fo.employee_delegate.ToString() == user_id)))
                {
                    retVal = true;
                }
            }

            return retVal;
        }

        public bool isCanFO(UserEntity user, ListUser listUser)
        {
            var retVal = false;
            int foId = 0;
            Int32.TryParse(this.can_fo, out foId);
            if (foId != 0)
            {
                UserEntity fo = listUser.listUser.Find(p => p.id == foId);
                string user_id = user.id.ToString();
                List<UserEntity> listDel = fo.GetDelegateFO(user, listUser);
                if ((this.can_fo == user_id || (fo.employee_delegate != null && fo.employee_delegate.ToString() == user_id)))
                {
                    retVal = true;
                }
                else if (listDel.Exists(p => p.id == user.id))
                {
                    return true;
                }
            }

            return retVal;
        }

        public bool isExtGasTester(UserEntity user, ListUser listUser, int extension)
        {
            var retVal = false;
            string user_id = user.id.ToString();
            switch (extension)
            {
                case 1:
                    if ((this.ext_gas_tester_1 == user_id))
                    {
                        retVal = true;
                    }
                    break;
                case 2:
                    if ((this.ext_gas_tester_2 == user_id))
                    {
                        retVal = true;
                    }
                    break;
                case 3:
                    if ((this.ext_gas_tester_3 == user_id))
                    {
                        retVal = true;
                    }
                    break;
                case 4:
                    if ((this.ext_gas_tester_4 == user_id))
                    {
                        retVal = true;
                    }
                    break;
                case 5:
                    if ((this.ext_gas_tester_5 == user_id))
                    {
                        retVal = true;
                    }
                    break;
                case 6:
                    if ((this.ext_gas_tester_6 == user_id))
                    {
                        retVal = true;
                    }
                    break;
                case 7:
                    if ((this.ext_gas_tester_7 == user_id))
                    {
                        retVal = true;
                    }
                    break;
            }

            return retVal;
        }

        public bool isExtFO(UserEntity user, ListUser listUser, int extension)
        {
            var retVal = false;
            string user_id = user.id.ToString();
            int foId = 0;
            UserEntity fo = null;
            List<UserEntity> listDel;
            switch (extension)
            {
                case 1:
                    Int32.TryParse(this.ext_fo_1, out foId);
                    break;
                case 2:
                    Int32.TryParse(this.ext_fo_2, out foId);
                    break;
                case 3:
                    Int32.TryParse(this.ext_fo_3, out foId);
                    break;
                case 4:
                    Int32.TryParse(this.ext_fo_4, out foId);
                    break;
                case 5:
                    Int32.TryParse(this.ext_fo_5, out foId);
                    break;
                case 6:
                    Int32.TryParse(this.ext_fo_6, out foId);
                    break;
                case 7:
                    Int32.TryParse(this.ext_fo_7, out foId);
                    break;
            }

            if (foId != 0)
            {
                fo = listUser.listUser.Find(p => p.id == foId);
                listDel = fo.GetDelegateFO(user, listUser);
                if ((this.ext_fo_7 == user_id || (fo.employee_delegate != null && fo.employee_delegate.ToString() == user_id)))
                {
                    retVal = true;
                }
                else if (listDel.Exists(p => p.id == user.id))
                {
                    retVal = true;
                }
            }

            return retVal;
        }

        public bool isCanEdit(UserEntity user, ListUser listUser)
        {
            bool isCanEdit = false;
            if (this.ptw.is_guest == 1)
            {
                if (isAccSupervisor(user, listUser) && this.status < (int)CsepStatus.ACCWORKLEADER)
                {
                    isCanEdit = true;
                }
            }
            else
            {
                if (isWorkLeader(user, listUser) && this.status < (int)CsepStatus.ACCWORKLEADER)
                {
                    isCanEdit = true;
                }
            }

            if (isAccSupervisor(user, listUser) && (this.status == (int)CsepStatus.CREATE || this.status == (int)CsepStatus.ACCWORKLEADER))
            {
                isCanEdit = true;
            }

            //if (isAccFireWatch(user) && this.status == (int)CsepStatus.ACCSPV)
            //{
            //    isCanEdit = true;
            //}

            if (isAccFO(user, listUser) && this.status == (int)CsepStatus.ACCSPV || this.status == (int)CsepStatus.SPVSCREENING)
            {
                isCanEdit = true;
            }

            if ((isAccGasTester(user, listUser) || isAccFO(user, listUser)) && this.status == (int)CsepStatus.FOSCREENING)
            {
                isCanEdit = true;
            }

            if (this.id == 0)
            {
                isCanEdit = true;
            }

            return isCanEdit;
        }

        public bool isCanEditExt(UserEntity user, ListUser listUser, int extension)
        {
            bool isCanEdit = false;
            if (this.ptw.is_guest == 1)
            {
                if (isAccSupervisor(user, listUser))
                {
                    switch (extension)
                    {
                        case 1:
                            if (this.status < (int)CsepStatus.EXTACCWORKLEADER1 && this.status >= (int)CsepStatus.EXTCREATE1)
                            {
                                isCanEdit = true;
                            }
                            break;
                        case 2:
                            if (this.status < (int)CsepStatus.EXTACCWORKLEADER2 && this.status >= (int)CsepStatus.EXTCREATE2)
                            {
                                isCanEdit = true;
                            }
                            break;
                        case 3:
                            if (this.status < (int)CsepStatus.EXTACCWORKLEADER3 && this.status >= (int)CsepStatus.EXTCREATE3)
                            {
                                isCanEdit = true;
                            }
                            break;
                        case 4:
                            if (this.status < (int)CsepStatus.EXTACCWORKLEADER4 && this.status >= (int)CsepStatus.EXTCREATE4)
                            {
                                isCanEdit = true;
                            }
                            break;
                        case 5:
                            if (this.status < (int)CsepStatus.EXTACCWORKLEADER5 && this.status >= (int)CsepStatus.EXTCREATE5)
                            {
                                isCanEdit = true;
                            }
                            break;
                        case 6:
                            if (this.status < (int)CsepStatus.EXTACCWORKLEADER6 && this.status >= (int)CsepStatus.EXTCREATE6)
                            {
                                isCanEdit = true;
                            }
                            break;
                        case 7:
                            if (this.status < (int)CsepStatus.EXTACCWORKLEADER7 && this.status >= (int)CsepStatus.EXTCREATE7)
                            {
                                isCanEdit = true;
                            }
                            break;
                    }

                }
            }
            else
            {
                if (isWorkLeader(user, listUser))
                {
                    switch (extension)
                    {
                        case 1:
                            if (this.status < (int)CsepStatus.EXTACCWORKLEADER1 && this.status >= (int)CsepStatus.EXTCREATE1)
                            {
                                isCanEdit = true;
                            }
                            break;
                        case 2:
                            if (this.status < (int)CsepStatus.EXTACCWORKLEADER2 && this.status >= (int)CsepStatus.EXTCREATE2)
                            {
                                isCanEdit = true;
                            }
                            break;
                        case 3:
                            if (this.status < (int)CsepStatus.EXTACCWORKLEADER3 && this.status >= (int)CsepStatus.EXTCREATE3)
                            {
                                isCanEdit = true;
                            }
                            break;
                        case 4:
                            if (this.status < (int)CsepStatus.EXTACCWORKLEADER4 && this.status >= (int)CsepStatus.EXTCREATE4)
                            {
                                isCanEdit = true;
                            }
                            break;
                        case 5:
                            if (this.status < (int)CsepStatus.EXTACCWORKLEADER5 && this.status >= (int)CsepStatus.EXTCREATE5)
                            {
                                isCanEdit = true;
                            }
                            break;
                        case 6:
                            if (this.status < (int)CsepStatus.EXTACCWORKLEADER6 && this.status >= (int)CsepStatus.EXTCREATE6)
                            {
                                isCanEdit = true;
                            }
                            break;
                        case 7:
                            if (this.status < (int)CsepStatus.EXTACCWORKLEADER7 && this.status >= (int)CsepStatus.EXTCREATE7)
                            {
                                isCanEdit = true;
                            }
                            break;
                    }

                }
            }

            if (isExtFO(user, listUser, extension))
            {
                switch (extension)
                {
                    case 1:
                        if (this.status == (int)CsepStatus.EXTACCWORKLEADER1 || this.status == (int)CsepStatus.EXTCREATE1 || this.status == (int)CsepStatus.EXTFOSCREENING1)
                        {
                            isCanEdit = true;
                        }
                        break;
                    case 2:
                        if (this.status == (int)CsepStatus.EXTACCWORKLEADER2 || this.status == (int)CsepStatus.EXTCREATE2 || this.status == (int)CsepStatus.EXTFOSCREENING2)
                        {
                            isCanEdit = true;
                        }
                        break;
                    case 3:
                        if (this.status == (int)CsepStatus.EXTACCWORKLEADER3 || this.status == (int)CsepStatus.EXTCREATE3 || this.status == (int)CsepStatus.EXTFOSCREENING3)
                        {
                            isCanEdit = true;
                        }
                        break;
                    case 4:
                        if (this.status == (int)CsepStatus.EXTACCWORKLEADER4 || this.status == (int)CsepStatus.EXTCREATE4 || this.status == (int)CsepStatus.EXTFOSCREENING4)
                        {
                            isCanEdit = true;
                        }
                        break;
                    case 5:
                        if (this.status == (int)CsepStatus.EXTACCWORKLEADER5 || this.status == (int)CsepStatus.EXTCREATE5 || this.status == (int)CsepStatus.EXTFOSCREENING5)
                        {
                            isCanEdit = true;
                        }
                        break;
                    case 6:
                        if (this.status == (int)CsepStatus.EXTACCWORKLEADER6 || this.status == (int)CsepStatus.EXTCREATE6 || this.status == (int)CsepStatus.EXTFOSCREENING6)
                        {
                            isCanEdit = true;
                        }
                        break;
                    case 7:
                        if (this.status == (int)CsepStatus.EXTACCWORKLEADER7 || this.status == (int)CsepStatus.EXTCREATE7 || this.status == (int)CsepStatus.EXTFOSCREENING7)
                        {
                            isCanEdit = true;
                        }
                        break;
                }
            }

            if (isExtGasTester(user, listUser, extension))
            {
                switch (extension)
                {
                    case 1:
                        if (this.status == (int)CsepStatus.EXTFOSCREENING1)
                        {
                            isCanEdit = true;
                        }
                        break;
                    case 2:
                        if (this.status == (int)CsepStatus.EXTFOSCREENING2)
                        {
                            isCanEdit = true;
                        }
                        break;
                    case 3:
                        if (this.status == (int)CsepStatus.EXTFOSCREENING3)
                        {
                            isCanEdit = true;
                        }
                        break;
                    case 4:
                        if (this.status == (int)CsepStatus.EXTFOSCREENING4)
                        {
                            isCanEdit = true;
                        }
                        break;
                    case 5:
                        if (this.status == (int)CsepStatus.EXTFOSCREENING5)
                        {
                            isCanEdit = true;
                        }
                        break;
                    case 6:
                        if (this.status == (int)CsepStatus.EXTFOSCREENING6)
                        {
                            isCanEdit = true;
                        }
                        break;
                    case 7:
                        if (this.status == (int)CsepStatus.EXTFOSCREENING7)
                        {
                            isCanEdit = true;
                        }
                        break;
                }
            }

            return isCanEdit;
        }

        public bool isCloseCSEP()
        {
            return this.status >= (int)CsepStatus.CANCEL;
        }

        public int assignSupervisor(UserEntity supervisor)
        {
            this.acc_supervisor = supervisor.id.ToString();
            this.can_supervisor = supervisor.id.ToString();
            this.acc_supervisor_delegate = supervisor.employee_delegate.ToString();
            this.can_supervisor_delegate = supervisor.employee_delegate.ToString();

            confined_space csep = this.db.confined_space.Find(this.id);
            csep.acc_supervisor = this.acc_supervisor;
            csep.can_supervisor = this.can_supervisor;
            csep.acc_supervisor_delegate = this.acc_supervisor_delegate;
            csep.can_supervisor_delegate = this.can_supervisor_delegate;

            this.db.Entry(csep).State = EntityState.Modified;

            return this.db.SaveChanges();
        }

        public int assignFireWatch(UserEntity assessor)
        {
            this.acc_fire_watch = assessor.id.ToString();
            this.can_fire_watch = assessor.id.ToString();
            this.acc_fire_watch_delegate = assessor.employee_delegate.ToString();
            this.can_fire_watch_delegate = assessor.employee_delegate.ToString();

            confined_space csep = this.db.confined_space.Find(this.id);
            csep.acc_fire_watch = this.acc_fire_watch;
            csep.can_fire_watch = this.can_fire_watch;
            csep.acc_fire_watch_delegate = this.acc_fire_watch_delegate;
            csep.can_fire_watch_delegate = this.can_fire_watch_delegate;

            this.db.Entry(csep).State = EntityState.Modified;

            return this.db.SaveChanges();
        }

        public int assignGasTester(UserEntity gasTester)
        {
            this.acc_gas_tester = gasTester.id.ToString();

            confined_space csep = this.db.confined_space.Find(this.id);
            csep.acc_gas_tester = this.acc_gas_tester;

            this.db.Entry(csep).State = EntityState.Modified;

            return this.db.SaveChanges();
        }

        public int assignExtGasTester(UserEntity gasTester, int status)
        {
            confined_space csep = this.db.confined_space.Find(this.id);
            switch (status)
            {
                case (int)CsepStatus.EXTFOSCREENING1:
                    this.ext_gas_tester_1 = gasTester.id.ToString();
                    csep.ext_gas_tester_1 = this.ext_gas_tester_1;

                    this.db.Entry(csep).State = EntityState.Modified;
                    break;
                case (int)CsepStatus.EXTFOSCREENING2:
                    this.ext_gas_tester_2 = gasTester.id.ToString();
                    csep.ext_gas_tester_2 = this.ext_gas_tester_2;

                    this.db.Entry(csep).State = EntityState.Modified;
                    break;
                case (int)CsepStatus.EXTFOSCREENING3:
                    this.ext_gas_tester_3 = gasTester.id.ToString();
                    csep.ext_gas_tester_3 = this.ext_gas_tester_3;

                    this.db.Entry(csep).State = EntityState.Modified;
                    break;
                case (int)CsepStatus.EXTFOSCREENING4:
                    this.ext_gas_tester_4 = gasTester.id.ToString();
                    csep.ext_gas_tester_4 = this.ext_gas_tester_4;

                    this.db.Entry(csep).State = EntityState.Modified;
                    break;
                case (int)CsepStatus.EXTFOSCREENING5:
                    this.ext_gas_tester_5 = gasTester.id.ToString();
                    csep.ext_gas_tester_5 = this.ext_gas_tester_5;

                    this.db.Entry(csep).State = EntityState.Modified;
                    break;
                case (int)CsepStatus.EXTFOSCREENING6:
                    this.ext_gas_tester_6 = gasTester.id.ToString();
                    csep.ext_gas_tester_6 = this.ext_gas_tester_6;

                    this.db.Entry(csep).State = EntityState.Modified;
                    break;
                case (int)CsepStatus.EXTFOSCREENING7:
                    this.ext_gas_tester_7 = gasTester.id.ToString();
                    csep.ext_gas_tester_7 = this.ext_gas_tester_7;

                    this.db.Entry(csep).State = EntityState.Modified;
                    break;
            }

            return this.db.SaveChanges();
        }

        public int assignExtWorkLeader(int status)
        {
            if (status == (int)CsepStatus.EXTCREATE1)
            {
                this.ext_work_leader_1 = this.work_leader;

                confined_space csep = this.db.confined_space.Find(this.id);
                csep.ext_work_leader_1 = this.ext_work_leader_1;

                this.db.Entry(csep).State = EntityState.Modified;

                return this.db.SaveChanges();
            }
            else if (status == (int)CsepStatus.EXTCREATE2)
            {
                this.ext_work_leader_2 = this.work_leader;

                confined_space csep = this.db.confined_space.Find(this.id);
                csep.ext_work_leader_2 = this.ext_work_leader_2;

                this.db.Entry(csep).State = EntityState.Modified;

                return this.db.SaveChanges();
            }
            else if (status == (int)CsepStatus.EXTCREATE3)
            {
                this.ext_work_leader_3 = this.work_leader;

                confined_space csep = this.db.confined_space.Find(this.id);
                csep.ext_work_leader_3 = this.ext_work_leader_3;

                this.db.Entry(csep).State = EntityState.Modified;

                return this.db.SaveChanges();
            }
            else if (status == (int)CsepStatus.EXTCREATE4)
            {
                this.ext_work_leader_4 = this.work_leader;

                confined_space csep = this.db.confined_space.Find(this.id);
                csep.ext_work_leader_4 = this.ext_work_leader_4;

                this.db.Entry(csep).State = EntityState.Modified;

                return this.db.SaveChanges();
            }
            else if (status == (int)CsepStatus.EXTCREATE5)
            {
                this.ext_work_leader_5 = this.work_leader;

                confined_space csep = this.db.confined_space.Find(this.id);
                csep.ext_work_leader_5 = this.ext_work_leader_5;

                this.db.Entry(csep).State = EntityState.Modified;

                return this.db.SaveChanges();
            }
            else if (status == (int)CsepStatus.EXTCREATE6)
            {
                this.ext_work_leader_6 = this.work_leader;

                confined_space csep = this.db.confined_space.Find(this.id);
                csep.ext_work_leader_6 = this.ext_work_leader_6;

                this.db.Entry(csep).State = EntityState.Modified;

                return this.db.SaveChanges();
            }
            else if (status == (int)CsepStatus.EXTCREATE7)
            {
                this.ext_work_leader_7 = this.work_leader;

                confined_space csep = this.db.confined_space.Find(this.id);
                csep.ext_work_leader_7 = this.ext_work_leader_7;

                this.db.Entry(csep).State = EntityState.Modified;

                return this.db.SaveChanges();
            }

            return 0;
        }

        public bool isExistFO(UserEntity fo, int status)
        {
            if (status == (int)CsepStatus.SPVSCREENING)
            {
                return this.acc_fo != null;
            }
            else if (status == (int)CsepStatus.EXTCREATE1)
            {
                return this.ext_fo_1 != null;
            }
            else if (status == (int)CsepStatus.EXTCREATE2)
            {
                return this.ext_fo_2 != null;
            }
            else if (status == (int)CsepStatus.EXTCREATE3)
            {
                return this.ext_fo_3 != null;
            }
            else if (status == (int)CsepStatus.EXTCREATE4)
            {
                return this.ext_fo_4 != null;
            }
            else if (status == (int)CsepStatus.EXTCREATE5)
            {
                return this.ext_fo_5 != null;
            }
            else if (status == (int)CsepStatus.EXTCREATE6)
            {
                return this.ext_fo_6 != null;
            }
            else if (status == (int)CsepStatus.EXTCREATE7)
            {
                return this.ext_fo_7 != null;
            }
            else
            {
                return this.can_fo != null;
            }
        }

        public int assignFO(UserEntity fo, int status)
        {
            if (status == (int)CsepStatus.SPVSCREENING)
            {
                this.acc_fo = fo.id.ToString();
                this.acc_fo_delegate = fo.employee_delegate.ToString();

                confined_space csep = this.db.confined_space.Find(this.id);
                csep.acc_fo = this.acc_fo;
                csep.acc_fo_delegate = this.acc_fo_delegate;

                this.db.Entry(csep).State = EntityState.Modified;

                return this.db.SaveChanges();
            }
            else if (status == (int)CsepStatus.EXTCREATE1)
            {
                this.ext_fo_1 = fo.id.ToString();
                this.ext_fo_delegate_1 = fo.employee_delegate.ToString();

                confined_space csep = this.db.confined_space.Find(this.id);
                csep.ext_fo_1 = this.ext_fo_1;
                csep.ext_fo_delegate_1 = this.ext_fo_delegate_1;

                this.db.Entry(csep).State = EntityState.Modified;

                return this.db.SaveChanges();
            }
            else if (status == (int)CsepStatus.EXTCREATE2)
            {
                this.ext_fo_2 = fo.id.ToString();
                this.ext_fo_delegate_2 = fo.employee_delegate.ToString();

                confined_space csep = this.db.confined_space.Find(this.id);
                csep.ext_fo_2 = this.ext_fo_2;
                csep.ext_fo_delegate_2 = this.ext_fo_delegate_2;

                this.db.Entry(csep).State = EntityState.Modified;

                return this.db.SaveChanges();
            }
            else if (status == (int)CsepStatus.EXTCREATE3)
            {
                this.ext_fo_3 = fo.id.ToString();
                this.ext_fo_delegate_3 = fo.employee_delegate.ToString();

                confined_space csep = this.db.confined_space.Find(this.id);
                csep.ext_fo_3 = this.ext_fo_3;
                csep.ext_fo_delegate_3 = this.ext_fo_delegate_3;

                this.db.Entry(csep).State = EntityState.Modified;

                return this.db.SaveChanges();
            }
            else if (status == (int)CsepStatus.EXTCREATE4)
            {
                this.ext_fo_4 = fo.id.ToString();
                this.ext_fo_delegate_4 = fo.employee_delegate.ToString();

                confined_space csep = this.db.confined_space.Find(this.id);
                csep.ext_fo_4 = this.ext_fo_4;
                csep.ext_fo_delegate_4 = this.ext_fo_delegate_4;

                this.db.Entry(csep).State = EntityState.Modified;

                return this.db.SaveChanges();
            }
            else if (status == (int)CsepStatus.EXTCREATE5)
            {
                this.ext_fo_5 = fo.id.ToString();
                this.ext_fo_delegate_5 = fo.employee_delegate.ToString();

                confined_space csep = this.db.confined_space.Find(this.id);
                csep.ext_fo_5 = this.ext_fo_5;
                csep.ext_fo_delegate_5 = this.ext_fo_delegate_5;

                this.db.Entry(csep).State = EntityState.Modified;

                return this.db.SaveChanges();
            }
            else if (status == (int)CsepStatus.EXTCREATE6)
            {
                this.ext_fo_6 = fo.id.ToString();
                this.ext_fo_delegate_6 = fo.employee_delegate.ToString();

                confined_space csep = this.db.confined_space.Find(this.id);
                csep.ext_fo_6 = this.ext_fo_6;
                csep.ext_fo_delegate_6 = this.ext_fo_delegate_6;

                this.db.Entry(csep).State = EntityState.Modified;

                return this.db.SaveChanges();
            }
            else if (status == (int)CsepStatus.EXTCREATE7)
            {
                this.ext_fo_7 = fo.id.ToString();
                this.ext_fo_delegate_7 = fo.employee_delegate.ToString();

                confined_space csep = this.db.confined_space.Find(this.id);
                csep.ext_fo_7 = this.ext_fo_7;
                csep.ext_fo_delegate_7 = this.ext_fo_delegate_7;

                this.db.Entry(csep).State = EntityState.Modified;

                return this.db.SaveChanges();
            }
            else
            {
                this.can_fo = fo.id.ToString();
                this.can_fo_delegate = fo.employee_delegate.ToString();

                confined_space csep = this.db.confined_space.Find(this.id);
                csep.can_fo = this.can_fo;
                csep.can_fo_delegate = this.can_fo_delegate;

                this.db.Entry(csep).State = EntityState.Modified;

                return this.db.SaveChanges();
            }
        }

        public bool isUserInCSEP(UserEntity user, ListUser listUser)
        {
            return (isAccGasTester(user, listUser)
                || isExtGasTester(user, listUser, 1) || isExtGasTester(user, listUser, 2) || isExtGasTester(user, listUser, 3) || isExtGasTester(user, listUser, 4)
                || isExtGasTester(user, listUser, 5) || isExtGasTester(user, listUser, 6) || isExtGasTester(user, listUser, 7));
        }

        #endregion

        #region retVal

        public int setStatus(int status)
        {
            this.status = status;

            confined_space csep = this.db.confined_space.Find(this.id);
            csep.status = status;
            this.db.Entry(csep).State = EntityState.Modified;
            this.db.SaveChanges();

            return csep.status.Value;
        }

        public string getStatus()
        {
            string retVal = "";
            switch (this.status)
            {
                case (int)CsepStatus.CREATE: retVal = "Waiting for Supervisor Screening"; break;
                case (int)CsepStatus.SPVSCREENING: retVal = "Waiting for Facility Owner Screening"; break;
                case (int)CsepStatus.FOSCREENING: retVal = "Waiting for Gas Testing by Gas Tester"; break;
                case (int)CsepStatus.GASTESTER: retVal = "Waiting for Approval by Work Leader / PTW Requestor"; break;
                case (int)CsepStatus.ACCWORKLEADER: retVal = "Waiting for Approval by Supervisor"; break;
                case (int)CsepStatus.ACCSPV: retVal = "Waiting for Approval by Facility Owner"; break;
                case (int)CsepStatus.ACCFO: retVal = "Completed. Confined Space Entry Permit has been approved by Facility Owner"; break;
                case (int)CsepStatus.EXTCREATE1: retVal = "Confined Space Entry extended number 1. Waiting for Facility Owner Screening"; break;
                case (int)CsepStatus.EXTFOSCREENING1: retVal = "Waiting for Gas Testing by Gas Tester"; break;
                case (int)CsepStatus.EXTGASTESTER1: retVal = "Waiting for Approval by Work Leader"; break;
                case (int)CsepStatus.EXTACCWORKLEADER1: retVal = "Waiting for Approval by Facility Owner"; break;
                case (int)CsepStatus.EXTACCFO1: retVal = "Confined Space Entry extension number 1 has been approved by Facility Owner"; break;
                case (int)CsepStatus.EXTCREATE2: retVal = "Confined Space Entry extended number 2. Waiting for Facility Owner Screening"; break;
                case (int)CsepStatus.EXTFOSCREENING2: retVal = "Waiting for Gas Testing by Gas Tester"; break;
                case (int)CsepStatus.EXTGASTESTER2: retVal = "Waiting for Approval by Work Leader"; break;
                case (int)CsepStatus.EXTACCWORKLEADER2: retVal = "Waiting for Approval by Facility Owner"; break;
                case (int)CsepStatus.EXTACCFO2: retVal = "Confined Space Entry extension number 2 has been approved by Facility Owner"; break;
                case (int)CsepStatus.EXTCREATE3: retVal = "Confined Space Entry extended number 3. Waiting for Facility Owner Screening"; break;
                case (int)CsepStatus.EXTFOSCREENING3: retVal = "Waiting for Gas Testing by Gas Tester"; break;
                case (int)CsepStatus.EXTGASTESTER3: retVal = "Waiting for Approval by Work Leader"; break;
                case (int)CsepStatus.EXTACCWORKLEADER3: retVal = "Waiting for Approval by Facility Owner"; break;
                case (int)CsepStatus.EXTACCFO3: retVal = "Confined Space Entry extension number 3 has been approved by Facility Owner"; break;
                case (int)CsepStatus.EXTCREATE4: retVal = "Confined Space Entry extended number 4. Waiting for Facility Owner Screening"; break;
                case (int)CsepStatus.EXTFOSCREENING4: retVal = "Waiting for Gas Testing by Gas Tester"; break;
                case (int)CsepStatus.EXTGASTESTER4: retVal = "Waiting for Approval by Work Leader"; break;
                case (int)CsepStatus.EXTACCWORKLEADER4: retVal = "Waiting for Approval by Facility Owner"; break;
                case (int)CsepStatus.EXTACCFO4: retVal = "Confined Space Entry extension number 4 has been approved by Facility Owner"; break;
                case (int)CsepStatus.EXTCREATE5: retVal = "Confined Space Entry extended number 5. Waiting for Facility Owner Screening"; break;
                case (int)CsepStatus.EXTFOSCREENING5: retVal = "Waiting for Gas Testing by Gas Tester"; break;
                case (int)CsepStatus.EXTGASTESTER5: retVal = "Waiting for Approval by Work Leader"; break;
                case (int)CsepStatus.EXTACCWORKLEADER5: retVal = "Waiting for Approval by Facility Owner"; break;
                case (int)CsepStatus.EXTACCFO5: retVal = "Confined Space Entry extension number 5 has been approved by Facility Owner"; break;
                case (int)CsepStatus.EXTCREATE6: retVal = "Confined Space Entry extended number 6. Waiting for Facility Owner Screening"; break;
                case (int)CsepStatus.EXTFOSCREENING6: retVal = "Waiting for Gas Testing by Gas Tester"; break;
                case (int)CsepStatus.EXTGASTESTER6: retVal = "Waiting for Approval by Work Leader"; break;
                case (int)CsepStatus.EXTACCWORKLEADER6: retVal = "Waiting for Approval by Facility Owner"; break;
                case (int)CsepStatus.EXTACCFO6: retVal = "Confined Space Entry extension number 6 has been approved by Facility Owner"; break;
                case (int)CsepStatus.EXTCREATE7: retVal = "Confined Space Entry extended number 7. Waiting for Facility Owner Screening"; break;
                case (int)CsepStatus.EXTFOSCREENING7: retVal = "Waiting for Gas Testing by Gas Tester"; break;
                case (int)CsepStatus.EXTGASTESTER7: retVal = "Waiting for Approval by Work Leader"; break;
                case (int)CsepStatus.EXTACCWORKLEADER7: retVal = "Waiting for Approval by Facility Owner"; break;
                case (int)CsepStatus.EXTACCFO7: retVal = "Confined Space Entry extension number 7 has been approved by Facility Owner"; break;
                case (int)CsepStatus.CANCEL: retVal = "Confined Space Entry Permit has been Closed. Waiting for Approval by Work Leader"; break;
                case (int)CsepStatus.CANWORKLEADER: retVal = "Confined Space Entry Permit has been Closed. Waiting for Approval by Supervisor"; break;
                case (int)CsepStatus.CANSPV: retVal = "Waiting for Closing Approval by Facility Owner"; break;
                case (int)CsepStatus.CANFO: retVal = "Closed. Confined Space Entry Permit has been approved to closing by Facility Owner"; break;
            };

            return retVal;
        }

        #endregion

        public string closeCsep(UserEntity user)
        {
            if ((!is_guest || user.id.ToString() != this.acc_supervisor) && user.id.ToString() != this.work_leader)
            {
                return "400";
            }
            else
            {
                confined_space csep = this.db.confined_space.Find(this.id);
                this.status = (int)CsepStatus.CANCEL;

                csep.status = this.status;
                this.db.Entry(csep).State = EntityState.Modified;
                this.db.SaveChanges();

                requestorCan(user);

                return "200";
            }
        }

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
                this.hira_no = this.hira_no.Substring(2);
                return this.hira_no;
            }
        }

        public string generateRandomPIN()
        {
            Random rnd = new Random();
            int card = rnd.Next(1001, 9999);

            this.random_pin = card.ToString().PadLeft(4, '0');
            return this.random_pin;
        }

        #region send email

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
#if !DEBUG
                    s.Add(fo.email);
#else
                    s.Add("septu.jamasoka@gmail.com"); // email FO
#endif
                    if (fo.employee_delegate != null)
                    {
                        UserEntity del = new UserEntity(fo.employee_delegate.Value, token, user);
#if !DEBUG
                        s.Add(del.email);
#else
                        s.Add("septu.jamasoka@gmail.com"); // email FO
#endif
                    }

                    string encodedValue = this.status + salt + fo.id + val + this.id;
                    string encodedElement = Base64.Base64Encode(encodedValue);

                    string seal = Base64.MD5Seal(timestamp + salt + val);

                    string message = serverUrl + "Csep/SetFacilityOwner?a=" + timestamp + "&b=" + seal + "&c=" + encodedElement;

                    sendEmail.Send(s, message, "Confined Space Entry Permit Facility Owner");
                }
            }

            return "200";
        }

        public string sendEmailRandomPIN(string serverUrl, string token, UserEntity user)
        {
            UserEntity requestor = is_guest ? new UserEntity(Int32.Parse(this.acc_supervisor), token, user) : new UserEntity(Int32.Parse(this.work_leader), token, user);
            SendEmail sendEmail = new SendEmail();
            List<string> s = new List<string>();
#if !DEBUG
            s.Add(requestor.email);
#else
            s.Add("septu.jamasoka@gmail.com"); // email FO
#endif

            string message = this.random_pin;
            string subject = "PIN for Approving as Requestor";

            sendEmail.Send(s, message, subject);
            return "200";
        }

        public string sendEmailGasTester(string serverUrl, string token, UserEntity user, int extension)
        {
            if (extension == 0)
            {
                UserEntity gasTester = new UserEntity(Int32.Parse(this.acc_gas_tester), token, user);
                SendEmail sendEmail = new SendEmail();
                List<string> s = new List<string>();
                List<int> userId = new List<int>();
#if !DEBUG
                s.Add(gasTester.email);
                userId.Add(gasTester.id);
#else
                s.Add("septu.jamasoka@gmail.com"); // email FO
                userId.Add(gasTester.id);
#endif

                string message = serverUrl + "Home?p=Csep/edit/" + this.id;

                sendEmail.Send(s, message, "Assigned as Confined Space Entry Permit (" + this.csep_no + ") Gas Tester");
                sendEmail.SendToNotificationCenter(userId, "Confined Space Entry Permit", "Please gas test and submit the result for Confined Space Permit No. " + this.csep_no, serverUrl + "Home?p=Csep/edit/" + this.id);//create node
                // create node
                workflowNodeService.CreateNode(this.id, WorkflowNodeServiceModel.DocumentType.CSEP.ToString(),
                    WorkflowNodeServiceModel.CSEPNodeName.FACILITY_OWNER_SCREENING.ToString(), (byte)WorkflowNodeServiceModel.NodeStatus.APPROVED);
            }
            else if (extension == 1)
            {
                UserEntity gasTester = new UserEntity(Int32.Parse(this.ext_gas_tester_1), token, user);
                SendEmail sendEmail = new SendEmail();
                List<string> s = new List<string>();
                List<int> userId = new List<int>();
#if !DEBUG
                s.Add(gasTester.email);
                userId.Add(gasTester.id);
#else
                s.Add("septu.jamasoka@gmail.com"); // email FO
                userId.Add(gasTester.id);
#endif

                string message = serverUrl + "Home?p=Csep/edit/" + this.id;

                sendEmail.Send(s, message, "Assigned as Confined Space Entry Permit (" + this.csep_no + ") Gas Tester");
                sendEmail.SendToNotificationCenter(userId, "Confined Space Entry Permit", "Please gas test and submit the result for Confined Space Permit No. " + this.csep_no, serverUrl + "Home?p=Csep/edit/" + this.id);
            }
            else if (extension == 2)
            {
                UserEntity gasTester = new UserEntity(Int32.Parse(this.ext_gas_tester_2), token, user);
                SendEmail sendEmail = new SendEmail();
                List<string> s = new List<string>();
                List<int> userId = new List<int>();
#if !DEBUG
                s.Add(gasTester.email);
                userId.Add(gasTester.id);
#else
                s.Add("septu.jamasoka@gmail.com"); // email FO
                userId.Add(gasTester.id);
#endif

                string message = serverUrl + "Home?p=Csep/edit/" + this.id;

                sendEmail.Send(s, message, "Assigned as Confined Space Entry Permit (" + this.csep_no + ") Gas Tester");
                sendEmail.SendToNotificationCenter(userId, "Confined Space Entry Permit", "Please gas test and submit the result for Confined Space Permit No. " + this.csep_no, serverUrl + "Home?p=Csep/edit/" + this.id);
            }
            else if (extension == 3)
            {
                UserEntity gasTester = new UserEntity(Int32.Parse(this.ext_gas_tester_3), token, user);
                SendEmail sendEmail = new SendEmail();
                List<string> s = new List<string>();
                List<int> userId = new List<int>();
#if !DEBUG
                s.Add(gasTester.email);
                userId.Add(gasTester.id);
#else
                s.Add("septu.jamasoka@gmail.com"); // email FO
                userId.Add(gasTester.id);
#endif

                string message = serverUrl + "Home?p=Csep/edit/" + this.id;

                sendEmail.Send(s, message, "Assigned as Confined Space Entry Permit (" + this.csep_no + ") Gas Tester");
                sendEmail.SendToNotificationCenter(userId, "Confined Space Entry Permit", "Please gas test and submit the result for Confined Space Permit No. " + this.csep_no, serverUrl + "Home?p=Csep/edit/" + this.id);
            }
            else if (extension == 4)
            {
                UserEntity gasTester = new UserEntity(Int32.Parse(this.ext_gas_tester_4), token, user);
                SendEmail sendEmail = new SendEmail();
                List<string> s = new List<string>();
                List<int> userId = new List<int>();
#if !DEBUG
                s.Add(gasTester.email);
                userId.Add(gasTester.id);
#else
                s.Add("septu.jamasoka@gmail.com"); // email FO
                userId.Add(gasTester.id);
#endif

                string message = serverUrl + "Home?p=Csep/edit/" + this.id;

                sendEmail.Send(s, message, "Assigned as Confined Space Entry Permit (" + this.csep_no + ") Gas Tester");
                sendEmail.SendToNotificationCenter(userId, "Confined Space Entry Permit", "Please gas test and submit the result for Confined Space Permit No. " + this.csep_no, serverUrl + "Home?p=Csep/edit/" + this.id);
            }
            else if (extension == 5)
            {
                UserEntity gasTester = new UserEntity(Int32.Parse(this.ext_gas_tester_5), token, user);
                SendEmail sendEmail = new SendEmail();
                List<string> s = new List<string>();
                List<int> userId = new List<int>();
#if !DEBUG
                s.Add(gasTester.email);
                userId.Add(gasTester.id);
#else
                s.Add("septu.jamasoka@gmail.com"); // email FO
                userId.Add(gasTester.id);
#endif

                string message = serverUrl + "Home?p=Csep/edit/" + this.id;

                sendEmail.Send(s, message, "Assigned as Confined Space Entry Permit (" + this.csep_no + ") Gas Tester");
                sendEmail.SendToNotificationCenter(userId, "Confined Space Entry Permit", "Please gas test and submit the result for Confined Space Permit No. " + this.csep_no, serverUrl + "Home?p=Csep/edit/" + this.id);
            }
            else if (extension == 6)
            {
                UserEntity gasTester = new UserEntity(Int32.Parse(this.ext_gas_tester_6), token, user);
                SendEmail sendEmail = new SendEmail();
                List<string> s = new List<string>();
                List<int> userId = new List<int>();
#if !DEBUG
                s.Add(gasTester.email);
                userId.Add(gasTester.id);
#else
                s.Add("septu.jamasoka@gmail.com"); // email FO
                userId.Add(gasTester.id);
#endif

                string message = serverUrl + "Home?p=Csep/edit/" + this.id;

                sendEmail.Send(s, message, "Assigned as Confined Space Entry Permit (" + this.csep_no + ") Gas Tester");
                sendEmail.SendToNotificationCenter(userId, "Confined Space Entry Permit", "Please gas test and submit the result for Confined Space Permit No. " + this.csep_no, serverUrl + "Home?p=Csep/edit/" + this.id);
            }
            else if (extension == 7)
            {
                UserEntity gasTester = new UserEntity(Int32.Parse(this.ext_gas_tester_7), token, user);
                SendEmail sendEmail = new SendEmail();
                List<string> s = new List<string>();
                List<int> userId = new List<int>();
#if !DEBUG
                s.Add(gasTester.email);
                userId.Add(gasTester.id);
#else
                s.Add("septu.jamasoka@gmail.com"); // email FO
                userId.Add(gasTester.id);
#endif

                string message = serverUrl + "Home?p=Csep/edit/" + this.id;

                sendEmail.Send(s, message, "Assigned as Confined Space Entry Permit (" + this.csep_no + ") Gas Tester");
                sendEmail.SendToNotificationCenter(userId, "Confined Space Entry Permit", "Please gas test and submit the result for Confined Space Permit No. " + this.csep_no, serverUrl + "Home?p=Csep/edit/" + this.id);
            }

            return "200";
        }

        public string sendEmailRequestor(string serverUrl, string token, UserEntity user, int extension, int stat = 0, int cancel = 0, string comment = null)
        {
            //if (extension == 0)
            //{
            UserEntity requestor = is_guest ? new UserEntity(Int32.Parse(this.acc_supervisor), token, user) : new UserEntity(Int32.Parse(this.work_leader), token, user);
            UserEntity spv = new UserEntity(Int32.Parse(this.acc_supervisor), token, user);
            SendEmail sendEmail = new SendEmail();
            List<string> s = new List<string>();
            List<int> userId = new List<int>();
#if !DEBUG
            if (!is_guest) {
                s.Add(requestor.email);
                userId.Add(requestor.id);
            }
            if (cancel == 0)
            {
                s.Add(spv.email);
                userId.Add(spv.id);
            }
#else
            s.Add("septu.jamasoka@gmail.com"); // email FO
            userId.Add(requestor.id);
#endif

            string message = "";
            string subject = "";
            if (stat == 0)
            {
                message = serverUrl + "Home?p=Csep/edit/" + this.id;
                subject = "Confined Space Entry Permit Requestor Approve";
                if (cancel == 0)
                {
                    sendEmail.SendToNotificationCenter(userId, "Confined Space Entry Permit", "Please Approve Confined Space Permit No. " + this.csep_no, serverUrl + "Home?p=Csep/edit/" + this.id);
                }
                else if (cancel == 1)
                {
                    sendEmail.SendToNotificationCenter(userId, "Confined Space Entry Permit", "Please Approve Cancellation of Confined Space Permit No. " + this.csep_no, serverUrl + "Home?p=Csep/edit/" + this.id);
                }
            }
            else if (stat == 1)
            {
                message = serverUrl + "Home?p=Csep/edit/" + this.id + "<br />" + comment;
                subject = "Confined Space Entry Permit Approval Rejection";
                if (cancel == 0)
                {
                    sendEmail.SendToNotificationCenter(userId, "Confined Space Entry Permit", "Confined Space Entry Permit No. " + this.csep_no + "is rejected with comment: " + comment, serverUrl + "Home?p=Csep/edit/" + this.id);//create node
                }
                else if (cancel == 1)
                {
                    sendEmail.SendToNotificationCenter(userId, "Confined Space Entry Permit", "Cancellation of Confined Space Entry Permit No. " + this.csep_no + "is rejected with comment: " + comment, serverUrl + "Home?p=Csep/edit/" + this.id);
                }
            }

            sendEmail.Send(s, message, subject);
            //}

            return "200";
        }

        public string sendEmailSupervisor(string serverUrl, string token, UserEntity user, int stat = 0, int cancel = 0, string comment = null)
        {
            UserEntity supervisor = new UserEntity(Int32.Parse(this.acc_supervisor), token, user);
            SendEmail sendEmail = new SendEmail();
            List<string> s = new List<string>();
            List<int> userId = new List<int>();
#if !DEBUG
            s.Add(supervisor.email);
#else
            s.Add("septu.jamasoka@gmail.com"); // email FO
#endif
            userId.Add(supervisor.id);

            if (supervisor.employee_delegate != null)
            {
                UserEntity del = new UserEntity(supervisor.employee_delegate.Value, token, user);
#if !DEBUG
                s.Add(del.email);
#else
                s.Add("septu.jamasoka@gmail.com"); // email FO
#endif
                userId.Add(del.id);
            }

            string message = "";
            string subject = "";
            if (stat == 0)
            {
                message = serverUrl + "Home?p=Csep/edit/" + this.id;
                subject = "Confined Space Entry Permit Supervisor Approve";
                if (cancel == 0)
                {
                    sendEmail.SendToNotificationCenter(userId, "Confined Space Entry Permit", "Please Approve Confined Space Permit No. " + this.csep_no, serverUrl + "Home?p=Csep/edit/" + this.id);
                }
                else if (cancel == 1)
                {
                    sendEmail.SendToNotificationCenter(userId, "Confined Space Entry Permit", "Please Approve Cancellation Confined Space Permit No. " + this.csep_no, serverUrl + "Home?p=Csep/edit/" + this.id);
                }
            }
            else if (stat == 1)
            {
                message = serverUrl + "Home?p=Csep/edit/" + this.id + "<br />" + comment;
                subject = "Confined Space Entry Permit Approval Rejection";
                if (cancel == 0)
                {
                    sendEmail.SendToNotificationCenter(userId, "Confined Space Entry Permit", "Confined Space Entry Permit No. " + this.csep_no + "is rejected with comment: " + comment, serverUrl + "Home?p=Csep/edit/" + this.id);
                }
                else if (cancel == 1)
                {
                    sendEmail.SendToNotificationCenter(userId, "Confined Space Entry Permit", "Cancellation of Confined Space Entry Permit No. " + this.csep_no + "is rejected with comment: " + comment, serverUrl + "Home?p=Csep/edit/" + this.id);
                }
            }

            sendEmail.Send(s, message, subject);

            return "200";
        }

        public string sendEmailSupervisorScreening(string serverUrl, string token, UserEntity user)
        {
            UserEntity supervisor = new UserEntity(Int32.Parse(this.acc_supervisor), token, user);
            SendEmail sendEmail = new SendEmail();
            List<string> s = new List<string>();
            List<int> userId = new List<int>();
#if (!DEBUG)
            s.Add(supervisor.email);
#else
            s.Add("septu.jamasoka@gmail.com");
#endif
            userId.Add(supervisor.id);

            if (supervisor.employee_delegate != null)
            {
                UserEntity del = new UserEntity(supervisor.employee_delegate.Value, token, user);
#if (!DEBUG)
                s.Add(del.email);
#else
                s.Add("septu.jamasoka@gmail.com");
#endif
                userId.Add(del.id);
            }

            string message = "";
            string subject = "";
            message = serverUrl + "Home?p=Csep/edit/" + this.id;
            subject = "Confined Space Entry Permit Supervisor Screening";

            //notification
            sendEmail.SendToNotificationCenter(userId, "Confined Space Entry Permit", "Please Screening Confined Space Entry Permit No. " + this.csep_no, serverUrl + "Home?p=Csep/edit/" + this.id);
            // create node
            workflowNodeService.CreateNode(this.id, WorkflowNodeServiceModel.DocumentType.CSEP.ToString(),
                WorkflowNodeServiceModel.CSEPNodeName.REQUESTOR_INPUT.ToString(), (byte)WorkflowNodeServiceModel.NodeStatus.APPROVED);

            sendEmail.Send(s, message, subject);

            return "200";
        }

        public string sendEmailFOScreening(string serverUrl, string token, UserEntity user)
        {
            UserEntity fOAcc = new UserEntity(Int32.Parse(this.acc_fo), token, user);
            SendEmail sendEmail = new SendEmail();
            List<string> s = new List<string>();
            List<int> userId = new List<int>();
#if (!DEBUG)
            s.Add(fOAcc.email);
#else
            s.Add("septu.jamasoka@gmail.com");
#endif
            userId.Add(fOAcc.id);

            if (fOAcc.employee_delegate != null)
            {
                UserEntity del = new UserEntity(fOAcc.employee_delegate.Value, token, user);
#if (!DEBUG)
                s.Add(del.email);
#else
                s.Add("septu.jamasoka@gmail.com");
#endif
                userId.Add(del.id);
            }
            List<UserEntity> listDel = fOAcc.GetDelegateFO(user);
            foreach (UserEntity u in listDel)
            {
#if (!DEBUG)
                s.Add(u.email);
#else
                s.Add("septu.jamasoka@gmail.com");
#endif
                userId.Add(u.id);
            }

            string message = serverUrl + "Home?p=Csep/edit/" + this.id;

            sendEmail.Send(s, message, "Confined Space Entry Permit Facility Owner Screening");
            sendEmail.SendToNotificationCenter(userId, "Confined Space Entry Permit", "Please Screening Confined Space Entry Permit No. " + this.csep_no, serverUrl + "Home?p=Csep/edit/" + this.id);
            // create node
            workflowNodeService.CreateNode(this.id, WorkflowNodeServiceModel.DocumentType.CSEP.ToString(),
                WorkflowNodeServiceModel.CSEPNodeName.SUPERVISOR_SCREENING.ToString(), (byte)WorkflowNodeServiceModel.NodeStatus.APPROVED);

            return "200";
        }

        public string sendEmailFireWatch(string serverUrl, string token, UserEntity user, int stat = 0, string comment = null)
        {
            UserEntity fireWatch = new UserEntity(Int32.Parse(this.acc_fire_watch), token, user);
            SendEmail sendEmail = new SendEmail();
            List<string> s = new List<string>();
            List<int> userId = new List<int>();
#if !DEBUG
            s.Add(fireWatch.email);
#else
            s.Add("septu.jamasoka@gmail.com"); // email FO
#endif
            userId.Add(fireWatch.id);

            if (fireWatch.employee_delegate != null)
            {
                UserEntity del = new UserEntity(fireWatch.employee_delegate.Value, token, user);
#if !DEBUG
                s.Add(del.email);
#else
                s.Add("septu.jamasoka@gmail.com"); // email FO
#endif
                userId.Add(del.id);
            }

            string message = "";
            string subject = "";
            if (stat == 0)
            {
                message = serverUrl + "Home?p=Csep/edit/" + this.id;
                subject = "Confined Space Entry Permit Fire Watch Approve Approve";
                sendEmail.SendToNotificationCenter(userId, "Confined Space Entry Permit", "Please Approve Confined Space Permit No. " + this.csep_no, serverUrl + "Home?p=Csep/edit/" + this.id);
            }
            else if (stat == 1)
            {
                message = serverUrl + "Home?p=Csep/edit/" + this.id + "<br />" + comment;
                subject = "Confined Space Entry Permit Approval Rejection";
                sendEmail.SendToNotificationCenter(userId, "Confined Space Entry Permit", "Confined Space Entry Permit No. " + this.csep_no + "is rejected with comment: " + comment, serverUrl + "Home?p=Csep/edit/" + this.id);
            }

            sendEmail.Send(s, message, subject);

            return "200";
        }

        public string sendEmailFOAcc(string serverUrl, string token, UserEntity user)
        {
            UserEntity fOAcc = new UserEntity(Int32.Parse(this.acc_fo), token, user);
            SendEmail sendEmail = new SendEmail();
            List<string> s = new List<string>();
            List<int> userId = new List<int>();
#if !DEBUG
            s.Add(fOAcc.email);
#else
            s.Add("septu.jamasoka@gmail.com"); // email FO
#endif
            userId.Add(fOAcc.id);
            if (fOAcc.employee_delegate != null)
            {
                UserEntity del = new UserEntity(fOAcc.employee_delegate.Value, token, user);
#if !DEBUG
                s.Add(del.email);
#else
                s.Add("septu.jamasoka@gmail.com"); // email FO
#endif
                userId.Add(del.id);
            }
            List<UserEntity> listDel = fOAcc.GetDelegateFO(user);
            foreach (UserEntity u in listDel)
            {
#if (!DEBUG)
                s.Add(u.email);
#else
                s.Add("septu.jamasoka@gmail.com");
#endif
                userId.Add(u.id);
            }

            string message = serverUrl + "Home?p=Csep/edit/" + this.id;

            sendEmail.Send(s, message, "Confined Space Entry Permit Facility Owner Approve");
            sendEmail.SendToNotificationCenter(userId, "Confined Space Entry Permit", "Please Approve Confined Space Permit No. " + this.csep_no, serverUrl + "Home?p=Csep/edit/" + this.id);

            return "200";
        }

        public string sendEmailFOExt(string serverUrl, string token, UserEntity user, int extension)
        {
            int fo_id = 0;
            switch (extension)
            {
                case 1:
                    fo_id = Int32.Parse(this.ext_fo_1);
                    break;
                case 2:
                    fo_id = Int32.Parse(this.ext_fo_2);
                    break;
                case 3:
                    fo_id = Int32.Parse(this.ext_fo_3);
                    break;
                case 4:
                    fo_id = Int32.Parse(this.ext_fo_4);
                    break;
                case 5:
                    fo_id = Int32.Parse(this.ext_fo_5);
                    break;
                case 6:
                    fo_id = Int32.Parse(this.ext_fo_6);
                    break;
                case 7:
                    fo_id = Int32.Parse(this.ext_fo_7);
                    break;
            }
            UserEntity fOAcc = new UserEntity(fo_id, token, user);
            SendEmail sendEmail = new SendEmail();
            List<string> s = new List<string>();
            List<int> userId = new List<int>();
#if !DEBUG
            s.Add(fOAcc.email);
#else
            s.Add("septu.jamasoka@gmail.com"); // email FO
#endif
            userId.Add(fOAcc.id);

            if (fOAcc.employee_delegate != null)
            {
                UserEntity del = new UserEntity(fOAcc.employee_delegate.Value, token, user);
#if !DEBUG
                s.Add(del.email);
#else
                s.Add("septu.jamasoka@gmail.com"); // email FO
#endif
                userId.Add(del.id);
            }
            List<UserEntity> listDel = fOAcc.GetDelegateFO(user);
            foreach (UserEntity u in listDel)
            {
#if (!DEBUG)
                s.Add(u.email);
#else
                s.Add("septu.jamasoka@gmail.com");
#endif
                userId.Add(u.id);
            }

            string message = serverUrl + "Home?p=Csep/edit/" + this.id;

            sendEmail.Send(s, message, "Confined Space Entry Permit Facility Owner Approve");
            sendEmail.SendToNotificationCenter(userId, "Confined Space Entry Permit", "Please Approve Extension of Confined Space Permit No. " + this.csep_no, serverUrl + "Home?p=Csep/edit/" + this.id);

            return "200";
        }

        public string sendEmailFOCan(string serverUrl, string token, UserEntity user)
        {
            UserEntity fOCan = new UserEntity(Int32.Parse(this.can_fo), token, user);
            SendEmail sendEmail = new SendEmail();
            List<string> s = new List<string>();
            List<int> userId = new List<int>();
#if !DEBUG
            s.Add(fOCan.email);
#else
            s.Add("septu.jamasoka@gmail.com"); // email FO
#endif
            userId.Add(fOCan.id);

            if (fOCan.employee_delegate != null)
            {
                UserEntity del = new UserEntity(fOCan.employee_delegate.Value, token, user);
#if !DEBUG
                s.Add(del.email);
#else
                s.Add("septu.jamasoka@gmail.com"); // email FO
#endif
                userId.Add(del.id);
            }
            List<UserEntity> listDel = fOCan.GetDelegateFO(user);
            foreach (UserEntity u in listDel)
            {
#if (!DEBUG)
                s.Add(u.email);
#else
                s.Add("septu.jamasoka@gmail.com");
#endif
                userId.Add(u.id);
            }

            string message = serverUrl + "Home?p=Csep/edit/" + this.id;

            sendEmail.Send(s, message, "Confined Space Entry Permit Facility Owner Closing");
            sendEmail.SendToNotificationCenter(userId, "Confined Space Entry Permit", "Please Approve Cancellation of Confined Space Permit No. " + this.csep_no, serverUrl + "Home?p=Csep/edit/" + this.id);

            return "200";
        }

        #endregion

        #region approve reject

        public string gasTesterAcc(UserEntity user, int extension, UserEntity userLogin)
        {
            // requestor approval
            // return code - 200 {ok}
            //               400 {not the user}
            confined_space csep = this.db.confined_space.Find(this.id);
            int foId = 0;
            Int32.TryParse(this.acc_fo, out foId);
            UserEntity fo = new UserEntity(foId, userLogin.token, userLogin);
            List<UserEntity> listDel = fo.GetDelegateFO(userLogin);
            if (extension == 0 && (user.id.ToString() == this.acc_gas_tester || user.id.ToString() == this.acc_fo || listDel.Exists(p => p.id == user.id)))
            {
                csep.acc_gas_tester_approve = "a" + user.signature;
                csep.status = (int)CsepStatus.GASTESTER;
                // create node
                workflowNodeService.CreateNode(this.id, WorkflowNodeServiceModel.DocumentType.CSEP.ToString(),
                    WorkflowNodeServiceModel.CSEPNodeName.GAS_TESTING.ToString(), (byte)WorkflowNodeServiceModel.NodeStatus.APPROVED);
            }
            else if (extension == 1 && (user.id.ToString() == this.ext_gas_tester_1 || user.id.ToString() == this.ext_fo_1 || listDel.Exists(p => p.id == user.id)))
            {
                csep.ext_gas_tester_approve_1 = "a" + user.signature;
                csep.status = (int)CsepStatus.EXTGASTESTER1;
            }
            else if (extension == 2 && (user.id.ToString() == this.ext_gas_tester_2 || user.id.ToString() == this.ext_fo_2 || listDel.Exists(p => p.id == user.id)))
            {
                csep.ext_gas_tester_approve_2 = "a" + user.signature;
                csep.status = (int)CsepStatus.EXTGASTESTER2;
            }
            else if (extension == 3 && (user.id.ToString() == this.ext_gas_tester_3 || user.id.ToString() == this.ext_fo_3 || listDel.Exists(p => p.id == user.id)))
            {
                csep.ext_gas_tester_approve_3 = "a" + user.signature;
                csep.status = (int)CsepStatus.EXTGASTESTER3;
            }
            else if (extension == 4 && (user.id.ToString() == this.ext_gas_tester_4 || user.id.ToString() == this.ext_fo_4 || listDel.Exists(p => p.id == user.id)))
            {
                csep.ext_gas_tester_approve_4 = "a" + user.signature;
                csep.status = (int)CsepStatus.EXTGASTESTER4;
            }
            else if (extension == 5 && (user.id.ToString() == this.ext_gas_tester_5 || user.id.ToString() == this.ext_fo_5 || listDel.Exists(p => p.id == user.id)))
            {
                csep.ext_gas_tester_approve_5 = "a" + user.signature;
                csep.status = (int)CsepStatus.EXTGASTESTER5;
            }
            else if (extension == 6 && (user.id.ToString() == this.ext_gas_tester_6 || user.id.ToString() == this.ext_fo_6 || listDel.Exists(p => p.id == user.id)))
            {
                csep.ext_gas_tester_approve_6 = "a" + user.signature;
                csep.status = (int)CsepStatus.EXTGASTESTER6;
            }
            else if (extension == 7 && (user.id.ToString() == this.ext_gas_tester_7 || user.id.ToString() == this.ext_fo_7 || listDel.Exists(p => p.id == user.id)))
            {
                csep.ext_gas_tester_approve_7 = "a" + user.signature;
                csep.status = (int)CsepStatus.EXTGASTESTER7;
            }
            else
            {
                return "400";
            }

            this.db.Entry(csep).State = EntityState.Modified;
            this.db.SaveChanges();
            return "200";
        }

        public string requestorAcc(UserEntity user, int extension, string random_pin = null)
        {
            // requestor approval
            // return code - 200 {ok}
            //               400 {not the user}
            confined_space csep = this.db.confined_space.Find(this.id);
            if (extension == 0 && user.id.ToString() == this.work_leader)
            {
                csep.acc_work_leader_approve = "a" + user.signature;
                csep.status = (int)CsepStatus.ACCWORKLEADER;
                // create node
                workflowNodeService.CreateNode(this.id, WorkflowNodeServiceModel.DocumentType.CSEP.ToString(),
                    WorkflowNodeServiceModel.CSEPNodeName.REQUESTOR_APPROVE.ToString(), (byte)WorkflowNodeServiceModel.NodeStatus.APPROVED);
            }
            else if (is_guest && extension == 0 && user.id.ToString() == this.acc_supervisor)
            {
                csep.acc_work_leader_approve = csep.permit_to_work.acc_ptw_requestor_approve;
                csep.status = (int)CsepStatus.ACCWORKLEADER;
                // create node
                workflowNodeService.CreateNode(this.id, WorkflowNodeServiceModel.DocumentType.CSEP.ToString(),
                    WorkflowNodeServiceModel.CSEPNodeName.REQUESTOR_APPROVE.ToString(), (byte)WorkflowNodeServiceModel.NodeStatus.APPROVED);
            } 
            else if (extension == 0 && random_pin != null && user.id.ToString() == this.acc_supervisor)
            {
                if (random_pin == this.random_pin)
                {
                    if (is_guest)
                    {
                        csep.acc_work_leader_approve = csep.permit_to_work.acc_ptw_requestor_approve;
                    }
                    else
                    {
                        user = new UserEntity(Int32.Parse(this.work_leader), user.token, user);
                        csep.acc_work_leader_approve = "a" + user.signature;
                    }
                    csep.status = (int)CsepStatus.ACCWORKLEADER;
                    // create node
                    workflowNodeService.CreateNode(this.id, WorkflowNodeServiceModel.DocumentType.CSEP.ToString(),
                        WorkflowNodeServiceModel.CSEPNodeName.REQUESTOR_APPROVE.ToString(), (byte)WorkflowNodeServiceModel.NodeStatus.APPROVED);
                }
                else
                {
                    return "402";
                }
            }
            else if (extension == 1)
            {
                if (user.id.ToString() == this.ext_work_leader_1)
                {
                    csep.ext_work_leader_approve_1 = "a" + user.signature;
                    csep.status = (int)CsepStatus.EXTACCWORKLEADER1;
                }
                else if (is_guest)
                {
                    csep.ext_work_leader_approve_1 = csep.permit_to_work.acc_ptw_requestor_approve;
                    csep.status = (int)CsepStatus.EXTACCWORKLEADER1;
                }
            }
            else if (extension == 2)
            {
                if (user.id.ToString() == this.ext_work_leader_2)
                {
                    csep.ext_work_leader_approve_2 = "a" + user.signature;
                    csep.status = (int)CsepStatus.EXTACCWORKLEADER2;
                }
                else if (is_guest)
                {
                    csep.ext_work_leader_approve_2 = csep.permit_to_work.acc_ptw_requestor_approve;
                    csep.status = (int)CsepStatus.EXTACCWORKLEADER2;
                }
            }
            else if (extension == 3)
            {
                if (user.id.ToString() == this.ext_work_leader_3)
                {
                    csep.ext_work_leader_approve_3 = "a" + user.signature;
                    csep.status = (int)CsepStatus.EXTACCWORKLEADER3;
                }
                else if (is_guest)
                {
                    csep.ext_work_leader_approve_3 = csep.permit_to_work.acc_ptw_requestor_approve;
                    csep.status = (int)CsepStatus.EXTACCWORKLEADER3;
                }
            }
            else if (extension == 4)
            {
                if (user.id.ToString() == this.ext_work_leader_4)
                {
                    csep.ext_work_leader_approve_4 = "a" + user.signature;
                    csep.status = (int)CsepStatus.EXTACCWORKLEADER4;
                }
                else if (is_guest)
                {
                    csep.ext_work_leader_approve_4 = csep.permit_to_work.acc_ptw_requestor_approve;
                    csep.status = (int)CsepStatus.EXTACCWORKLEADER4;
                }
            }
            else if (extension == 5)
            {
                if (user.id.ToString() == this.ext_work_leader_5)
                {
                    csep.ext_work_leader_approve_5 = "a" + user.signature;
                    csep.status = (int)CsepStatus.EXTACCWORKLEADER5;
                }
                else if (is_guest)
                {
                    csep.ext_work_leader_approve_5 = csep.permit_to_work.acc_ptw_requestor_approve;
                    csep.status = (int)CsepStatus.EXTACCWORKLEADER5;
                }
            }
            else if (extension == 6)
            {
                if (user.id.ToString() == this.ext_work_leader_6)
                {
                    csep.ext_work_leader_approve_6 = "a" + user.signature;
                    csep.status = (int)CsepStatus.EXTACCWORKLEADER6;
                }
                else if (is_guest)
                {
                    csep.ext_work_leader_approve_6 = csep.permit_to_work.acc_ptw_requestor_approve;
                    csep.status = (int)CsepStatus.EXTACCWORKLEADER6;
                }
            }
            else if (extension == 7)
            {
                if (user.id.ToString() == this.ext_work_leader_7)
                {
                    csep.ext_work_leader_approve_7 = "a" + user.signature;
                    csep.status = (int)CsepStatus.EXTACCWORKLEADER7;
                }
                else if (is_guest)
                {
                    csep.ext_work_leader_approve_7 = csep.permit_to_work.acc_ptw_requestor_approve;
                    csep.status = (int)CsepStatus.EXTACCWORKLEADER7;
                }
            }
            else
            {
                return "400";
            }

            this.db.Entry(csep).State = EntityState.Modified;
            this.db.SaveChanges();
            return "200";
        }

        public string supervisorAcc(UserEntity user)
        {
            // requestor approval
            // return code - 200 {ok}
            //               201 {ok, delegation}
            //               400 {not the user}
            //               401 {not select assessor}

            confined_space csep = this.db.confined_space.Find(this.id);
            //if (csep.acc_fire_watch == null)
            //{
            //    return "401";
            //}

            int foId = 0;
            Int32.TryParse(this.acc_supervisor, out foId);
            UserEntity fo = new UserEntity(foId, user.token, user);
            if (user.id.ToString() == this.acc_supervisor)
            {
                //ptw.acc_assessor = this.acc_assessor;
                //ptw.acc_assessor_delegate = this.acc_assessor_delegate;
                //ptw.can_assessor = this.can_assessor;
                //ptw.can_assessor_delegate = this.can_assessor_delegate;
                csep.acc_supervisor_approve = "a" + user.signature;
                csep.status = (int)CsepStatus.ACCSPV;
                this.db.Entry(csep).State = EntityState.Modified;
                this.db.SaveChanges();
                // create node
                workflowNodeService.CreateNode(this.id, WorkflowNodeServiceModel.DocumentType.CSEP.ToString(),
                    WorkflowNodeServiceModel.CSEPNodeName.SUPERVISOR_APPROVE.ToString(), (byte)WorkflowNodeServiceModel.NodeStatus.APPROVED);

                return "200";
            }
            else
            {
                //ptw.acc_assessor = this.acc_assessor;
                //ptw.acc_assessor_delegate = this.acc_assessor_delegate;
                //ptw.can_assessor = this.can_assessor;
                //ptw.can_assessor_delegate = this.can_assessor_delegate;
                csep.acc_supervisor_approve = "d" + user.signature;
                csep.acc_supervisor_delegate = user.id.ToString();
                csep.status = (int)CsepStatus.ACCSPV;
                this.db.Entry(csep).State = EntityState.Modified;
                this.db.SaveChanges();
                // create node
                workflowNodeService.CreateNode(this.id, WorkflowNodeServiceModel.DocumentType.CSEP.ToString(),
                    WorkflowNodeServiceModel.CSEPNodeName.SUPERVISOR_APPROVE.ToString(), (byte)WorkflowNodeServiceModel.NodeStatus.APPROVED);

                return "201";
            }
        }

        public string supervisorAccReject(UserEntity user, string comment)
        {
            // supervisor reject
            // return code - 200 {ok}
            //               400 {not the user}
            int foId = 0;
            Int32.TryParse(this.acc_supervisor, out foId);
            UserEntity fo = new UserEntity(foId, user.token, user);
            if (user.id.ToString() == this.acc_supervisor || user.id.ToString() == fo.employee_delegate.ToString())
            {
                confined_space csep = this.db.confined_space.Find(this.id);
                csep.acc_work_leader_approve = null;
                csep.status = (int)CsepStatus.GASTESTER;
                this.db.Entry(csep).State = EntityState.Modified;
                this.db.SaveChanges();
                // create node
                workflowNodeService.CreateNode(this.id, WorkflowNodeServiceModel.DocumentType.CSEP.ToString(),
                    WorkflowNodeServiceModel.CSEPNodeName.SUPERVISOR_APPROVE.ToString(), (byte)WorkflowNodeServiceModel.NodeStatus.REJECTED);

                return "200";
            }
            else
            {
                return "400";
            }
        }

        public string fireWatchAccApproval(UserEntity user)
        {
            // assessor approval
            // return code - 200 {ok}
            //               201 {ok, delegation}
            //               400 {not the user}

            confined_space csep = this.db.confined_space.Find(this.id);

            if (user.id.ToString() == this.acc_fire_watch)
            {
                //ptw.acc_fo = this.acc_fo;
                //ptw.acc_fo_delegate = this.acc_fo_delegate;
                //ptw.can_fo = this.acc_fo;
                //ptw.can_fo_delegate = this.acc_fo_delegate;
                csep.acc_fire_watch_approve = "a" + user.signature;
                //csep.status = (int)CsepStatus.ACCFIREWATCH;
                this.db.Entry(csep).State = EntityState.Modified;
                this.db.SaveChanges();

                return "200";
            }
            else
            {
                //ptw.acc_fo = this.acc_fo;
                //ptw.acc_fo_delegate = this.acc_fo_delegate;
                //ptw.can_fo = this.acc_fo;
                //ptw.can_fo_delegate = this.acc_fo_delegate;
                csep.acc_fire_watch_approve = "d" + user.signature;
                //csep.status = (int)CsepStatus.ACCFIREWATCH;
                this.db.Entry(csep).State = EntityState.Modified;
                this.db.SaveChanges();

                return "201";
            }
        }

        public string fireWatchAccReject(UserEntity user, string comment)
        {
            // assessor reject
            // return code - 200 {ok}
            //               400 {not the user}

            if (user.id.ToString() == this.acc_fire_watch || user.id.ToString() == this.acc_fire_watch_delegate)
            {
                confined_space csep = this.db.confined_space.Find(this.id);
                csep.acc_supervisor_approve = null;
                //csep.status = (int)CsepStatus.ACCWORKLEADER;
                this.db.Entry(csep).State = EntityState.Modified;
                this.db.SaveChanges();

                return "200";
            }
            else
            {
                return "400";
            }
        }

        public string fOAccApproval(UserEntity user, int extension)
        {
            // FO approval
            // return code - 200 {ok}
            //               201 {ok, delegation}
            //               400 {not the user}

            confined_space csep = this.db.confined_space.Find(this.id);

            if (extension == 0)
            {
                if (user.id.ToString() == this.acc_fo)
                {
                    csep.acc_fo_approve = "a" + user.signature;
                    csep.status = (int)CsepStatus.ACCFO;
                    this.db.Entry(csep).State = EntityState.Modified;
                    this.db.SaveChanges();

                    // create node
                    workflowNodeService.CreateNode(this.id, WorkflowNodeServiceModel.DocumentType.CSEP.ToString(),
                        WorkflowNodeServiceModel.CSEPNodeName.FACILITY_OWNER_APPROVE.ToString(), (byte)WorkflowNodeServiceModel.NodeStatus.APPROVED);
                    return "200";
                }
                else
                {
                    csep.acc_fo_approve = "d" + user.signature;
                    csep.acc_fo_delegate = user.id.ToString();
                    csep.status = (int)CsepStatus.ACCFO;
                    this.db.Entry(csep).State = EntityState.Modified;
                    this.db.SaveChanges();

                    // create node
                    workflowNodeService.CreateNode(this.id, WorkflowNodeServiceModel.DocumentType.CSEP.ToString(),
                        WorkflowNodeServiceModel.CSEPNodeName.FACILITY_OWNER_APPROVE.ToString(), (byte)WorkflowNodeServiceModel.NodeStatus.APPROVED);
                    return "201";
                }
            }
            else if (extension == 1)
            {
                if (user.id.ToString() == this.ext_fo_1)
                {
                    csep.ext_fo_approve_1 = "a" + user.signature;
                    csep.status = (int)CsepStatus.EXTACCFO1;
                    this.db.Entry(csep).State = EntityState.Modified;
                    this.db.SaveChanges();
                    return "200";
                }
                else
                {
                    csep.ext_fo_approve_1 = "d" + user.signature;
                    csep.ext_fo_delegate_1 = user.id.ToString();
                    csep.status = (int)CsepStatus.EXTACCFO1;
                    this.db.Entry(csep).State = EntityState.Modified;
                    this.db.SaveChanges();
                    return "209";
                }
            }
            else if (extension == 2)
            {
                if (user.id.ToString() == this.ext_fo_2)
                {
                    csep.ext_fo_approve_2 = "a" + user.signature;
                    csep.status = (int)CsepStatus.EXTACCFO2;
                    this.db.Entry(csep).State = EntityState.Modified;
                    this.db.SaveChanges();
                    return "200";
                }
                else
                {
                    csep.ext_fo_approve_2 = "d" + user.signature;
                    csep.ext_fo_delegate_2 = user.id.ToString();
                    csep.status = (int)CsepStatus.EXTACCFO2;
                    this.db.Entry(csep).State = EntityState.Modified;
                    this.db.SaveChanges();
                    return "209";
                }
            }
            else if (extension == 3)
            {
                if (user.id.ToString() == this.ext_fo_3)
                {
                    csep.ext_fo_approve_3 = "a" + user.signature;
                    csep.status = (int)CsepStatus.EXTACCFO3;
                    this.db.Entry(csep).State = EntityState.Modified;
                    this.db.SaveChanges();
                    return "200";
                }
                else
                {
                    csep.ext_fo_approve_3 = "d" + user.signature;
                    csep.ext_fo_delegate_3 = user.id.ToString();
                    csep.status = (int)CsepStatus.EXTACCFO3;
                    this.db.Entry(csep).State = EntityState.Modified;
                    this.db.SaveChanges();
                    return "209";
                }
            }
            else if (extension == 4)
            {
                if (user.id.ToString() == this.ext_fo_4)
                {
                    csep.ext_fo_approve_4 = "a" + user.signature;
                    csep.status = (int)CsepStatus.EXTACCFO4;
                    this.db.Entry(csep).State = EntityState.Modified;
                    this.db.SaveChanges();
                    return "200";
                }
                else
                {
                    csep.ext_fo_approve_4 = "d" + user.signature;
                    csep.ext_fo_delegate_4 = user.id.ToString();
                    csep.status = (int)CsepStatus.EXTACCFO4;
                    this.db.Entry(csep).State = EntityState.Modified;
                    this.db.SaveChanges();
                    return "209";
                }
            }
            else if (extension == 5)
            {
                if (user.id.ToString() == this.ext_fo_5)
                {
                    csep.ext_fo_approve_5 = "a" + user.signature;
                    csep.status = (int)CsepStatus.EXTACCFO5;
                    this.db.Entry(csep).State = EntityState.Modified;
                    this.db.SaveChanges();
                    return "200";
                }
                else
                {
                    csep.ext_fo_approve_5 = "d" + user.signature;
                    csep.ext_fo_delegate_5 = user.id.ToString();
                    csep.status = (int)CsepStatus.EXTACCFO5;
                    this.db.Entry(csep).State = EntityState.Modified;
                    this.db.SaveChanges();
                    return "209";
                }
            }
            else if (extension == 6)
            {
                if (user.id.ToString() == this.ext_fo_6)
                {
                    csep.ext_fo_approve_6 = "a" + user.signature;
                    csep.status = (int)CsepStatus.EXTACCFO6;
                    this.db.Entry(csep).State = EntityState.Modified;
                    this.db.SaveChanges();
                    return "200";
                }
                else
                {
                    csep.ext_fo_approve_6 = "d" + user.signature;
                    csep.ext_fo_delegate_6 = user.id.ToString();
                    csep.status = (int)CsepStatus.EXTACCFO6;
                    this.db.Entry(csep).State = EntityState.Modified;
                    this.db.SaveChanges();
                    return "209";
                }
            }
            else if (extension == 7)
            {
                if (user.id.ToString() == this.ext_fo_7)
                {
                    csep.ext_fo_approve_7 = "a" + user.signature;
                    csep.status = (int)CsepStatus.EXTACCFO7;
                    this.db.Entry(csep).State = EntityState.Modified;
                    this.db.SaveChanges();
                    return "200";
                }
                else
                {
                    csep.ext_fo_approve_7 = "d" + user.signature;
                    csep.ext_fo_delegate_7 = user.id.ToString();
                    csep.status = (int)CsepStatus.EXTACCFO7;
                    this.db.Entry(csep).State = EntityState.Modified;
                    this.db.SaveChanges();
                    return "209";
                }
            }
            else
            {
                return "200";
            }
        }

        public string fOAccReject(UserEntity user, int extension, string comment)
        {
            // FO reject
            // return code - 200 {ok}
            //               400 {not the user}
            if (extension == 0)
            {
                confined_space csep = this.db.confined_space.Find(this.id);
                csep.acc_supervisor_approve = null;
                csep.status = (int)CsepStatus.ACCWORKLEADER;
                this.db.Entry(csep).State = EntityState.Modified;
                this.db.SaveChanges();

                // create node
                workflowNodeService.CreateNode(this.id, WorkflowNodeServiceModel.DocumentType.CSEP.ToString(),
                    WorkflowNodeServiceModel.CSEPNodeName.FACILITY_OWNER_APPROVE.ToString(), (byte)WorkflowNodeServiceModel.NodeStatus.REJECTED);
                return "200";
            }
            else if (extension == 1)
            {
                confined_space csep = this.db.confined_space.Find(this.id);
                csep.ext_work_leader_approve_1 = null;
                csep.status = (int)CsepStatus.EXTGASTESTER1;
                this.db.Entry(csep).State = EntityState.Modified;
                this.db.SaveChanges();

                return "200";
            }
            else if (extension == 2)
            {
                confined_space csep = this.db.confined_space.Find(this.id);
                csep.ext_work_leader_approve_2 = null;
                csep.status = (int)CsepStatus.EXTGASTESTER2;
                this.db.Entry(csep).State = EntityState.Modified;
                this.db.SaveChanges();

                return "200";
            }
            else if (extension == 3)
            {
                confined_space csep = this.db.confined_space.Find(this.id);
                csep.ext_work_leader_approve_3 = null;
                csep.status = (int)CsepStatus.EXTGASTESTER3;
                this.db.Entry(csep).State = EntityState.Modified;
                this.db.SaveChanges();

                return "200";
            }
            else if (extension == 4)
            {
                confined_space csep = this.db.confined_space.Find(this.id);
                csep.ext_work_leader_approve_4 = null;
                csep.status = (int)CsepStatus.EXTGASTESTER4;
                this.db.Entry(csep).State = EntityState.Modified;
                this.db.SaveChanges();

                return "200";
            }
            else if (extension == 5)
            {
                confined_space csep = this.db.confined_space.Find(this.id);
                csep.ext_work_leader_approve_5 = null;
                csep.status = (int)CsepStatus.EXTGASTESTER5;
                this.db.Entry(csep).State = EntityState.Modified;
                this.db.SaveChanges();

                return "200";
            }
            else if (extension == 6)
            {
                confined_space csep = this.db.confined_space.Find(this.id);
                csep.ext_work_leader_approve_6 = null;
                csep.status = (int)CsepStatus.EXTGASTESTER6;
                this.db.Entry(csep).State = EntityState.Modified;
                this.db.SaveChanges();

                return "200";
            }
            else if (extension == 7)
            {
                confined_space csep = this.db.confined_space.Find(this.id);
                csep.ext_work_leader_approve_7 = null;
                csep.status = (int)CsepStatus.EXTGASTESTER7;
                this.db.Entry(csep).State = EntityState.Modified;
                this.db.SaveChanges();

                return "200";
            }
            else
            {
                return "200";
            }
        }

        public string requestorCan(UserEntity user)
        {
            // requestor approval
            // return code - 200 {ok}
            //               400 {not the user}
            confined_space csep = this.db.confined_space.Find(this.id);
            if (is_guest && user.id.ToString() == this.acc_supervisor)
            {
                csep.can_work_leader_approve = csep.permit_to_work.acc_ptw_requestor_approve;
                csep.status = (int)CsepStatus.CANWORKLEADER;
            } else if (user.id.ToString() == this.work_leader)
            {
                csep.can_work_leader_approve = "a" + user.signature;
                csep.status = (int)CsepStatus.CANWORKLEADER;
            }
            this.db.Entry(csep).State = EntityState.Modified;
            this.db.SaveChanges();
            // create node
            workflowNodeService.CreateNode(this.id, WorkflowNodeServiceModel.DocumentType.CSEP.ToString(),
                WorkflowNodeServiceModel.CSEPNodeName.CANCELLATION_INITIATOR.ToString(), (byte)WorkflowNodeServiceModel.NodeStatus.APPROVED);
            return "200";
        }

        public string supervisorCan(UserEntity user)
        {
            // requestor approval
            // return code - 200 {ok}
            //               201 {ok, delegation}
            //               400 {not the user}

            confined_space csep = this.db.confined_space.Find(this.id);
            int foId = 0;
            Int32.TryParse(this.can_supervisor, out foId);
            UserEntity fo = new UserEntity(foId, user.token, user);
            if (user.id.ToString() == this.can_supervisor)
            {
                //ptw.acc_assessor = this.acc_assessor;
                //ptw.acc_assessor_delegate = this.acc_assessor_delegate;
                //ptw.can_assessor = this.can_assessor;
                //ptw.can_assessor_delegate = this.can_assessor_delegate;
                csep.can_supervisor_approve = "a" + user.signature;
                csep.status = (int)CsepStatus.CANSPV;
                this.db.Entry(csep).State = EntityState.Modified;
                this.db.SaveChanges();
                // create node
                workflowNodeService.CreateNode(this.id, WorkflowNodeServiceModel.DocumentType.CSEP.ToString(),
                    WorkflowNodeServiceModel.CSEPNodeName.CANCELLATION_SUPERVISOR.ToString(), (byte)WorkflowNodeServiceModel.NodeStatus.APPROVED);

                return "200";
            }
            else
            {
                //ptw.acc_assessor = this.acc_assessor;
                //ptw.acc_assessor_delegate = this.acc_assessor_delegate;
                //ptw.can_assessor = this.can_assessor;
                //ptw.can_assessor_delegate = this.can_assessor_delegate;
                csep.can_supervisor_approve = "d" + user.signature;
                csep.can_supervisor_delegate = user.id.ToString();
                csep.status = (int)CsepStatus.CANSPV;
                this.db.Entry(csep).State = EntityState.Modified;
                this.db.SaveChanges();
                // create node
                workflowNodeService.CreateNode(this.id, WorkflowNodeServiceModel.DocumentType.CSEP.ToString(),
                    WorkflowNodeServiceModel.CSEPNodeName.CANCELLATION_SUPERVISOR.ToString(), (byte)WorkflowNodeServiceModel.NodeStatus.APPROVED);

                return "201";
            }
        }

        public string supervisorCanReject(UserEntity user, string comment)
        {
            // supervisor reject
            // return code - 200 {ok}
            //               400 {not the user}
            int foId = 0;
            Int32.TryParse(this.can_supervisor, out foId);
            UserEntity fo = new UserEntity(foId, user.token, user);
            if (user.id.ToString() == this.can_supervisor || user.id.ToString() == fo.employee_delegate.ToString())
            {
                confined_space csep = this.db.confined_space.Find(this.id);
                csep.can_work_leader_approve = null;
                csep.status = (int)CsepStatus.CANCEL;
                this.db.Entry(csep).State = EntityState.Modified;
                this.db.SaveChanges();
                // create node
                workflowNodeService.CreateNode(this.id, WorkflowNodeServiceModel.DocumentType.CSEP.ToString(),
                    WorkflowNodeServiceModel.CSEPNodeName.CANCELLATION_SUPERVISOR.ToString(), (byte)WorkflowNodeServiceModel.NodeStatus.REJECTED);

                return "200";
            }
            else
            {
                return "400";
            }
        }

        public string fireWatchCanApproval(UserEntity user)
        {
            // assessor approval
            // return code - 200 {ok}
            //               201 {ok, delegation}
            //               400 {not the user}

            confined_space csep = this.db.confined_space.Find(this.id);

            if (user.id.ToString() == this.can_fire_watch)
            {
                //ptw.acc_fo = this.acc_fo;
                //ptw.acc_fo_delegate = this.acc_fo_delegate;
                //ptw.can_fo = this.acc_fo;
                //ptw.can_fo_delegate = this.acc_fo_delegate;
                csep.can_fire_watch_approve = "a" + user.signature;
                //csep.status = (int)CsepStatus.CANFIREWATCH;
                this.db.Entry(csep).State = EntityState.Modified;
                this.db.SaveChanges();

                return "200";
            }
            else
            {
                //ptw.acc_fo = this.acc_fo;
                //ptw.acc_fo_delegate = this.acc_fo_delegate;
                //ptw.can_fo = this.acc_fo;
                //ptw.can_fo_delegate = this.acc_fo_delegate;
                csep.can_fire_watch_approve = "d" + user.signature;
                //csep.status = (int)CsepStatus.CANFIREWATCH;
                this.db.Entry(csep).State = EntityState.Modified;
                this.db.SaveChanges();

                return "201";
            }
        }

        public string fireWatchCanReject(UserEntity user, string comment)
        {
            // assessor reject
            // return code - 200 {ok}
            //               400 {not the user}

            if (user.id.ToString() == this.can_fire_watch || user.id.ToString() == this.can_fire_watch_delegate)
            {
                confined_space csep = this.db.confined_space.Find(this.id);
                csep.can_supervisor_approve = null;
                csep.status = (int)CsepStatus.CANWORKLEADER;
                this.db.Entry(csep).State = EntityState.Modified;
                this.db.SaveChanges();

                return "200";
            }
            else
            {
                return "400";
            }
        }

        public string fOCanApproval(UserEntity user)
        {
            // FO approval
            // return code - 200 {ok}
            //               201 {ok, delegation}
            //               400 {not the user}

            confined_space csep = this.db.confined_space.Find(this.id);

            if (user.id.ToString() == this.can_fo)
            {
                csep.can_fo_approve = "a" + user.signature;
                csep.status = (int)CsepStatus.CANFO;
                this.db.Entry(csep).State = EntityState.Modified;
                this.db.SaveChanges();
                // create node
                workflowNodeService.CreateNode(this.id, WorkflowNodeServiceModel.DocumentType.CSEP.ToString(),
                    WorkflowNodeServiceModel.CSEPNodeName.CANCELLATION_FACILITY_OWNER.ToString(), (byte)WorkflowNodeServiceModel.NodeStatus.APPROVED);
                return "200";
            }
            else
            {
                csep.can_fo_approve = "d" + user.signature;
                csep.can_fo_delegate = user.id.ToString();
                csep.status = (int)CsepStatus.CANFO;
                this.db.Entry(csep).State = EntityState.Modified;
                this.db.SaveChanges();
                // create node
                workflowNodeService.CreateNode(this.id, WorkflowNodeServiceModel.DocumentType.CSEP.ToString(),
                    WorkflowNodeServiceModel.CSEPNodeName.CANCELLATION_FACILITY_OWNER.ToString(), (byte)WorkflowNodeServiceModel.NodeStatus.APPROVED);
                return "201";
            }
        }

        public string fOCanReject(UserEntity user, string comment)
        {
            // FO reject
            // return code - 200 {ok}
            //               400 {not the user}
            confined_space csep = this.db.confined_space.Find(this.id);
            csep.can_supervisor_approve = null;
            csep.status = (int)CsepStatus.CANWORKLEADER;
            this.db.Entry(csep).State = EntityState.Modified;
            this.db.SaveChanges();
            // create node
            workflowNodeService.CreateNode(this.id, WorkflowNodeServiceModel.DocumentType.CSEP.ToString(),
                WorkflowNodeServiceModel.CSEPNodeName.CANCELLATION_FACILITY_OWNER.ToString(), (byte)WorkflowNodeServiceModel.NodeStatus.REJECTED);

            return "200";
        }

        #endregion

        #region is can add extension

        public bool isCanAddExtension()
        {
            return (this.status == (int)CsepStatus.ACCFO || this.status == (int)CsepStatus.EXTACCFO1
                 || this.status == (int)CsepStatus.EXTACCFO2
                 || this.status == (int)CsepStatus.EXTACCFO3
                 || this.status == (int)CsepStatus.EXTACCFO4
                 || this.status == (int)CsepStatus.EXTACCFO5
                 || this.status == (int)CsepStatus.EXTACCFO6);
        }

        public int getExtensionNo()
        {
            if (this.status >= (int)CsepStatus.EXTCREATE1 && this.status <= (int)CsepStatus.EXTACCFO1)
            {
                return 1;
            }
            if (this.status >= (int)CsepStatus.EXTCREATE2 && this.status <= (int)CsepStatus.EXTACCFO2)
            {
                return 2;
            }
            if (this.status >= (int)CsepStatus.EXTCREATE3 && this.status <= (int)CsepStatus.EXTACCFO3)
            {
                return 3;
            }
            if (this.status >= (int)CsepStatus.EXTCREATE4 && this.status <= (int)CsepStatus.EXTACCFO4)
            {
                return 4;
            }
            if (this.status >= (int)CsepStatus.EXTCREATE5 && this.status <= (int)CsepStatus.EXTACCFO5)
            {
                return 5;
            }
            if (this.status >= (int)CsepStatus.EXTCREATE6 && this.status <= (int)CsepStatus.EXTACCFO6)
            {
                return 6;
            }
            if (this.status >= (int)CsepStatus.EXTCREATE7 && this.status <= (int)CsepStatus.EXTACCFO7)
            {
                return 7;
            }

            return 0;
        }

        public int editExtHotWork(int extension)
        {
            confined_space csep = this.db.confined_space.Find(this.id);

            switch (extension)
            {
                case 1:
                    csep.ext_datetime_1 = this.ext_datetime_1;
                    csep.ext_lel_1 = this.ext_lel_1;
                    csep.ext_o2_1 = this.ext_o2_1;
                    csep.ext_h2s_1 = this.ext_h2s_1;
                    csep.ext_co_1 = this.ext_co_1;
                    csep.ext_other_1 = this.ext_other_1;
                    csep.ext_remark_1 = this.ext_remark_1;
                    csep.ext_new_validity_1 = this.ext_new_validity_1;
                    csep.screening_1 = this.screening_1;
                    break;
                case 2:
                    csep.ext_datetime_2 = this.ext_datetime_2;
                    csep.ext_lel_2 = this.ext_lel_2;
                    csep.ext_o2_2 = this.ext_o2_2;
                    csep.ext_h2s_2 = this.ext_h2s_2;
                    csep.ext_co_2 = this.ext_co_2;
                    csep.ext_other_2 = this.ext_other_2;
                    csep.ext_remark_2 = this.ext_remark_2;
                    csep.ext_new_validity_2 = this.ext_new_validity_2;
                    csep.screening_2 = this.screening_2;
                    break;
                case 3:
                    csep.ext_datetime_3 = this.ext_datetime_3;
                    csep.ext_lel_3 = this.ext_lel_3;
                    csep.ext_o2_3 = this.ext_o2_3;
                    csep.ext_h2s_3 = this.ext_h2s_3;
                    csep.ext_co_3 = this.ext_co_3;
                    csep.ext_other_3 = this.ext_other_3;
                    csep.ext_remark_3 = this.ext_remark_3;
                    csep.ext_new_validity_3 = this.ext_new_validity_3;
                    csep.screening_3 = this.screening_3;
                    break;
                case 4:
                    csep.ext_datetime_4 = this.ext_datetime_4;
                    csep.ext_lel_4 = this.ext_lel_4;
                    csep.ext_o2_4 = this.ext_o2_4;
                    csep.ext_h2s_4 = this.ext_h2s_4;
                    csep.ext_co_4 = this.ext_co_4;
                    csep.ext_other_4 = this.ext_other_4;
                    csep.ext_remark_4 = this.ext_remark_4;
                    csep.ext_new_validity_4 = this.ext_new_validity_4;
                    csep.screening_4 = this.screening_4;
                    break;
                case 5:
                    csep.ext_datetime_5 = this.ext_datetime_5;
                    csep.ext_lel_5 = this.ext_lel_5;
                    csep.ext_o2_5 = this.ext_o2_5;
                    csep.ext_h2s_5 = this.ext_h2s_5;
                    csep.ext_co_5 = this.ext_co_5;
                    csep.ext_other_5 = this.ext_other_5;
                    csep.ext_remark_5 = this.ext_remark_5;
                    csep.ext_new_validity_5 = this.ext_new_validity_5;
                    csep.screening_5 = this.screening_5;
                    break;
                case 6:
                    csep.ext_datetime_6 = this.ext_datetime_6;
                    csep.ext_lel_6 = this.ext_lel_6;
                    csep.ext_o2_6 = this.ext_o2_6;
                    csep.ext_h2s_6 = this.ext_h2s_6;
                    csep.ext_co_6 = this.ext_co_6;
                    csep.ext_other_6 = this.ext_other_6;
                    csep.ext_remark_6 = this.ext_remark_6;
                    csep.ext_new_validity_6 = this.ext_new_validity_6;
                    csep.screening_6 = this.screening_6;
                    break;
                case 7:
                    csep.ext_datetime_7 = this.ext_datetime_7;
                    csep.ext_lel_7 = this.ext_lel_7;
                    csep.ext_o2_7 = this.ext_o2_7;
                    csep.ext_h2s_7 = this.ext_h2s_7;
                    csep.ext_co_7 = this.ext_co_7;
                    csep.ext_other_7 = this.ext_other_7;
                    csep.ext_remark_7 = this.ext_remark_7;
                    csep.ext_new_validity_7 = this.ext_new_validity_7;
                    csep.screening_7 = this.screening_7;
                    break;
            };
            this.db.Entry(csep).State = EntityState.Modified;
            return this.db.SaveChanges();
        }

        #endregion

        public void GetPtw(UserEntity user)
        {
            this.ptw = new PtwEntity(this.id_ptw.Value, user);
            this.is_guest = this.ptw.is_guest == 1;
        }

        public void GetPtw(UserEntity user, ListUser listUser)
        {
            this.ptw = new PtwEntity(this.id_ptw.Value, user, listUser);
            this.is_guest = this.ptw.is_guest == 1;
        }
    }
}