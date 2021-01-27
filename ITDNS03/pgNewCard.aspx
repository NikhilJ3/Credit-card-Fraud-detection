<%@ Page Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="pgNewCard.aspx.cs" Inherits="pgNewCard" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 490px; height: 340px">
        <tr>
            <td style="width: 46px; height: 21px">
            </td>
            <td style="width: 100px; height: 21px">
                <asp:Label ID="lblerror" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="Red"
                    Text="Sorry The Card Number Already Exisit" Visible="False" Width="285px"></asp:Label></td>
            <td style="width: 100px; height: 21px">
            </td>
        </tr>
        <tr>
            <td style="width: 46px; height: 21px">
                <br />
                &nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Small" Height="12px"
                    Text="ID :" Width="115px"></asp:Label><br />
                <br />
            </td>
            <td style="width: 100px; height: 21px">
                <asp:TextBox ID="txtCardNo" runat="server" MaxLength="16" Width="155px" Height="20px" AutoPostBack="True" OnTextChanged="txtCardNo_TextChanged"></asp:TextBox></td>
            <td style="width: 100px; height: 21px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 46px">
                <br />
                &nbsp;<asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Small" Height="12px"
                    Text="NAME:" Width="124px"></asp:Label><br />
                <br />
            </td>
            <td style="width: 100px">
                &nbsp;<asp:TextBox ID="txtACNO" runat="server" MaxLength="20" Width="153px" Height="20px"></asp:TextBox></td>
            <td style="width: 100px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtACNO"
                    ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Size="Large">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 46px">
                <br />
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Small" Height="13px"
                    Text="PASSWORD :" Width="118px"></asp:Label><br />
                <br />
            </td>
            <td style="width: 100px">
                <asp:TextBox ID="txtBankName" runat="server" Height="22px" Width="230px"></asp:TextBox></td>
            <td style="width: 100px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtBankName"
                    ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Size="Large">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 46px">
                <br />
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Small" Height="23px"
                    Text="RE-ENTER PASSWORD :" Width="141px"></asp:Label><br />
                <br />
            </td>
            <td style="width: 100px">
                <asp:TextBox ID="txtACName" runat="server" Width="190px" Height="24px"></asp:TextBox></td>
            <td style="width: 100px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtACName"
                    ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Size="Large">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 46px; height: 59px;">
                <br />
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Small" Text="CREDIT LIMIT"
                    Width="123px"></asp:Label><br />
                <br />
            </td>
            <td style="width: 100px; height: 59px;">
                <asp:TextBox ID="txtAmt" runat="server" Width="92px" Height="22px"></asp:TextBox></td>
            <td style="width: 100px; height: 59px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtAmt"
                    ErrorMessage="RequiredFieldValidator" Font-Bold="True" Font-Size="Large">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 46px">
                <br />
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</td>
            <td style="width: 100px">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<div style="text-align: center">
                    <table style="width: 212px; height: 42px">
                        <tr>
                            <td style="width: 100px">
                                <asp:LinkButton ID="btnSubmit" runat="server" Font-Bold="True" Font-Names="Palatino Linotype"
                                    Font-Size="Large" OnClick="btnSubmit_Click">SUBMIT</asp:LinkButton></td>
                            <td style="width: 100px">
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" Font-Bold="True"
                                    Font-Names="Palatino Linotype" Font-Size="Large">CANCEL</asp:LinkButton></td>
                        </tr>
                    </table>
                </div>
            </td>
            <td style="width: 100px">
            </td>
        </tr>
    </table>
</asp:Content>

