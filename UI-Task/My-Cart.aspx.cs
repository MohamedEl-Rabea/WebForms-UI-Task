using System;
using System.Collections.Generic;

namespace UI_Task
{
    public partial class My_Cart : System.Web.UI.Page
    {
        class product
        {
            public int Id { get; set; }
            public string Name { get; set; }
            public double Price { get; set; }
            public string Description { get; set; }
            public int Amount { get; set; }

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            List<product> products = new List<product>
            {
                new product{ Id = 1, Name = "Wolfpack Jacket - Black", Price = 179, Description = "Test description", Amount = 2},
                new product{ Id = 2, Name = "Storm Jacket - Olive", Price = 150, Description = "Test description", Amount = 3},
                new product{ Id = 3, Name = "Stealth Jacket - Fatigue", Price = 199, Description = "Test description", Amount = 2},
                new product{ Id = 4, Name = "Operator Jacket - Black", Price = 99, Description = "Test description", Amount = 4},
                new product{ Id = 5, Name = "Navigator acket - Black", Price = 79, Description = "Test description", Amount = 3},
                new product{ Id = 6, Name = "Gulf Jacket - Olive", Price = 279, Description = "Test description", Amount = 1},
                new product{ Id = 7, Name = "Compound Jacket - Acid ", Price = 159, Description = "Test description", Amount = 2},
            };
            GridViewCart.DataSource = products;
            GridViewCart.DataBind();
        }
    }
}