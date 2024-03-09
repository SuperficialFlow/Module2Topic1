using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Module1Exercise1
{
    public partial class Exercise3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // TODO 3.3 Set the text value of the finalGrade label to "Submit your grade percentage to see your final grade!". Watch out for post backs

        }
        protected void compute()
        {
            string msg = "Invalid Input!";
            try
            {
                double finalg = 0;
                double grade = Convert.ToDouble(percentageGrade.Text);

                if (grade <= 100 && grade >= 96)
                {
                    msg = "Very Excellent!";
                    finalg = 1.00;
                }
                else if (grade < 96 && grade >= 91)
                {
                    msg = "Excellent!";
                    finalg = 1.25;
                }
                else if (grade < 91 && grade >= 87)
                {
                    msg = "Very Good!";
                    finalg = 1.50;
                }
                else if (grade < 87 && grade >= 82)
                {
                    msg = "Good";
                    finalg = 1.75;
                }
                else if (grade < 82 && grade >= 78)
                {
                    msg = "Very Nice!";
                    finalg = 2.00;
                }
                else if (grade < 78 && grade >= 73)
                {
                    msg = "Nice";
                    finalg = 2.25;
                }
                else if (grade < 73 && grade >= 69)
                {
                    msg = "Better";
                    finalg = 2.50;
                }
                else if (grade < 69 && grade >= 64)
                {
                    msg = "Needs more Work";
                    finalg = 2.75;
                }
                else if (grade < 64 && grade >= 60)
                {
                    msg = "Needs more Effort";
                    finalg = 3.00;
                }
                else if (grade < 60 && grade >= 0)
                {
                    msg = "Failed";
                    finalg = 5.00;
                }
                else if (percentageGrade.Text == "")
                {
                    msg = "Invalid Input!";
                    finalg = 0;
                }
                else
                {
                    msg = "Invalid Input!";
                    finalg = 0;
                }
                finalGrade.Text = finalg.ToString("F2");
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + msg + "');", true);
            }
            catch
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + msg + "');", true);
            }
        }
    }
}