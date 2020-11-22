using proyPADMVC;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MercadoPago;
using MercadoPago.DataStructures.Preference;
using MercadoPago.Resources;
using MercadoPago.Common;

namespace WebApplication1.Controllers
{
    public class HomeController : Controller
    {
        private Database2Entities db = new Database2Entities();
      

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult IngresoLegajo()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Cuenta(int legajo)//el parametro tiene que tener el mismo "name"
        {
            
            ViewBag.legajo = legajo;//mandamos el dato a la vista
            return View(db.cuenta.Where(c=> c.alumno_legajo == legajo).ToList());
        }


        
       

        public ActionResult EnviarComprobante(int? id)//el parametro tiene que tener el mismo "name"
        {
            return View();
        }




    }
}