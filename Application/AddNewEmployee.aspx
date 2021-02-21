<%@ Page Title="" Language="C#" MasterPageFile="~/Employee.Master" AutoEventWireup="true" CodeBehind="AddNewEmployee.aspx.cs" Inherits="Application.AddNewEmployee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">  
  
</asp:Content>  
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">  
<table style="width:100%; color:Black; font-family:Segoe UI; font-size:14px; float:left; text-align:left;">  
<tr>  
<td colspan="2"><asp:Label ID="lblMsg" runat="server" Font-Size="Medium" ></asp:Label></td>  
</tr>  
<tr>  
<td>Employee ID</td>  
<td><asp:TextBox ID="txtEmpID" runat="server" CssClass="textBox" ></asp:TextBox></td>  
</tr>  
<tr>  
<td>Name</td>  
<td><asp:TextBox ID="txtName" runat="server" CssClass="textBox" ></asp:TextBox></td>  
</tr>  
<tr>  
<td>Email</td>  
<td><asp:TextBox ID="txtEmail" runat="server" CssClass="textBox" ></asp:TextBox></td>  
</tr>  
<tr>  
<td>Phone</td>  
<td><asp:TextBox ID="txtPhone" runat="server" CssClass="textBox" ></asp:TextBox></td>  
</tr>  
<tr>  
<td>Gender</td>  
<td>  
<asp:RadioButtonList ID="rbtnGender" runat="server" RepeatColumns="2" CssClass="textBox" >  
    <asp:ListItem Selected="True">Male</asp:ListItem>  
    <asp:ListItem>Female</asp:ListItem>  
</asp:RadioButtonList></td>  
</tr>  
<tr>  
<td colspan="2">  
<asp:Button ID="btnSave" runat="server" Text="Save" CssClass="button"   
        onclick="btnSave_Click" />  
<asp:Button ID="bntReset" runat="server" Text="Reset" CssClass="button"   
        onclick="bntReset_Click" />  
</td>  
</tr>  
</table>  
</asp:Content>