<%@ Page Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="pgLogin.aspx.cs" Inherits="pgLogin" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp; &nbsp;&nbsp;
    <div style="text-align: center">
        <div style="text-align: center">
            &nbsp;&nbsp;
            <table>
                <tr>
                    <td style="width: 100px; height: 142px;">
                        <table>
                            <tr>
                                <td style="width: 423px">
                                    <asp:Label ID="Label1" runat="server" Text="UserName" Font-Bold="True"></asp:Label></td>
                                <td style="width: 125px">
                                    <asp:TextBox ID="txtUName" runat="server" Height="21px" Width="155px" Font-Size="Medium"></asp:TextBox>
                                </td>
                                <td style="width: 100px">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtUName"
                                        ErrorMessage="UserName Required">*</asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
                                <td style="width: 423px">
                                    <asp:Label ID="Label2" runat="server" Text="Password" Font-Bold="True"></asp:Label></td>
                                <td style="width: 125px">
                                    <asp:TextBox ID="txtPass" runat="server" Height="24px" Width="155px" Font-Size="Medium" TextMode="Password"></asp:TextBox>
                                </td>
                                <td style="width: 100px">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPass"
                                        ErrorMessage="Password Reqiured">*</asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
                                <td style="width: 423px">
                                </td>
                                <td style="width: 125px">
                                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" Height="32px" Width="123px" Font-Bold="True" />
                                    <br />
                                    <div style="text-align: left">
                                        <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Red" Text="Invalid User Or Password"
                                            Visible="False" Width="151px"></asp:Label>
                                    </div>
                                    <br />
                                </td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                        </table>
                        <div style="text-align: center">
                            <table style="width: 314px; height: 23px">
                                <tr>
                                    <td style="width: 100px">
                                        <asp:LinkButton ID="btnLogin" runat="server" Font-Size="Large" OnClick="btnLogin_Click">Login</asp:LinkButton></td>
                                    <td style="width: 151px">
                                        <asp:LinkButton ID="btnCancel" runat="server" Font-Size="Large" CausesValidation="False" OnClick="btnCancel_Click">Cancel</asp:LinkButton></td>
                                </tr>
                            </table>
                        </div>
                        <div style="text-align: right">
                            <br />
                            &nbsp;</div>
                    </td>
                </tr>
            </table>
            <div style="text-align: right">
                <table>
                    <tr>
                        <td style="width: 100px">
                            <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Italic="True"
                                Font-Names="Palatino Linotype" Font-Size="Large" ForeColor="Blue" NavigateUrl="~/pgNewCard.aspx">New User?</asp:HyperLink></td>
                    </tr>
                </table>
            </div>
            &nbsp;&nbsp;
            <br />
        </div>
    </div>
</asp:Content>

