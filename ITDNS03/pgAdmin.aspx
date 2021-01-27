<%@ Page Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="pgAdmin.aspx.cs" Inherits="pgAdmin" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: left">
        <table style="width: 79px">
            <tr>
                <td style="width: 338px; height: 77px">
    <table style="width: 190px">
        <tr>
            <td style="width: 84px">
                &nbsp;<asp:Image ID="Image1" runat="server" ImageUrl="~/Icons/iconsnew.jpg" /></td>
            <td style="width: 100px">
                &nbsp;<asp:LinkButton ID="lbtnViewPro" runat="server" Font-Bold="True" Font-Size="Medium"
                    OnClick="lbtnViewPro_Click">View Users</asp:LinkButton></td>
        </tr>
    </table>
                    <div style="text-align: left">
                        <table>
                            <tr>
                                <td style="width: 97px">
                                    <asp:Image ID="Image2" runat="server" Height="75px" ImageUrl="~/images/BlockedUser.png"
                                        Width="80px" /></td>
                                <td style="width: 100px">
                                    <asp:LinkButton ID="lbtnBlockedUser" runat="server" Font-Bold="True" Font-Size="Medium"
                                        Height="45px" OnClick="lbtnBlockedUser_Click" Width="160px">View Blocked Users</asp:LinkButton></td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>
        </table>
    </div>
    <div style="text-align: center">
        <table>
            <tr>
                <td style="width: 100px">
                    <asp:GridView ID="gvUsers" runat="server" BackColor="White" BorderColor="#999999"
                        BorderStyle="None" BorderWidth="1px" CellPadding="3" Font-Bold="True" Font-Names="Bookman Old Style"
                        Font-Size="Larger" GridLines="Vertical" Height="236px" Width="659px">
                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

