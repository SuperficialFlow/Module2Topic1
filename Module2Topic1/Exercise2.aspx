<%@ Page Language="C#" CodeBehind="~/Exercise2.aspx.cs" Inherits="Module1Exercise1.Exercise2" %>

<%-- Exercise 2: Exploring ASP.NET Form Controls --%>
<%-- Useful References: https://www.tutorialspoint.com/asp.net/index.htm --%>
<!DOCTYPE html>
<html>
<head>
    <title>Malayan Music Festival Registration</title>
</head>
<body>
    <h1>Malayan Music Festival Registration</h1>
    <form runat="server" style="text-align:left">
        <%-- TODO 3.1 Create two text boxes for the first name and last name --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_basic_controls.htm#:~:text=Text%20Boxes%20and%20Labels --%>
        <h>First Name: </h> <asp:TextBox id="fname" runat="server"></asp:TextBox> <br />
        <h>Last Name: </h> <asp:TextBox id="lname" runat="server"></asp:TextBox> <br />
        <%-- Todo 3.2 Create a text box for inputting the age of the user. Make sure to set the TextMode to the proper value--%>
        <h>Age Group: </h> <asp:TextBox id="agegroup" runat="server" TextMode="Number"></asp:TextBox> <br />
        <%-- TODO 3.3 Create a DropDownList for the ticket type. It must have the following options: Starter, General Admissions, Gold, VIP --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_basic_controls.htm#:~:text=DropDownList --%>
        <h>Ticket Type: </h> 
        <asp:DropDownList id="tickettype" runat="server">
            <asp:ListItem Enabled="true"></asp:ListItem>
            <asp:ListItem Text="Sample" Value="1"></asp:ListItem>
            <asp:ListItem Text="General" Value="2"></asp:ListItem>
            <asp:ListItem Text="Admissions" Value="3"></asp:ListItem>
            <asp:ListItem Text="Gold" Value="4"></asp:ListItem>
            <asp:ListItem Text="VIP" Value="5"></asp:ListItem>
        </asp:DropDownList> <br />
        <%-- TODO 3.4 Create a Radio Button List for selecing which days they are planning to attend. It must have following options: Day 1 Only, Day 2 Only, Both Day 1 and 2--%>
        <%-- Hint: https://learn.microsoft.com/en-us/dotnet/api/system.web.ui.webcontrols.radiobuttonlist?view=netframework-4.8.1#:~:text=RadioButtonList%20id=%22RadioButtonList1%22 --%>
        <asp:RadioButton id="days1" runat="server" groupname="days" Text="Day 1"/> 
        <asp:RadioButton id="days2" runat="server" groupname="days" Text="Day 2"/> 
        <asp:RadioButton id="days12" runat="server" groupname="days" Text="Both Day 1 and 2"/> <br />
        <%-- TODO 3.5 Create a Checkbox List for the performances they are planning to attend. List down your favorite arists for the options. --%>
        <%-- It must look something like --%>
        <%-- Which performances are you planning to attend? --%>
        <%-- <Artist Name 1> - [ ] --%>
        <%-- <Artist Name 2> - [x] --%>
        <%-- <Artist Name 3> - [ ] --%>
        <%-- Hint: https://learn.microsoft.com/en-us/dotnet/api/system.web.ui.webcontrols.checkboxlist?view=netframework-4.8.1#:~:text=CheckBoxList%20id=%22checkboxlist1%22 --%>
        <br /> <h>Which performances are you planning to attend?</h> <br />
        <h>Self Deception - </h><asp:CheckBox id="art1" runat="server" checkboxgroup="artists"/> <br />
        <h>Sullivan King - </h><asp:CheckBox id="art2" runat="server" checkboxgroup="artists"/> <br />
        <h>AJR - </h><asp:CheckBox id="art3" runat="server" checkboxgroup="artists"/> <br />
        <h>Amaranthe - </h><asp:CheckBox id="art4" runat="server" checkboxgroup="artists"/> <br />
        <h>Friday Pilots Club - </h><asp:CheckBox id="art5" runat="server" checkboxgroup="artists"/> <br />
        <%-- TODO 3.6 Create a FileUpload for their proof of payment. It must only accept JPG and PNG files. --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_file_uploading.htm#:~:text=%3Ch3%3E%20File%20Upload:%3C/h3%3E --%>
    </form>
</body>
</html>