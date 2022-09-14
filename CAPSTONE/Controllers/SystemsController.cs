using CAPSTONE.Controllers.Repository;
using CAPSTONE.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CAPSTONE.Controllers
{
    public class SystemsController : Controller
    {
        // GET: Systems
        public ActionResult Index(string id)
        {
            UserControl userControl = new UserControl();

            SystemsRepository systemsRepository = new SystemsRepository();


            userControl.currentuser = systemsRepository.GetCurrentUser(id);
            
            if (userControl.currentuser.acnttype == "" || userControl.currentuser.acnttype == null) return RedirectToAction("Index", "Login");
            
            userControl.menulist = systemsRepository.GetMenu(userControl.currentuser.acnttype);

            return View(userControl);
        }

        public ActionResult Reports(string id) {
            UserControl userControl = new UserControl();

            SystemsRepository systemsRepository = new SystemsRepository();


            userControl.currentuser = systemsRepository.GetCurrentUser(id);

            if (userControl.currentuser.acnttype == "" || userControl.currentuser.acnttype == null) return RedirectToAction("Index", "Login");

            userControl.menulist = systemsRepository.GetMenu(userControl.currentuser.acnttype);

            return View(userControl);
        }

        public ActionResult About(string id)
        {
            UserControl userControl = new UserControl();

            SystemsRepository systemsRepository = new SystemsRepository();


            userControl.currentuser = systemsRepository.GetCurrentUser(id);

            if (userControl.currentuser.acnttype == "" || userControl.currentuser.acnttype == null) return RedirectToAction("Index", "Login");

            userControl.menulist = systemsRepository.GetMenu(userControl.currentuser.acnttype);

            return View(userControl);
        }
        public ActionResult Dashboard(string id)
        {
            UserControl userControl = new UserControl();

            SystemsRepository systemsRepository = new SystemsRepository();


            userControl.currentuser = systemsRepository.GetCurrentUser(id);

            if (userControl.currentuser.acnttype == "" || userControl.currentuser.acnttype == null) return RedirectToAction("Index", "Login");

            userControl.menulist = systemsRepository.GetMenu(userControl.currentuser.acnttype);

            return View(userControl);
        }

        public string LoginUser(string username, string password)
        {
            SystemsRepository systemsRepository = new SystemsRepository();
            return systemsRepository.LoginUser(username, password);
        }
        public string getreport()
        {
            SystemsRepository systemsRepository = new SystemsRepository();
            return systemsRepository.getreport();
        }
    }
}