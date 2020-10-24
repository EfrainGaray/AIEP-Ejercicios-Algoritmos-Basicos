using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ejercicios_Algoritmos_Basicos
{
    public partial class ecuacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtX.Attributes.Add("style", "padding-left:130px");
            txtX.Attributes.Add("type", "number");
            txtX.Attributes.Add("required", "required");
            Session["menuactive"] = "ecuacion";
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            System.Web.UI.HtmlControls.HtmlGenericControl res = new System.Web.UI.HtmlControls.HtmlGenericControl("div");
            try
            {
                Double x = Double.Parse(txtX.Text);
                Double y = 3 * (x * x) + 7 * (x) - 15;

                if (y%2 == 0) {
                    res.Attributes.Add("class", "notification is-info");
                    res.InnerText = "El resultado es : " + y + " y es par";
                    result.Controls.Add(res);
                }
                else
                {
                    res.Attributes.Add("class", "notification is-info");
                    res.InnerText = "El resultado es : " + y + " y es impar";
                    result.Controls.Add(res);
                }
               
            }
            catch (Exception)
            {
                res.Attributes.Add("class", "notification is-danger");
                res.InnerText = "Se han ingresados valores no esperados vuelva a intentarlo por favor";
                result.Controls.Add(res);
                throw;
            }
        }
    }
}