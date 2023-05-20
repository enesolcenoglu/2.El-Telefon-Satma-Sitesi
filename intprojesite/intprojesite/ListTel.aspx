<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ListTel.aspx.cs" Inherits="intprojesite.ListTel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        body {
            background-color: #dbd1f9;
            margin-right: 0px;
        }
        .auto-style1 {
            height: 60px;
        }
    </style>
    <form id="form1" runat="server" submitdisabledcontrols="False">
        <br />
        <asp:DataList ID="DataList1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black">

            <AlternatingItemStyle BackColor="PaleGoldenrod" />
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />

            <ItemTemplate>
                <table class="nav-justified">
                    <tr>
                        <td style="border-style: solid; border-width: medium; padding: inherit; position: static; z-index: auto; visibility: inherit">
                            <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label1" runat="server" Font-Size="Large" Text='<%# Eval("TelModel") %>'></asp:Label>
                            </strong>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-style: solid; border-width: medium; padding: inherit; position: static; z-index: auto; visibility: inherit">
                            <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label2" runat="server" Font-Size="Large" Text='<%# Eval("Markaisim") %>'></asp:Label>
                            </strong>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-style: inherit; border-width: medium; padding: inherit; position: static; z-index: auto; visibility: inherit">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="border-style: solid; border-width: medium; padding: inherit; position: static; z-index: auto; visibility: inherit">
                            <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
                            <asp:Image ID="Image1" runat="server" Height="345px" ImageUrl='<%# Eval("TelFoto") %>' Width="715px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1" style="border-style: solid; border-width: medium; padding: inherit; position: static; z-index: auto; visibility: inherit">
                            <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Large" Text='<%# Eval("TelFiyat") %>'></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label8" runat="server" Text="TL"></asp:Label>
                            </strong>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-style: solid; border-width: medium; padding: inherit; position: static; z-index: auto; visibility: inherit">
                            <strong>
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; AÇIKLAMA :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("TelAciklama") %>'></asp:Label>
                            </strong>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-style: solid; border-width: medium; padding: inherit; position: static; z-index: auto; visibility: inherit;">
                            <strong>
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; HAFIZA :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("TelHafiza") %>'></asp:Label>
                            </strong>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-style: solid; border-width: medium; padding: inherit; position: static; z-index: auto; visibility: inherit">
                            <strong>
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; İLETİŞİM İBLGİLERİ :&nbsp;&nbsp;
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("TelSatici") %>'></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label6" runat="server" Text='<%# Eval("Teliletisim") %>'></asp:Label>
                            </strong>
                        </td>
                    </tr>
                    <tr>
                        <td style="border-style: inherit; border-width: medium; padding: inherit; position: static; z-index: auto; visibility: inherit">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="border-style: inherit; border-width: medium; padding: inherit; position: static; z-index: auto; visibility: inherit">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="border-style: inherit; border-width: medium; padding: inherit; position: static; z-index: auto; visibility: inherit"><strong></strong></td>
                    </tr>
                    <tr>
                        <td style="border-style: inherit; border-width: medium; padding: inherit; position: static; z-index: auto; visibility: inherit"><strong></strong></td>
                    </tr>
                </table>
            </ItemTemplate>
            <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        </asp:DataList>

        <br />

    </form>
</asp:Content>
