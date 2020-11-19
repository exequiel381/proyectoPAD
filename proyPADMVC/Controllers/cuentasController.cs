using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using proyPADMVC;

namespace proyPADMVC.Controllers
{
    public class cuentasController : Controller
    {
        private Database2Entities db = new Database2Entities();

        // GET: cuentas
        public ActionResult Index()
        {
            var cuenta = db.cuenta.Include(c => c.Alumno).Include(c => c.concepto);
            return View(cuenta.ToList());
        }

        // GET: cuentas/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            cuenta cuenta = db.cuenta.Find(id);
            if (cuenta == null)
            {
                return HttpNotFound();
            }
            return View(cuenta);
        }

        // GET: cuentas/Create
        public ActionResult Create()
        {
            ViewBag.alumno_legajo = new SelectList(db.Alumno, "legajo", "Apellido");
            ViewBag.concepto_idConcepto = new SelectList(db.concepto, "idConcepto", "concepto1");
            return View();
        }

        // POST: cuentas/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que quiere enlazarse. Para obtener 
        // más detalles, vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "idCuenta,anio,supago,saldo,estado,concepto_idConcepto,alumno_legajo")] cuenta cuenta)
        {
            if (ModelState.IsValid)
            {
                db.cuenta.Add(cuenta);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.alumno_legajo = new SelectList(db.Alumno, "legajo", "Apellido", cuenta.alumno_legajo);
            ViewBag.concepto_idConcepto = new SelectList(db.concepto, "idConcepto", "concepto1", cuenta.concepto_idConcepto);
            return View(cuenta);
        }

        // GET: cuentas/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            cuenta cuenta = db.cuenta.Find(id);
            if (cuenta == null)
            {
                return HttpNotFound();
            }
            ViewBag.alumno_legajo = new SelectList(db.Alumno, "legajo", "Apellido", cuenta.alumno_legajo);
            ViewBag.concepto_idConcepto = new SelectList(db.concepto, "idConcepto", "concepto1", cuenta.concepto_idConcepto);
            return View(cuenta);
        }

        // POST: cuentas/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que quiere enlazarse. Para obtener 
        // más detalles, vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "idCuenta,anio,supago,saldo,estado,concepto_idConcepto,alumno_legajo")] cuenta cuenta)
        {
            if (ModelState.IsValid)
            {
                db.Entry(cuenta).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.alumno_legajo = new SelectList(db.Alumno, "legajo", "Apellido", cuenta.alumno_legajo);
            ViewBag.concepto_idConcepto = new SelectList(db.concepto, "idConcepto", "concepto1", cuenta.concepto_idConcepto);
            return View(cuenta);
        }

        // GET: cuentas/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            cuenta cuenta = db.cuenta.Find(id);
            if (cuenta == null)
            {
                return HttpNotFound();
            }
            return View(cuenta);
        }

        // POST: cuentas/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            cuenta cuenta = db.cuenta.Find(id);
            db.cuenta.Remove(cuenta);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
