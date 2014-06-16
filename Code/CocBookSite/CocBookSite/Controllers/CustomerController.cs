using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CocBookSite.Models;
using System.Web.Security;
using CocBookSite.ViewModels;

namespace CocBookSite.Controllers
{
    public class CustomerController : Controller
    {
        //
        // GET: /Customer/

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Register()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Register(FormCollection form)
        {
            string username = form["user-name"];
            string password = form["pass-word"];
            string fullname = form["full-name"];
            string email = form["user-email"];
            string phone = form["phone"];
            string address = form["address"];
            string district = form["district"];

            Account newAcc = new Account();
            newAcc.Active = true;
            newAcc.Username = username;
            newAcc.Password = password;
            newAcc.RoleID = 1;

            Customer newCus = new Customer();
            newCus.Username = username;
            newCus.Fullname = fullname;
            newCus.Phone = phone;
            newCus.Email = email;
            newCus.District = district;
            newCus.Street = address;
            newCus.City = "HCM";
            newCus.Point = 0;

            using (var dbContext = new CocBookEntities())
            {
                dbContext.Accounts.Add(newAcc);
                dbContext.Customers.Add(newCus);
                dbContext.SaveChanges();
            }

            FormsAuthentication.SetAuthCookie(username, false);
            HttpContext.Session.Add("username", username);

            return RedirectToAction("Profile");

        }

        public ActionResult Profile()
        {
            using (var dbContext = new CocBookEntities())
            {
                string username = (string)HttpContext.Session["username"];
                if (username == null)
                {
                    HttpCookie authCookie = Request.Cookies[FormsAuthentication.FormsCookieName];
                    if (authCookie != null)
                    {
                        FormsAuthenticationTicket ticket = FormsAuthentication.Decrypt(authCookie.Value);
                        username = ticket.Name;
                        HttpContext.Session.Add("username", username);
                    }
                }
                Customer cus = (from c in dbContext.Customers
                                where c.Username == username
                                select c).SingleOrDefault();
                if (cus == null)
                {
                    //return View("Error");
                    cus = new Customer();
                }
                UserProfile ups = new UserProfile();
                ups.CusInfo = cus;
                if (TempData["InfoMess"] != null)
                {
                    ViewBag.InfoMess = TempData["InfoMess"];
                }
                return View(ups);

            }

        }

        [HttpPost]
        public ActionResult UpdateInfo(FormCollection form)
        {
            string fullname = form["full-name"];
            string email = form["user-email"];
            string phone = form["phone"];
            string address = form["address"];
            string district = form["district"];

            if (HttpContext.Session["username"] == null)
            {
                return View("Error");
            }
            using (var dbContext = new CocBookEntities())
            {
                string username = (string)HttpContext.Session["username"];

                Customer cus = (from c in dbContext.Customers
                                where c.Username == username
                                select c).Single();
                cus.Fullname = fullname;
                cus.Phone = phone;
                cus.Email = email;
                cus.District = district;
                cus.Street = address;
                cus.City = "HCM";
                dbContext.SaveChanges();

                UserProfile ups = new UserProfile();
                ups.CusInfo = cus;
                TempData["InfoMess"] = "Thông tin tài khoản đã được cập nhật...";

                return RedirectToAction("Profile", "Customer");

            }

        }
    }
}
