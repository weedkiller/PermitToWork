﻿using PermitToWork.Models.ClearancePermit;
using PermitToWork.Models.Master;
using PermitToWork.Models.Ptw;
using PermitToWork.Models.User;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace PermitToWork.Controllers
{
    public class ExcavationController : Controller
    {
        //
        // GET: /Excavation/

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Create()
        {
            return PartialView();
        }

        public ActionResult Edit(int id)
        {

            UserEntity user = Session["user"] as UserEntity;
            ListUser listUser = new ListUser(user.token, user.id);
            ExcavationEntity entity = new ExcavationEntity(id, user, listUser);
            entity.getPtw(user, listUser);
            entity.getHiraNo();
            bool[] isCanEdit = new bool[15];

            isCanEdit[0] = entity.isCanEditFormRequestor(user);
            isCanEdit[1] = entity.isCanAssign(user, listUser);
            isCanEdit[2] = entity.isCanApproveSpv(user);
            isCanEdit[3] = entity.isCanApproveSHE(user);
            isCanEdit[4] = entity.isCanApproveFacilities(user);
            isCanEdit[5] = entity.isCanApproveEI(user);
            isCanEdit[6] = entity.isCanApproveRequestor(user);
            isCanEdit[7] = entity.isCanApproveFO(user, listUser);
            isCanEdit[8] = entity.isCanCancel(user);
            isCanEdit[9] = entity.isCanApproveRequestorCancel(user);
            isCanEdit[10] = entity.isCanApproveSpvCancel(user);
            isCanEdit[11] = entity.isCanApproveFacilitiesCancel(user);
            isCanEdit[12] = entity.isCanApproveEICancel(user);
            isCanEdit[13] = entity.isCanApproveSHECancel(user);
            isCanEdit[14] = entity.isCanApproveFOCancel(user, listUser);
            //isCanEdit[8] = entity.isCanEditApproveRequestorCancel(user);
            //isCanEdit[9] = entity.isCanEditApproveFireWatchCancel(user);
            //isCanEdit[10] = entity.isCanEditFormSPVCancel(user);
            //isCanEdit[11] = entity.isCanEditApproveSOCancel(user);
            //isCanEdit[12] = entity.isCanEditApproveFOCancel(user);
            //isCanEdit[13] = entity.isCanEditApproveDeptHeadCancel(user);

            ViewBag.isCanEdit = isCanEdit;

            ViewBag.position = "Edit";
            ViewBag.listUser = listUser;

            var listEO = new List<SelectListItem>();
            var listEOs = new MstEnviroOfficerEntity().getListEnviroOfficer(user, listUser);
            foreach (MstEnviroOfficerEntity sect in listEOs)
            {
                listEO.Add(new SelectListItem
                {
                    Text = sect.user.alpha_name,
                    Value = sect.user.id.ToString(),
                    Selected = entity.enviro_officer == sect.user.id.ToString() ? true : false
                });
            }
            ViewBag.listEO = listEO;

            var listFAC = new List<SelectListItem>();
            var listFacilities = new MstFacilitiesEntity().getListFacilities(user, listUser);
            foreach (MstFacilitiesEntity sect in listFacilities)
            {
                listFAC.Add(new SelectListItem
                {
                    Text = sect.user.alpha_name,
                    Value = sect.id.ToString(),
                    Selected = entity.facilities == sect.id.ToString() ? true : false
                });
            }
            ViewBag.listFAC = listFAC;

            var listEI = new List<SelectListItem>();
            var listEIs = new MstEIEntity().getListFacilities(user, listUser);
            foreach (MstEIEntity sect in listEIs)
            {
                listEI.Add(new SelectListItem
                {
                    Text = sect.user.alpha_name,
                    Value = sect.id.ToString(),
                    Selected = entity.ei == sect.id.ToString() ? true : false
                });
            }
            ViewBag.listEI = listEI;

            var listTotalCrew = new List<SelectListItem>();
            for (int i = 1; i <= 100; i++)
            {
                listTotalCrew.Add(new SelectListItem
                {
                    Text = i.ToString(),
                    Value = i.ToString(),
                    Selected = entity.total_crew == i ? true : false
                });
            }
            ViewBag.listTotalCrew = listTotalCrew;
            if (Session["ListPtwType"] as int? == 1)
            {
                Session["ListPtwDate"] = DateTime.Now.AddMinutes(-30);
            }
            //ViewBag.ptwStatus = new PtwEntity(entity.id_ptw.Value, user).status;
            return PartialView("create", entity);
        }

        [HttpPost]
        public JsonResult SaveAsDraft(ExcavationEntity ex, int who)
        {
            UserEntity user = Session["user"] as UserEntity;
            int retVal = 1;
            //if (ex.safety_officer != null)
            //{
            //    int a = ex.assignSO(fullUrl(), user);
            //    retVal = retVal & a;
            //}

            if (ex.facilities != null)
            {
                retVal &= ex.assignFAC(fullUrl(), user);
            }

            if (ex.ei != null)
            {
                retVal &= ex.assignEI(fullUrl(), user);
            }
            retVal = ex.saveAsDraft(who);
            return Json(new { status = retVal > 0 ? "200" : "404" });
        }

        [HttpPost]
        public JsonResult SaveComplete(ExcavationEntity ex, int who)
        {
            UserEntity user = Session["user"] as UserEntity;
            int retVal = 1;
            if (ex.enviro_officer != null)
            {
                int a = ex.assignEnviroOfficer(fullUrl(), user);
                retVal = retVal & a;
            }

            if (ex.facilities != null)
            {
                retVal &= ex.assignFAC(fullUrl(), user);
            }

            if (ex.ei != null)
            {
                retVal &= ex.assignEI(fullUrl(), user);
            }
            retVal = retVal & ex.saveAsDraft(who);
            string approvalNote = ex.approval_note;
            ex = new ExcavationEntity(ex.id, user);
            ex.approval_note = approvalNote;
            retVal = retVal & ex.signClearance(who, user);
            retVal = retVal & ex.sendToUser(who, 1, fullUrl(), user);
            return Json(new { status = retVal > 0 ? "200" : "404" });
        }

        [HttpPost]
        public JsonResult rejectPermit(ExcavationEntity ex, string comment, int who)
        {
            UserEntity user = Session["user"] as UserEntity;
            int retVal = 1;
            retVal = retVal & ex.saveAsDraft(who);
            string approvalNote = ex.approval_note;
            ex = new ExcavationEntity(ex.id, user);
            ex.approval_note = approvalNote;
            retVal = retVal & ex.rejectClearance(who);
            retVal = retVal & ex.sendToUser(who, 2, fullUrl(), user, comment);
            return Json(new { status = retVal > 0 ? "200" : "404" });
        }

        [HttpPost]
        public JsonResult SaveAssign(ExcavationEntity ex)
        {
            UserEntity user = Session["user"] as UserEntity;
            int retVal = 1;

            //if (ex.safety_officer != null)
            //{
            //    int a = ex.assignSO(fullUrl(), user);
            //    retVal = retVal & a;
            //}

            if (ex.facilities != null)
            {
                retVal &= ex.assignFAC(fullUrl(), user);
            }

            if (ex.ei != null)
            {
                retVal &= ex.assignEI(fullUrl(), user);
            }
            return Json(new { status = retVal > 0 ? "200" : "404" });
        }

        [HttpPost]
        public JsonResult CancelPermit(ExcavationEntity ex)
        {
            UserEntity user = Session["user"] as UserEntity;
            int retVal = 1;
            ex = new ExcavationEntity(ex.id, user);
            retVal = retVal & ex.signClearanceCancel(1, user);
            retVal = retVal & ex.sendToUserCancel(1, 1, fullUrl(), user);
            return Json(new { status = retVal > 0 ? "200" : "404" });
        }

        [HttpPost]
        public JsonResult SaveCompleteCancel(ExcavationEntity ex, int who)
        {
            UserEntity user = Session["user"] as UserEntity;
            int retVal = 1;
            string cancellationNote = ex.cancellation_note;
            ex = new ExcavationEntity(ex.id, user);
            ex.cancellation_note = cancellationNote;
            retVal = retVal & ex.signClearanceCancel(who, user);
            retVal = retVal & ex.sendToUserCancel(who, 1, fullUrl(), user);
            return Json(new { status = retVal > 0 ? "200" : "404" });
        }

        [HttpPost]
        public JsonResult rejectPermitCancel(ExcavationEntity ex, string comment, int who)
        {
            UserEntity user = Session["user"] as UserEntity;
            int retVal = 1;
            string cancellationNote = ex.cancellation_note;
            ex = new ExcavationEntity(ex.id, user);
            ex.cancellation_note = cancellationNote;
            retVal = retVal & ex.rejectClearanceCancel(who);
            retVal = retVal & ex.sendToUserCancel(who, 2, fullUrl(), user, comment);
            return Json(new { status = retVal > 0 ? "200" : "404" });
        }

        #region utilities

        private string fullUrl()
        {
            string url = Request.Url.Authority;
            string applicationPath = Request.ApplicationPath;

            string fullUrl = "http://" + url + applicationPath;
            return fullUrl;
        }

        #endregion

        # region Disposal Location

        [HttpPost]
        public JsonResult BindingDisposalLocation(int id_permit)
        {
            UserEntity user = Session["user"] as UserEntity;
            List<ExcavationDisposalEntity> result = new ExcavationDisposalEntity().getList(user, id_permit);
            return Json(result);
        }

        [HttpPost]
        public JsonResult Add(int id_permit, int id_disposal_location, double volume)
        {
            ExcavationDisposalEntity disposalLocation = new ExcavationDisposalEntity();
            disposalLocation.id_permit = id_permit;
            disposalLocation.id_disposal_location = id_disposal_location;
            disposalLocation.volume = volume;
            disposalLocation.add();
            return Json(true);
        }

        [HttpPost]
        public JsonResult Edit(int id_permit, int id_disposal_location, double volume)
        {
            ExcavationDisposalEntity disposalLocation = new ExcavationDisposalEntity();
            disposalLocation.id_permit = id_permit;
            disposalLocation.id_disposal_location = id_disposal_location;
            disposalLocation.volume = volume;
            disposalLocation.edit();
            return Json(true);
        }

        [HttpPost]
        public JsonResult Delete(int id_permit, int id_disposal_location, double volume)
        {
            ExcavationDisposalEntity disposalLocation = new ExcavationDisposalEntity();
            disposalLocation.id_permit = id_permit;
            disposalLocation.id_disposal_location = id_disposal_location;
            disposalLocation.volume = volume;
            disposalLocation.delete();
            return Json(true);
        }

        public JsonResult ListingDisposalLocation()
        {
            UserEntity user = Session["user"] as UserEntity;
            List<MstDisposalLocationEntity> result = new MstDisposalLocationEntity().getListDisposalLocation();
            return Json(result, JsonRequestBehavior.AllowGet);
        }

        #endregion
    }
}
