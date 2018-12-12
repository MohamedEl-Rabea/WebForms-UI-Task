using System;
using System.Collections.Generic;

namespace UI_Task
{
    class product
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public double Price { get; set; }
        public string Description { get; set; }
        public string ImageId { get; set; }

    }
    public partial class Master_Test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<product> products = new List<product>
            {
                new product{ Id = 1, Name = "Wolfpack Jacket - Black", Price = 179, Description = "Test description", ImageId = "1"},
                new product{ Id = 2, Name = "Storm Jacket - Olive", Price = 150, Description = "Test description", ImageId = "2"},
                new product{ Id = 3, Name = "Stealth Jacket - Fatigue", Price = 199, Description = "Test description", ImageId = "3"},
                new product{ Id = 4, Name = "Operator Jacket - Black", Price = 99, Description = "Test description", ImageId = "4"},
                new product{ Id = 5, Name = "Navigator acket - Black", Price = 79, Description = "Test description", ImageId = "5"},
                new product{ Id = 6, Name = "Gulf Jacket - Olive", Price = 279, Description = "Test description", ImageId = "6"},
                new product{ Id = 7, Name = "Compound Jacket - Acid ", Price = 159, Description = "Test description", ImageId = "7"},
                new product{ Id = 8, Name = "Arrow Shacket - Olive", Price = 149, Description = "Test description", ImageId = "8"},
                new product{ Id = 9, Name = "Arrow Shacket - Indigo", Price = 139, Description = "Test description", ImageId = "9"},
                new product{ Id = 10, Name = "Trench Jeans - Bleach", Price = 145, Description = "Test description", ImageId = "10"},
                new product{ Id = 11, Name = "Trench Jeans - Coal", Price = 135, Description = "Test description", ImageId = "11"},
                new product{ Id = 12, Name = "Trench Jeans - Midnight", Price = 165, Description = "Test description", ImageId = "12"},
            };
            listView.DataSource = products;
            listView.DataBind();
        }
    }
}