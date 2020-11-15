using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ejercicios_Algoritmos_Basicos
{

    public partial class min_max : System.Web.UI.Page
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
            string numbers = txtNumbers.Text;
            int[] numbersOrder = new int[numbers.Length];
            int sum = 0;
            for (int i =0; i < numbers.Length; i++) {
                numbersOrder[i] = int.Parse(numbers[i].ToString());
                sum += numbersOrder[i];
            }
            Array.Sort(numbersOrder);
            int min = numbersOrder[0];
            int max = numbersOrder[numbersOrder.Length-1];
            result.InnerHtml = " La suma de los numeros es: " + sum + " el numero minimo es: " + min + " el numero maximo es: " + max;
            this.debug(" La suma de los numeros es: " + sum + " el numero minimo es: " + min + " el numero maximo es: " + max);
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

       
        private void debug(string v)
        {
            Console.WriteLine(v);
            Response.Write("<script>alert('" + v + "');</script>");
        }
    }
}
