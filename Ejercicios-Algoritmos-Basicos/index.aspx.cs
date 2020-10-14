using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ejercicios_Algoritmos_Basicos
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtPasword.Attributes.Add("placeholder", "************");
            txtPasword.Attributes.Add("required", "required");
            txtPasword.Attributes.Add("type", "password");
            txtEmail.Attributes.Add("placeholder", "user");
            txtEmail.Attributes.Add("required", "required");
            txtEmail.Attributes.Add("type", "text");
        } 

        protected void btnSend_Click(object sender, EventArgs e)
        {
            String user = txtEmail.Text;
            String pass = txtPasword.Text;
            System.Web.UI.HtmlControls.HtmlGenericControl res = new System.Web.UI.HtmlControls.HtmlGenericControl("div");
            result.Controls.Clear();
            if (user == "alumno1" && pass == "fuepenal")
            {
                res.Attributes.Add("class", "notification is-success");
                res.InnerText = "Ingreso del usuario validado correctamente";
                result.Controls.Add(res);
            }
            else
            {
                res.Attributes.Add("class", "notification is-danger");
                res.InnerText = "usuario y/o password incorrecto";
                result.Controls.Add(res);
            
            }
        }
    }
}