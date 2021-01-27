<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Productinfo.aspx.cs" Inherits="Productinfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/pgHome.aspx">HOME</asp:HyperLink>
        <div style="text-align: center">
            <div style="text-align: center">
                &nbsp;<table border="2" bordercolor="#0099ff" style="width: 366px; height: 308px">
                    <tr>
                        <td style="width: 100px">
                            <div style="text-align: center">
                                <div style="text-align: left">
                                    <table style="width: 251px; height: 226px">
                                        <tr>
                                            <td style="width: 100px; height: 36px">
                                                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Palatino Linotype"
                                                    Text="Transaction Id" Width="149px"></asp:Label></td>
                                            <td style="width: 100px; height: 36px">
                                                <asp:TextBox ID="txtTranId" runat="server" ReadOnly="True" Width="39px"></asp:TextBox></td>
                                            <td style="width: 100px; height: 36px">
                                                &nbsp; &nbsp;&nbsp;
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 100px">
                                                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Palatino Linotype"
                                                    Text="Share Info" Width="149px"></asp:Label></td>
                                            <td style="width: 100px">
                                                <asp:DropDownList ID="ddlProName" runat="server" >
                                                    <asp:ListItem>Select Items</asp:ListItem>
                                                </asp:DropDownList></td>
                                            <td style="width: 100px">
                                                <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="Red" Text="*" Visible="False"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 100px">
                                                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Palatino Linotype"
                                                    Text="Quantity" Width="141px"></asp:Label></td>
                                            <td style="width: 100px">
                                                <asp:TextBox ID="txtPQty" runat="server" Width="91px"></asp:TextBox></td>
                                            <td style="width: 100px">
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPQty"
                                                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 100px">
                                                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Palatino Linotype"
                                                    Text="Share Rate"></asp:Label></td>
                                            <td style="width: 100px">
                                                <asp:TextBox ID="txtPRate" runat="server" ReadOnly="True" Width="73px"></asp:TextBox></td>
                                            <td style="width: 100px">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 100px">
                                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;<asp:ImageButton ID="ibtnAdd"
                                                    runat="server" ImageUrl="~/images/cart.gif" OnClick="ibtnAdd_Click" ToolTip="Add To Card" /></td>
                                            <td style="width: 100px">
                                                <asp:ImageButton ID="ibEdit" runat="server" ImageUrl="~/images/viewcart.gif" ToolTip="View Purchase Items" CausesValidation="False" OnClick="ibEdit_Click" /></td>
                                            <td style="width: 100px">
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    
    </div>
    </form>
</body>
</html>
