using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace proyPADMVC.Controllers
{
    public class PagosController : Controller
    {
        private Database2Entities db = new Database2Entities();
        static int idCuenta,legajoAlumno;
        static cuenta c;

        // GET: Pagos
        public ActionResult Index()
        {
            return View();
        }


        public ActionResult Pagar(int id, int legajo)//el parametro tiene que tener el mismo "name"
        {

            idCuenta = id;
            legajoAlumno = legajo;
           

            c = db.cuenta.Find(id);

            

                if (c.concepto.concepto1.Equals("matricula"))
                {
                    return Redirect("https://mpago.la/1phraFf");

                }
                else
                {
                    if (c.concepto.concepto1.Equals("seguro"))
                    {
                        return Redirect("https://mpago.la/1phraFf");
                    }
                    else
                    {
                        return Redirect("https://mpago.la/1phraFf");
                    }
                }

            
            



        }

        public ActionResult ImpactarPago()
        {
            return View();
            
        }
    }
}