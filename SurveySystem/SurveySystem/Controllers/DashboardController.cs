using SurveySystem.Utils;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SurveySystem.Controllers
{
    public class DashboardController : BaseController
    {
        
        public ActionResult Index()
        {
            var model = db.AnswerLine.ToList();
            return View(model);
        }
    }
}