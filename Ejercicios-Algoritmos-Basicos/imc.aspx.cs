using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ejercicios_Algoritmos_Basicos
{

    public partial class imc : System.Web.UI.Page
    {
        string message = "";
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

            double height = this.FormatHeight( this.ClearTxt(txtHeight.Text) );
            double weight = double.Parse( this.ClearTxt(txtWeight.Text) );
            this.CalImc(weight, height);
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

        private void CalImc(double weight,double height)
        {
            
            double res = weight / (height * height);
            if (res < 18.5) {
               
                this.message = "imc actual " + Math.Round(res) + " = Peso inferior al normal";
              
            } else if (res >= 18.5 && res <= 24.9) {
               this.message = "imc actual " + Math.Round(res) + " = Normal";
            } else if (res >= 25.0 && res <= 29.9) {
               this.message = "imc actual " + Math.Round(res) + " = Peso superior al normal";

            } else if (res > 30) {
                this.message = "imc actual " + Math.Round(res) + " = Obesidad";
            }
            result.InnerHtml = message;
            this.debug(message);
        }

        private double FormatHeight(string num) {
            
            String tmp = "";
            for (int c = 0; c < num.Length;c++ ) {
                if (c == 1) tmp += ".";
                tmp += num[c]; 
            }
           
            return double.Parse(tmp);
        }

        private  string ClearTxt(string num) {
            num = num.Replace(".", "").Replace(",", "");
            try {
                double result = double.Parse(num);
            }
            catch (Exception e)
            {
                Response.Write("<script>alert('" + e + "');</script>");
            }
            return num;
        }
        private void debug(string v) {
            Response.Write("<script>alert('" + v + "');</script>");
        }
    }
}
