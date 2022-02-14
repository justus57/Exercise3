using Microsoft.Ajax.Utilities;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exercise_3
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                details();
            }
        }
        [WebMethod]
        public static void details()
        {          
            var movie1 = JsonConvert.DeserializeObject<List<Foodtype>>(File.ReadAllText(@"Data.json"));
            string Foodname1 = movie1[0].name;
            string Foodname2 = movie1[1].name;
            string Foodname3 = movie1[2].name;
            string choice1food1 = movie1[0].choices[0].name;

            foreach (var element in choice1food1)
            {
                var data = element.ToString();               
            }
            
        }
    }

    public class Foodtype
    {
        public string name { get; set; }
        public Choice[] choices { get; set; }
        public Related[] related { get; set; }
    }

    public class Choice
    {
        public string name { get; set; }
    }

    public class Related
    {
        public string name { get; set; }
        public Choice1[] choices { get; set; }
    }

    public class Choice1
    {
        public string name { get; set; }
    }

}