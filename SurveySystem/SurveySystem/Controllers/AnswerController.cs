using SurveySystem.Models;
using SurveySystem.Utils;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SurveySystem.Controllers
{
    public class AnswerController : BaseController
    {

        public ActionResult Index()
        {
            var model = db.Answer.Where(m=>m.UserCode == UserCode).ToList();
            return View(model);
        }
        public ActionResult Create(string code)
        {
            if (code==null)
            {
                List<SelectListItem> personList = (from person in db.Person
                                                   where person.Code != UserCode
                                                   select new SelectListItem
                                                   {
                                                       Text = person.NameSurname,
                                                       Value = person.Code.ToString()
                                                   }).ToList();
                ViewBag.Person = new SelectList(personList.OrderBy(m => m.Text), "Value", "Text");
                var questionModel = db.Question.ToList();
                
                db.SaveChanges();
                return View(questionModel);
            }
            else
            {
                CalculateScore(code);
                return RedirectToAction("Index");
            }
            
        }

        public void CalculateScore(string code )
        {
            double answeryes = 0, answerno = 0,scoreresult=0;
            var answer = db.Answer.FirstOrDefault(m => m.PersonCode == code && m.UserCode == UserCode);

            var answerLine = db.AnswerLine.Where(m => m.AnswerId == answer.Id).ToList();

            foreach (var item in answerLine)
            {
                if (item.Answer== Constants.AnswerType.Yes)
                {
                    answeryes++; 
                }
                else
                {
                    answerno++;
                }
            }
            scoreresult = (answeryes / (answeryes + answerno)) * 100;

            if (scoreresult>79)
            {
                answer.IsComplete = true;
            }
            else
            {
                answer.IsComplete = false;

            }
            answer.Score = scoreresult.ToString();
            db.SaveChanges();
        }

        public String SendData(AnswerModel AnswerModel)
        {
            int? month = DateTime.Now.Month;
            var model = db.Answer.FirstOrDefault(m => m.PersonCode == AnswerModel.Code && m.UserCode == UserCode && m.CreateDate.Value.Month==month);
            if (model !=null)
            {
                SaveAnswerLine(AnswerModel.Question,AnswerModel.Answer,model.Id,AnswerModel.Comment);
            }
            else
            {           
            Answer answer = new Answer();
            answer.PersonCode = AnswerModel.Code;
            answer.PersonName = AnswerModel.NameSurname;
            answer.UserCode = UserCode;
            answer.CreateDate = DateTime.Now;
            answer.CreateBy = NameSurname;
            
            
            db.Answer.Add(answer);
            db.SaveChanges();
            SaveAnswerLine(AnswerModel.Question,AnswerModel.Answer,answer.Id,AnswerModel.Comment);
            
            }
            return "True";
        }
        public void SaveAnswerLine(string question,string answer,int answerId,string comment )
        {
            var model = db.AnswerLine.FirstOrDefault(m=>m.AnswerId==answerId && m.Question==question);

            if (model !=null)
            {
                model.Answer = answer;
                
                db.SaveChanges();
            }
            else
            {
                AnswerLine answerLine = new AnswerLine();
                answerLine.AnswerId = answerId;
                answerLine.Answer = answer;
                answerLine.Question = question;
                answerLine.Comment = comment;
                
                db.AnswerLine.Add(answerLine);
                db.SaveChanges();
            }

           
        }

        public  ActionResult Detail(int? Id)
        {
            var model = db.AnswerLine.Where(m => m.AnswerId == Id).ToList();

            return View(model);
        }
    }
}