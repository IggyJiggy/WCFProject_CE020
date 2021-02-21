<%@ Page Title="" Language="C#" MasterPageFile="~/Employee.Master" AutoEventWireup="true" CodeBehind="DeleteEmployee.aspx.cs" Inherits="Application.DeleteEmployee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">  
<table id="panSearch" runat="server" style="width:auto; color:Black; font-family:Segoe UI; font-size:14px; float:left; text-align:left; padding:10px; padding-bottom:20px;" >  
<tr>  
<td>Employee ID</td>  
<td><asp:TextBox ID="txtSearch" runat="server" CssClass="textBox" Placeholder="Enter employee id to delete it" ></asp:TextBox></td>  
<td><asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="button" onclick="btnDelete_Click"   
        ></asp:Button></td>  
</tr>  
<tr>  
<td colspan="3" ><asp:Label ID="lblSearchResult" runat="server" Font-Size="Medium" ></asp:Label></td></tr>  
</table>  
 <hr />  
 <div style="float:left" >  
 <asp:GridView ID="grdEmployees" runat="server">  
        <AlternatingRowStyle BackColor="White" />  
        <HeaderStyle BackColor="#003300" Font-Bold="True" ForeColor="White" />  
    </asp:GridView>  
    </div>  
</asp:Content>