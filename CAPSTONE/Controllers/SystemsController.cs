using CAPSTONE.Controllers.Repository;
using CAPSTONE.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.AccessControl;
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

        public ActionResult Statics(string id)
        {
            UserControl userControl = new UserControl();

            SystemsRepository systemsRepository = new SystemsRepository();


            userControl.currentuser = systemsRepository.GetCurrentUser(id);

            if (userControl.currentuser.acnttype == "" || userControl.currentuser.acnttype == null) return RedirectToAction("Index", "Login");

            userControl.menulist = systemsRepository.GetMenu(userControl.currentuser.acnttype);

            return View(userControl);
        }

        public ActionResult Daily(string id)
        {
            UserControl userControl = new UserControl();

            SystemsRepository systemsRepository = new SystemsRepository();


            userControl.currentuser = systemsRepository.GetCurrentUser(id);

            if (userControl.currentuser.acnttype == "" || userControl.currentuser.acnttype == null) return RedirectToAction("Index", "Login");

            userControl.menulist = systemsRepository.GetMenu(userControl.currentuser.acnttype);

            return View(userControl);
        }
        public ActionResult ConfiscatedLicense(string id)
        {
            UserControl userControl = new UserControl();

            SystemsRepository systemsRepository = new SystemsRepository();


            userControl.currentuser = systemsRepository.GetCurrentUser(id);

            if (userControl.currentuser.acnttype == "" || userControl.currentuser.acnttype == null) return RedirectToAction("Index", "Login");

            userControl.menulist = systemsRepository.GetMenu(userControl.currentuser.acnttype);

            return View(userControl);
        }

        public ActionResult ImpoundedVehicles(string id)
        {
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

        public ActionResult Apprehension_Report(string id)
        {
            UserControl userControl = new UserControl();

            SystemsRepository systemsRepository = new SystemsRepository();


            userControl.currentuser = systemsRepository.GetCurrentUser(id);

            if (userControl.currentuser.acnttype == "" || userControl.currentuser.acnttype == null) return RedirectToAction("Index", "Login");

            userControl.menulist = systemsRepository.GetMenu(userControl.currentuser.acnttype);

            return View(userControl);
        }

        public ActionResult Enforcer_Apprehension_Report(string id)
        {
            UserControl userControl = new UserControl();

            SystemsRepository systemsRepository = new SystemsRepository();


            userControl.currentuser = systemsRepository.GetCurrentUser(id);

            if (userControl.currentuser.acnttype == "" || userControl.currentuser.acnttype == null) return RedirectToAction("Index", "Login");

            userControl.menulist = systemsRepository.GetMenu(userControl.currentuser.acnttype);

            return View(userControl);
        }

        public ActionResult Enforcer_Fines_of_Violation(string id)
        {
            UserControl userControl = new UserControl();

            SystemsRepository systemsRepository = new SystemsRepository();


            userControl.currentuser = systemsRepository.GetCurrentUser(id);

            if (userControl.currentuser.acnttype == "" || userControl.currentuser.acnttype == null) return RedirectToAction("Index", "Login");

            userControl.menulist = systemsRepository.GetMenu(userControl.currentuser.acnttype);

            return View(userControl);
        }
        public string insert_citation(
            string fname,
            string address,
            string licneseno,
            string birthdate,
            string dateofapprehension,
            string placeofviolation,
            string violationid,
            string vehicletype,
            string classification,
            string plateno
        )
        {
            SystemsRepository systemsRepository = new SystemsRepository();
            return systemsRepository.insert_citation(
                fname,
                address,
                licneseno,
                birthdate,
                dateofapprehension,
                placeofviolation,
                violationid,
                vehicletype,
                classification,
                plateno
                );
        }

        public string LoginUser(string username, string password, string acnttype)
        {
            SystemsRepository systemsRepository = new SystemsRepository();
            return systemsRepository.LoginUser(username, password, acnttype);
        }
        public string getreport()
        {
            SystemsRepository systemsRepository = new SystemsRepository();
            return systemsRepository.getreport();
        }
        public string getdailyreport()
        {
            SystemsRepository systemsRepository = new SystemsRepository();
            return systemsRepository.getdailyreport();
        }
        public string get_total()
        {
            SystemsRepository systemsRepository = new SystemsRepository();
            return systemsRepository.get_total();
        }
        public string get_total_today()
        {
            SystemsRepository systemsRepository = new SystemsRepository();
            return systemsRepository.get_total_today();
        }
        public string get_violation()
        {
            SystemsRepository systemsRepository = new SystemsRepository();
            return systemsRepository.get_violation();
        }
        public string insert_ticketcitation(
            int tid,
            string fname,
            string address,
            string licenseno,
            string vehicletype,
            string placeofviolation,
            int violationid
            )
        {
            SystemsRepository systemsRepository = new SystemsRepository();
            return systemsRepository.insert_ticketcitation(tid, fname, address, licenseno, vehicletype, placeofviolation, violationid);
        }
        public string insert_account(
           string fname,
           string mname,
           string lname,
           string username,
           string password,
           string acnttype
        )
        {
            SystemsRepository systemsRepository = new SystemsRepository();
            return systemsRepository.insert_account(fname, mname, lname, username, password, acnttype);
        }
        public string delete_citation(string id)
        {
            SystemsRepository systemsRepository =new SystemsRepository();
            return systemsRepository.delete_citation(id);
        }
        public string getuserfullname(string acntuid)
        {
            SystemsRepository systemsRepository = new SystemsRepository();
            return systemsRepository.GetUserFullName(acntuid);
        }
        public string get_statistics()
        {
            SystemsRepository systemsRepository = new SystemsRepository();
            return systemsRepository.proc_get_statistics();
        }
        public string prop_get_confiscated_license()
        {
            SystemsRepository systemsRepository = new SystemsRepository();
            return systemsRepository.prop_get_confiscated_license();
        }
    }
}