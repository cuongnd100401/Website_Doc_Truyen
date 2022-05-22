<%@ Page Title="" Language="C#" MasterPageFile="~/MainSite.Master" AutoEventWireup="true" CodeBehind="TruyenPage.aspx.cs" Inherits="Web_Doc_Truyen.TruyenPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="HomePage">
        <div class="TieuDe">
            <asp:Label ID="lbTieuDe" runat="server" Text="Truyên"></asp:Label>
        </div>
        <div class="DSTuyen">
            <asp:DataList ID="DLT" runat="server">
                <ItemTemplate>
                    <div class="DLT-it">
                        <div style="height: 100%; display: flex; align-items: center; justify-content: center; width: 200px;">
                            <img src="<%#Eval("HinhAnh") %>"  style="width: 180px; height: 80px; object-fit: cover; object-position: 100% 40%;"/>
                        </div>
                        <div class="DLT-it-c2">
                            <a>

                            </a>
                        </div>
                        <a href="#">
                            <div style="height: 100%; display: flex; align-items: center; justify-content: center; width: 200px;">
                                <%#Eval("soCT") %>CHƯƠNG
                            </div>
                        </a>
                        
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </div>
</asp:Content>
