using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ejercicios_Algoritmos_Basicos
{

    public partial class conversor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            foreach (var c in form.Controls)
            {
                if (c is TextBox)
                {
                    TextBox tb = (TextBox)c;
                    tb.Attributes.Add("placeholder", "Ingrese el valor indicado");
                    tb.Attributes.Add("type", "number");
                    tb.Attributes.Add("required", "required");
                }

            }

        }
        protected void btnSend_Click(object sender, EventArgs e)
        {
            double unit = this.ClearTxt(txtUnit.Text);
            double conversor1 = this.ClearTxt(Conversor1.SelectedValue);
            double conversor2 = this.ClearTxt(Conversor2.SelectedValue);
            if (conversor1 > 0 && conversor2 > 0)
            {
                if (conversor1 > conversor2)
                {
                    unit /= (conversor1 / conversor2);
                }
                if (conversor1 < conversor2)
                {
                    unit *= conversor2;
                }

                result.InnerHtml = "La conversion es: " + unit.ToString();
            }
            else {
                result.InnerHtml = "ingrese la unidad de medida";
            }
           
        }


        protected void btnClear_Click(object sender, EventArgs e)
        {
            foreach (var c in form.Controls)
            {
                if (c is TextBox)
                {
                    TextBox tb = (TextBox)c;
                    tb.Text = "";
                }

            }
            result.InnerHtml = "";
        }

        private double ClearTxt(string num)
        {
            num = num.Replace(".", "").Replace(",", "");
            double result = 0.0;
            try
            {
                result = double.Parse(num);
            }
            catch (Exception e)
            {
                Response.Write("<script>alert('" + e + "');</script>");
            }
            return result;
        }

        private void debug(string v)
        {
            Console.WriteLine(v);
            Response.Write("<script>alert('" + v + "');</script>");
        }

       


    }
}
