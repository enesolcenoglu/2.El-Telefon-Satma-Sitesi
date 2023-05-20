<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="intprojesite.iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <style>
        body {
            background-color: #dbd1f9;
            margin-right: 0px;
        }
        </style>
    <form id="form1" runat="server" style="background-color: #dbd1f9">
        <p style="background-color: #dbd1f9">
            <table class="nav-justified" style="height: 159px">
                <tr>
                    <td style="border-style: double; background-color: #dbd1f9;"><strong style="background-color: #CCCCFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Text="Adınız Soyadınız"></asp:Label>
                        &nbsp;:</strong></td>
                    <td style="border-style: double; background-color: #dbd1f9;"><strong>&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TB_Ad" runat="server" Height="27px" Width="274px" BackColor="#CCCCFF"></asp:TextBox>
                        <br />
                    </strong>
                    </td>
                </tr>
                <tr>
                    <td class="modal-lg" style="border-style: double; background-color: #dbd1f9;"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mail Adresiniz :</strong></td>
                    <td style="border-style: double; background-color: #dbd1f9;"><strong>&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="TB_Mail" runat="server" Height="27px" Width="274px" BackColor="#CCCCFF"></asp:TextBox>
                        &nbsp;<br />
                    </strong></td>
                </tr>
                <tr>
                    <td aria-orientation="horizontal" class="modal-sm" style="border-style: double; background-color: #dbd1f9;"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mesajınız : </strong></td>
                    <td style="border-style: double; background-color: #dbd1f9">&nbsp;<strong>&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TB_Mesaj" runat="server" Height="212px" TextMode="MultiLine" Width="575px" BackColor="#CCCCFF"></asp:TextBox>
                        &nbsp;</strong></td>
                </tr>
                <tr>
                    <td class="modal-sm" style="background-color: #dbd1f9;"></td>
                    <td style="background-color: #dbd1f9"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                        &nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Btn_Gonder" runat="server" BackColor="#CCFFFF" Font-Bold="True" Font-Overline="True" Font-Size="Large" Font-Strikeout="False" Font-Underline="True" ForeColor="Black" Height="84px" Text="GÖNDER" Width="196px" OnClick="Button1_Click" />
                    </strong>
                    </td>
                </tr>
            </table>
        </p>
    </form>
</asp:Content>
