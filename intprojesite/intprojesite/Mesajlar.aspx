<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Mesajlar.aspx.cs" Inherits="intprojesite.Mesajlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        body {
            background-color: #dbd1f9;
            margin-right: 0px;
        }
        .auto-style1 {
            height: 20px;
        }
    </style>
    <form id="form1" runat="server">
        <table class="nav-justified">
            <tr>
                <td class="auto-style1" style="font-size: 25pt; font-weight: bold; font-style: italic; border-style: dashed; padding: 10px; color: #000000; position: inherit;">---MESAJLAR---</td>
            </tr>
            <tr>
                <td style="height: 20px">&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:DataList ID="DataList1" runat="server">
                        <ItemTemplate>
                            <table class="nav-justified">
                                <tr>
                                    <td>&nbsp;&nbsp; Gönderen Kişi : &nbsp;<asp:Label ID="Lbl_Kullanici" runat="server" Text='<%# Eval("iletisimAd") %>'></asp:Label>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="height: 20px">&nbsp;&nbsp; Gönderen Kişinin Mail Adresi :&nbsp;<asp:Label ID="Lbl_Mail" runat="server" Text='<%# Eval("iletisimMail") %>'></asp:Label>
                                        &nbsp;<br />
                                        <br />
                                        &nbsp;&nbsp; Mesaj : </td>
                                </tr>
                                <tr>
                                    <td style="height: 18px; margin-left: 40px;">&nbsp;<br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:TextBox ID="TB_Mesaj" runat="server" Height="187px" ReadOnly="True" Text='<%# Eval("iletisimMesaj") %>' TextMode="MultiLine" Width="481px"></asp:TextBox>
                                        <br />
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <a href="MesajSil.aspx?x=<%# Eval("iletisimID" )%>">
                                        <div class="btn btn-danger">Sil</div>
                                    </a>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</asp:Content>
