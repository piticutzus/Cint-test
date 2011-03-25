using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using IT_Cint.Models;

namespace IT_Cint.Controllers
{
    [HandleError]
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
           // ViewData["Message"] = "Welcome to ASP.NET MVC!";

            var dataContext = new PanelistsDataContext();
            var panelists = from p in dataContext.Panelists
                            select p;

            return View(panelists);
        }

        public ActionResult About()
        {
            return View();
        }
    }
}
