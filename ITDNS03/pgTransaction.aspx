<%@ Page Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="pgTransaction.aspx.cs" Inherits="pgTransaction" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: left">
        <table>
            <tr>
                <td style="width: 100px">
                    <asp:Label ID="lblError" runat="server" Font-Bold="True" Font-Names="Eras Light ITC"
                        Font-Size="Large" ForeColor="Red" Height="42px"
                        Visible="False" Width="484px"></asp:Label></td>
            </tr>
        </table>
    </div>
    <table style="width: 519px; height: 340px">
        <tr>
            <td style="width: 41px; height: 21px">
                <br />
                &nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Height="15px" Text="NAME  :"
                    Width="135px"></asp:Label><br />
            </td>
            <td style="width: 100px; height: 21px">
                <asp:TextBox ID="txtCardNo" runat="server" AutoPostBack="True" Height="19px" MaxLength="16"
                    OnTextChanged="txtCardNo_TextChanged" Width="153px"></asp:TextBox></td>
            <td style="width: 321px; height: 21px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtACNO"
                    ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Size="Large">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 41px; height: 44px">
                <br />
                &nbsp;<asp:Label ID="Label3" runat="server" Font-Bold="True" Text="AMOUNT :"
                    Width="154px"></asp:Label><br />
            </td>
            <td style="width: 100px; height: 44px">
                &nbsp;<asp:TextBox ID="txtACNO" runat="server" Height="21px" MaxLength="20" Width="153px" ReadOnly="True"></asp:TextBox></td>
            <td style="width: 321px; height: 44px">
            </td>
        </tr>
        
        <tr>
            <td style="width: 41px; height: 32px">
                <br />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp; &nbsp; &nbsp;&nbsp;</td>
            <td style="width: 100px; height: 32px">
                <div style="text-align: center">
                    <div style="text-align: center">
                        <table style="height: 32px; width: 235px;">
                            <tr>
                                <td style="width: 100px">
                                    <asp:LinkButton ID="btnSubmit" runat="server" Font-Bold="True" Font-Names="Palatino Linotype"
                                        Font-Size="Large" OnClick="btnSubmit_Click">TRANSFER</asp:LinkButton></td>
                                <td style="width: 100px">
                                    <asp:LinkButton ID="btnCancel" runat="server" Font-Bold="True" Font-Names="Palatino Linotype"
                                        Font-Size="Large">CANCEL</asp:LinkButton></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </td>
            <td style="width: 321px; height: 32px">
            </td>
        </tr>
    </table>
</asp:Content>

