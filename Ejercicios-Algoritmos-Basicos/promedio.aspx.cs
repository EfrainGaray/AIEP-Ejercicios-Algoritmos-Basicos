using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ejercicios_Algoritmos_Basicos
{
    public partial class promedio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            foreach (var c in form.Controls)
            {
                if (c is TextBox) 
                {
                    TextBox tb = (TextBox)c;
                    tb.Attributes.Add("placeholder", "70");
                    tb.Attributes.Add("type", "number");
                    tb.Attributes.Add("required", "required");
                    tb.Attributes.Add("min", "0");
                    tb.Attributes.Add("max", "70");
                }

            }
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            System.Web.UI.HtmlControls.HtmlGenericControl res = new System.Web.UI.HtmlControls.HtmlGenericControl("div");
            try
            {
                foreach (var c in form.Controls)
                {
                    if (c is TextBox)
                    {
                        TextBox tb = (TextBox)c;
                        tb.Text = tb.Text.Replace(".", "").Replace(",", "");
                        tb.Text = (tb.Text.Length == 1) ? (tb.Text + 0) : tb.Text;
                    }
                }
                Double score1 = Double.Parse(txtScore1.Text);
                Double score2 = Double.Parse(txtScore2.Text);
                Double score3 = Double.Parse(txtScore3.Text);
                Double scoreFinal = (score1 + score2 + score3) / 3;
               
                if (scoreFinal >= 40)
                {
                    res.Attributes.Add("class", "notification is-success");
                    res.InnerText = "su nota promedio es: "+ scoreFinal.ToString() + " Y esta Aprobado";
                    result.Controls.Add(res);
                }
                else {
                    res.Attributes.Add("class", "notification is-danger");
                    res.InnerText = "su nota promedio es: "+ scoreFinal.ToString() + " Y esta Rechazado";
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