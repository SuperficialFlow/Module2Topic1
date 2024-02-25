<%@ Page Language="C#" CodeBehind="~/Exercise3.aspx.cs"  Inherits="Module1Exercise1.Exercise3" %>

<%-- Exercise 3: Adding Logic to the WebPage --%>
<!DOCTYPE html>
<html>
<head>
    <title></title>
</head>
<body>
    <h1>What's my final grade?</h1>
    <form runat="server">
        <asp:Label runat="server" Text="Enter percentage value of your grade:"></asp:Label>
        <asp:TextBox runat="server" ID="percentageGrade"/>

        <%-- TODO 3.1: Add an event handler for the button below --%>
        <script runat="server">
            void DisplayGrade(object sender, EventArgs e) {
                compute();
            }
        </script>
        <%-- When the button is clicked it should display your equivalent numerial grade in the label with the id "finalGrade" --%>
        <%-- TODO 3.2 Add additional logic to the button such that when the grade of the user is 1.00 it displays a JavaScript alert with a congulatory message --%>
        <asp:Button ID="computegrade" Text="Calculate" runat="server" onclick="DisplayGrade"/>
        <br />
        <br />
        <asp:Label runat="server" Text="Final Grade: "></asp:Label>
        <asp:Label ID="finalGrade" runat="server" Text=""></asp:Label>
        <script runat="server">
            void compute() {
                string msg = "null";
                double finalg = 0;
                int grade = int.Parse(percentageGrade.Text);
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
                else if (percentageGrade.Text== "") 
                {
                    msg = "Invalid Input!";
                    finalg = 0;
                } else {
                    msg = "Invalid Input!";
                    finalg = 0;
                }                
                finalGrade.Text = finalg.ToString("F2");       
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + msg + "');", true);
            }
        </script>        
    </form>
</body>
</html>
