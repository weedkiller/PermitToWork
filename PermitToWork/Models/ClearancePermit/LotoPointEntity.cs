﻿using PermitToWork.Models.User;
using PermitToWork.Utilities;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace PermitToWork.Models.ClearancePermit
{
    public class LotoPointEntity : loto_point
    {
        public override loto_permit loto_permit { get { return null; } set { } }

        public LotoEntity lotoPermit { get; set; }

        private star_energy_ptwEntities db;

        public LotoPointEntity()
            : base()
        {
            this.db = new star_energy_ptwEntities();
        }

        public LotoPointEntity(int id, UserEntity user) : this()
        {
            loto_point lotoPoint = this.db.loto_point.Find(id);
            // this.ptw = new PtwEntity(fi.id_ptw.Value);
            ModelUtilization.Clone(lotoPoint, this);
        }

        public LotoPointEntity(LotoPointEntity lotoPoint, int id_loto)
            : this()
        {
            ModelUtilization.Clone(lotoPoint, this);
            this.id = 0;
            this.id_loto = id_loto;
        }

        public int create()
        {
            loto_point lotoPoint = new loto_point();
            ModelUtilization.Clone(this, lotoPoint);
            this.db.loto_point.Add(lotoPoint);
            int retVal = this.db.SaveChanges();
            this.id = lotoPoint.id;
            return retVal;
        }

        public int add()
        {
            loto_point lotoPoint = new loto_point
            {
                tag_id = this.tag_id,
                description = this.description,
                drawing_number = this.drawing_number,
                loto_point_proposed = this.loto_point_proposed,
                remarks = this.remarks,
                id_loto = this.id_loto
            };

            this.db.loto_point.Add(lotoPoint);
            int retVal = this.db.SaveChanges();
            this.id = lotoPoint.id;
            return retVal;
        }

        public int editLotoPoint()
        {
            int retVal = 0;
            loto_point lotoPoint = this.db.loto_point.Find(this.id);
            if (lotoPoint != null)
            {
                lotoPoint.tag_id = this.tag_id;
                lotoPoint.description = this.description;
                lotoPoint.drawing_number = this.drawing_number;
                lotoPoint.loto_point_proposed = this.loto_point_proposed;
                lotoPoint.remarks = this.remarks;

                this.db.Entry(lotoPoint).State = EntityState.Modified;
                retVal = this.db.SaveChanges();
            }

            return retVal;
        }

        public int deleteLotoPoint()
        {
            int retVal = 0;
            loto_point lotoPoint = this.db.loto_point.Find(this.id);
            if (lotoPoint != null)
            {
                this.db.loto_point.Remove(lotoPoint);
                retVal = this.db.SaveChanges();
            }

            return retVal;
        }

        public int agreedLotoPoint()
        {
            int retVal = 0;
            loto_point lotoPoint = this.db.loto_point.Find(this.id);
            if (lotoPoint != null)
            {
                lotoPoint.loto_point_agreed = this.loto_point_agreed;

                this.db.Entry(lotoPoint).State = EntityState.Modified;
                retVal = this.db.SaveChanges();
            }
            return retVal;
        }

        public int appliedLotoPoint()
        {
            int retVal = 0;
            loto_point lotoPoint = this.db.loto_point.Find(this.id);
            if (lotoPoint != null)
            {
                lotoPoint.applied_by = this.applied_by;
                lotoPoint.applied_by_time = this.applied_by_time;

                this.db.Entry(lotoPoint).State = EntityState.Modified;
                retVal = this.db.SaveChanges();
            }
            return retVal;
        }

        public int removeLotoPoint()
        {
            int retVal = 0;
            loto_point lotoPoint = this.db.loto_point.Find(this.id);
            if (lotoPoint != null)
            {
                lotoPoint.removed_by = this.removed_by;
                lotoPoint.removed_by_time = this.removed_by_time;

                this.db.Entry(lotoPoint).State = EntityState.Modified;
                retVal = this.db.SaveChanges();
            }
            return retVal;
        }

        public int inspected(UserEntity user)
        {
            int retVal = 0;
            loto_point lotoPoint = this.db.loto_point.Find(this.id);
            this.lotoPermit = new LotoEntity(lotoPoint.id_loto.Value, user);
            if (lotoPoint != null)
            {
                if (user.id == this.lotoPermit.listUserInLOTO[LotoEntity.userInLOTO.SUPERVISOR.ToString()].id)
                {
                    lotoPoint.inspected_1 = user.signature;
                }

                foreach (LotoComingHolderEntity comingHolder in this.lotoPermit.lotoComingHolder)
                {
                    if (user.id.ToString() == comingHolder.holder_spv)
                    {
                        switch (comingHolder.no_holder)
                        {
                            case 2: lotoPoint.inspected_2 = user.signature; break;
                            case 3: lotoPoint.inspected_3 = user.signature; break;
                            case 4: lotoPoint.inspected_4 = user.signature; break;
                            case 5: lotoPoint.inspected_5 = user.signature; break;
                            case 6: lotoPoint.inspected_6 = user.signature; break;
                            case 7: lotoPoint.inspected_7 = user.signature; break;
                        }
                    }
                }

                this.db.Entry(lotoPoint).State = EntityState.Modified;
                retVal = this.db.SaveChanges();
            }
            return retVal;
        }

        public int editChange()
        {
            int retVal = 0;
            loto_point lotoPoint = this.db.loto_point.Find(this.id);
            if (lotoPoint != null)
            {

                lotoPoint.tag_id = this.tag_id;
                lotoPoint.description = this.description;
                lotoPoint.drawing_number = this.drawing_number;
                lotoPoint.remarks = this.remarks;
                if (this.loto_point_proposed != lotoPoint.loto_point_proposed)
                {
                    lotoPoint.inspected_1 = null;
                    lotoPoint.inspected_2 = null;
                    lotoPoint.inspected_3 = null;
                    lotoPoint.inspected_4 = null;
                    lotoPoint.inspected_5 = null;
                    lotoPoint.inspected_6 = null;
                    lotoPoint.inspected_7 = null;
                }
                lotoPoint.loto_point_proposed = this.loto_point_proposed;
                lotoPoint.is_edited = 1;

                this.db.Entry(lotoPoint).State = EntityState.Modified;
                retVal = this.db.SaveChanges();
            }

            return retVal;
        }

        public int requestRemoval()
        {
            int retVal = 0;
            loto_point lotoPoint = this.db.loto_point.Find(this.id);
            if (lotoPoint != null)
            {
                if (lotoPoint.is_removed != 1)
                {
                    lotoPoint.is_removed = 1;
                }
                else
                {
                    lotoPoint.is_removed = null;
                }
                this.db.Entry(lotoPoint).State = EntityState.Modified;
                retVal = this.db.SaveChanges();
            }

            return retVal;
        }

        public List<LotoPointEntity> getList(UserEntity user, int id_loto)
        {
            List<int> listId = this.db.loto_point.Where(p => p.id_loto == id_loto).Select(p => p.id).ToList();
            List<LotoPointEntity> result = new List<LotoPointEntity>();
            foreach (int i in listId)
            {
                LotoPointEntity lotoPoint = new LotoPointEntity(i, user);
                result.Add(lotoPoint);
            }

            return result;
        }
    }
}