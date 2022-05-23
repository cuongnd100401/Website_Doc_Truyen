<%@ Page Title="" Language="C#" MasterPageFile="~/MainSite.Master" AutoEventWireup="true" CodeBehind="TruyenDetail.aspx.cs" Inherits="Web_Doc_Truyen.TruyenDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div class="TieuDe">
            THÔNG TIN TRUYỆN
            <i class="fa-solid fa-circle-info marginl"></i>
        </div>
        <div class="Detail">
            <div class="Detail-contairner1">
                <img class="img-D" runat="server" id="imgTruyen" src="a" alt="Hình Ảnh"/>
                <div>

                </div>
            </div>
            <div class="Detail-contairner2">
                <div class="Ten-D">
                    <asp:Label ID="lbTenTruyen" runat="server" Text=""></asp:Label>
                </div>
                <div class="Mota-D">
                    <asp:Label ID="lbMota" runat="server" Text="Truyên"></asp:Label>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
