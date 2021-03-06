﻿using PermitToWork.Models;
using PermitToWork.Models.Workflow;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Script.Serialization;

namespace PermitToWork.Controllers
{
    [PermitToWork.Utilities.AuthorizeUser]
    public class WorkflowController : Controller
    {
        private star_energy_ptwEntities db = new star_energy_ptwEntities();

        public string CSEP(int id)
        {
            CSEPModel model = new CSEPModel(new workflow_node().FindAllNode(id, WorkflowNodeServiceModel.DocumentType.CSEP.ToString()));

            return new JavaScriptSerializer().Serialize(model.NodeList);
        }

        public string HotWork(int id)
        {
            HotWorkModel model = new HotWorkModel(new workflow_node().FindAllNode(id, WorkflowNodeServiceModel.DocumentType.HOTWORK.ToString()));

            return new JavaScriptSerializer().Serialize(model.NodeList);
        }

        public string FireImpairment(int id)
        {
            FireImpairmentModel model = new FireImpairmentModel(new workflow_node().FindAllNode(id, WorkflowNodeServiceModel.DocumentType.FIREIMPAIRMENT.ToString()));

            return new JavaScriptSerializer().Serialize(model.NodeList);
        }

        public string GeneralPermit(int id)
        {
            GeneralPermitModel model = new GeneralPermitModel(new workflow_node().FindAllNode(id, WorkflowNodeServiceModel.DocumentType.GENERALPERMIT.ToString()));

            return new JavaScriptSerializer().Serialize(model.NodeList);
        }

        public string Excavation(int id)
        {
            bool isDisposalMoved = false;
            excavation excavation = db.excavations.Where(m => m.id == id).FirstOrDefault();
            if (excavation != null)
                isDisposalMoved = excavation.IsDisposalMoved();

            ExcavationModel model = new ExcavationModel(new workflow_node().FindAllNode(id, WorkflowNodeServiceModel.DocumentType.EXCAVATION.ToString()), isDisposalMoved);

            return new JavaScriptSerializer().Serialize(model.NodeList);
        }

        public string Radiography(int id)
        {
            RadiographyModel model = new RadiographyModel(new workflow_node().FindAllNode(id, WorkflowNodeServiceModel.DocumentType.RADIOGRAPHIC.ToString()));

            return new JavaScriptSerializer().Serialize(model.NodeList);
        }

        public string LOTO(int id)
        {
            LOTOModel model = new LOTOModel(new workflow_node().FindAllNode(id, WorkflowNodeServiceModel.DocumentType.LOTO.ToString()));

            return new JavaScriptSerializer().Serialize(model.NodeList);
        }

        public string WorkingAtHeight(int id)
        {
            working_height wh = db.working_height.Find(id);

            WorkingAtHeightModel model = new WorkingAtHeightModel(new workflow_node().FindAllNode(id, WorkflowNodeServiceModel.DocumentType.WORKINGATHEIGHT.ToString()), wh.isNeedInspector());

            return new JavaScriptSerializer().Serialize(model.NodeList);

            //WorkingAtHeightModel model = new WorkingAtHeightModel(new workflow_node().FindAllNode(id, WorkflowNodeServiceModel.DocumentType.WORKINGATHEIGHT.ToString()), false);

            //return new JavaScriptSerializer().Serialize(model.NodeList);
        }

        [HttpPost]
        public bool WHShowInspector(int id)
        {
            working_height wh = db.working_height.Find(id);

            return wh.isNeedInspector();
            //return false;
        }

        [HttpPost]
        public bool IsExcavationDisposalMoved(int id)
        {
            bool isDisposalMoved = false;
            excavation excavation = db.excavations.Where(m => m.id == id).FirstOrDefault();
            if (excavation != null)
                isDisposalMoved = excavation.IsDisposalMoved();

            return isDisposalMoved;
        }
    }
}
