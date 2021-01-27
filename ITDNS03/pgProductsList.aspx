<%@ Page Language="C#" AutoEventWireup="true" CodeFile="pgProductsList.aspx.cs" Inherits="Products" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="text-align: center">
            <table>
                <tr>
                    <td style="width: 100px">
        <asp:GridView ID="gvProducts" runat="server" AllowPaging="True" AllowSorting="True"
            CellPadding="4" ForeColor="#333333" GridLines="None" ShowFooter="True" Width="919px">
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <RowStyle BackColor="#EFF3FB" />
            <EditRowStyle BackColor="#2461BF" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
                        <div style="text-align: center">
                            <table>
                                <tr>
                                    <td style="width: 100px">
                                        <asp:ImageButton ID="ibPay" runat="server" CausesValidation="False" ImageUrl="~/images/paybutton.gif"
                                            OnClick="ibPay_Click" ToolTip="View Purchase Items" /></td>
                                </tr>
                            </table>
                        </div>
                    </td>
                </tr>
            </table>
        </div>
        &nbsp;</div>
    </form>
</body>
</html>
