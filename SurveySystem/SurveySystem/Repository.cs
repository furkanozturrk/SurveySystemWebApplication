using SurveySystem.Abstract;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SurveySystem
{
    public class Repository<T> : IRepository<T> where T : class
    {

        public int Create(T obj)
        {
            throw new NotImplementedException();
        }

        public int Delete(T obj)
        {
            throw new NotImplementedException();
        }

        public int Edit(T obj)
        {
            throw new NotImplementedException();
        }
    }
}