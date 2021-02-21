<%@ Page Title="" Language="C#" MasterPageFile="~/Employee.Master" AutoEventWireup="true" CodeBehind="DisplayEmployeeRecord.aspx.cs" Inherits="Application.DisplayEmployeeRecord" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView ID="grdEmployees" runat="server">  
       <AlternatingRowStyle BackColor="White" />  
       <HeaderStyle BackColor="#003300" Font-Bold="True" ForeColor="White" />  
   </asp:GridView>  
</asp:Content>
