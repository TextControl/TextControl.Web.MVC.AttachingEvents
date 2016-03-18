using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TXTextControl;

namespace webeditor_css
{
    public partial class index : System.Web.UI.Page
    {
        protected void Button1_Click(object sender, EventArgs e)
        {
            string data;

            // save the document to a string variable
            TextControl1.SaveText(out data,
                TXTextControl.Web.StringStreamType.RichTextFormat);
            
            System.Web.UI.ScriptManager.RegisterClientScriptBlock(this, 
                this.GetType(), 
                "AlertBox", 
                "alert('Your document has been saved.');", 
                true);
        }
    }
}