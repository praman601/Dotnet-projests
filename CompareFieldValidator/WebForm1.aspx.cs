using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;


namespace CompareFieldValidator
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if(Page.IsValid)
            {
                Lblstatus.Text = "Data Saved";
                Lblstatus.ForeColor = System.Drawing.Color.Green;


            }
            else
            {
                Lblstatus.ForeColor = System.Drawing.Color.Red;
            }

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}