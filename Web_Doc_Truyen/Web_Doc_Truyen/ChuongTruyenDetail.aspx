<%@ Page Title="" Language="C#" MasterPageFile="~/MainSite.Master" AutoEventWireup="true" CodeBehind="ChuongTruyenDetail.aspx.cs" Inherits="Web_Doc_Truyen.ChuongTruyenDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div style="height:30px;">

        </div>
        <div class="ct-TenT">
            <asp:Label ID="lbTenT" runat="server" Text=""></asp:Label>
        </div>
        <div class="ct-TenCT">
            <asp:Label ID="lbTenCT" runat="server" Text=""></asp:Label>
        </div>
    </div>
</asp:Content>
