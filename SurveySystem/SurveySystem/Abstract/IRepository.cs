using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SurveySystem.Abstract
{
    public interface IRepository<T>
    {
        int Edit(T obj);
        int Create(T obj);
        int Delete(T obj);


    }
}
