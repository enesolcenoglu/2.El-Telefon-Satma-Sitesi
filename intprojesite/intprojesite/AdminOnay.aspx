<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminOnay.aspx.cs" Inherits="intprojesite.AdminOnay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        body {
            background-color: #dbd1f9;
            margin-right: 0px;
        }
        .auto-style2 {
            height: 20px;
        }
    </style>

    <form id="form1" runat="server">
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <table class="nav-justified" style="height: 366px">

                    <tr>
                        <td style="width: 137px">
                            <br />
                            Model:<br />
                            <br />
                            Fotoğraf Link:</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("TelModel") %>'></asp:TextBox>
                            <br />
                            <br />
                            <asp:TextBox ID="Tb_Link" runat="server" Width="177px" ReadOnly="True" Text='<%# Eval("TelFoto") %>'></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 137px">Telefon Hafıza:</td>
                        <td>
                            <asp:TextBox ID="Tb_Hafiza" runat="server" Width="177px" ReadOnly="True" Text='<%# Eval("TelHafiza") %>'></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 137px; height: 20px">Açıklama:</td>
                        <td style="height: 20px">
                            <asp:TextBox ID="Tb_Aciklama" runat="server" Height="146px" TextMode="MultiLine" Width="353px" ReadOnly="True" Text='<%# Eval("TelAciklama") %>'></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 137px">İAd Soyad:</td>
                        <td>
                            <asp:TextBox ID="Tb_Satici" runat="server" Width="177px" ReadOnly="True" Text='<%# Eval("TelSatici") %>'></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 137px; height: 22px">İİletişim:</td>
                        <td style="height: 22px">
                            <asp:TextBox ID="Tb_iletisim" runat="server" Width="177px" ReadOnly="True" Text='<%# Eval("Teliletisim") %>'></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 137px">Fiyat :<br /></td>
                        <td>
                            <asp:TextBox ID="Tb_Fiyat" runat="server" Width="177px" ReadOnly="True" Text='<%# Eval("TelFiyat") %>'></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 137px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 137px">
                            <br />
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="TelOnay.aspx?Telid=<%# Eval("TelefonID") %>"><div class="btn btn-danger">Onayla</div></a> </td>
                    </tr>
                    <tr>
                        <td style="width: 137px"></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td style="width: 137px">
                            <br />
                        </td>
                        <td style="border-top-style: solid; border-bottom-style: inherit; border-bottom-width: medium; border-top-width: thick;">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2"></td>
                        <td class="auto-style2"></td>
                    </tr>
                    <tr>
                        <td style="width: 137px">&nbsp;</td>
                        <td style="border-width: thick; border-style: inherit;">&nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </form>
</asp:Content>
