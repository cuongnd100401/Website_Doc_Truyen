<%@ Page Title="" Language="C#" MasterPageFile="~/LoginSite.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Web_Doc_Truyen.LoginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="LoginPage">
        <div class="Login-contairner">
            <div class="TieuDe">
                Admin Login
            </div>
            <div class="ip-contairner">
                <div>
                    <input type="text" placeholder="Your username..."  class="ip-login"/>
                </div>
                <div>
                    <input type="text" placeholder="Your password..."  class="ip-login"/>
                </div>
            </div>
            <div class="btn-contairner">
                <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btnLogin"/>
            </div>
        </div>
        
    </div>
</asp:Content>
