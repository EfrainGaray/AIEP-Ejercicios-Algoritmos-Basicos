using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ejercicios_Algoritmos_Basicos
{

    public partial class estacionamiento : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            foreach (var c in form.Controls)
            {
                if (c is TextBox)
                {
                    TextBox tb = (TextBox)c;
                    tb.Attributes.Add("placeholder", "Ingrese el valor indicado");
                   
                    tb.Attributes.Add("required", "required");
                }

            }
            txtHour.Attributes.Add("min", "1");
            txtHour.Attributes.Add("step", "1");

        }
        protected void btnSend_Click(object sender, EventArgs e)
        {
            string name = txtName.Text;
            string ppu = txtPpu.Text;
            int hour = this.ClearTxt(txtHour.Text);
            int pay = 0;
            for (int i = 1; i<= hour; i++) {
                if (i <= 2)
                {
                    pay += 550;
                }
                else if (i >= 3 && i <= 5)
                {
                    pay += 420;
                }
                else if (i >= 6 && i <= 10)
                {
                    pay += 380;
                }
                else if(i > 10){
                    pay += (hour - 10)*90;
                    break;
                }
            }
            
            this.debug("El valor del pago es $" + pay);

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
          private int ClearTxt(string num)
        {
            num = num.Replace(".", "").Replace(",", "");
            int result = 0;
            try
            {
                result = int.Parse(num);
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
