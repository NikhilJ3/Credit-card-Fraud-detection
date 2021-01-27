<%@ Page Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="pgUsers.aspx.cs" Inherits="pgUsers" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table style="height: 215px">
            <tr>
                <td style="width: 100px; height: 14px">
                    <table style="width: 396px">
                        <tr>
                            <td style="width: 100px">
                            </td>
                            <td style="width: 84px">
                                &nbsp;<asp:Image ID="Image1" runat="server" ImageUrl="~/Icons/iconsnew.jpg" /></td>
                            <td style="width: 100px">
                                &nbsp;<asp:LinkButton ID="lbtnViewPro" runat="server" OnClick="lbtnViewPro_Click" Font-Bold="True" Font-Size="Medium">View Profile</asp:LinkButton></td>
                        </tr>
                        <tr>
                            <td style="width: 100px; height: 35px">
                            </td>
                            <td style="width: 84px; height: 35px">
                                <asp:Image ID="Image2" runat="server" Height="68px" ImageUrl="~/Icons/DATABASE.png"
                                    Width="84px" /></td>
                            <td style="width: 100px; height: 35px">
                                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/pgViewLog.aspx" Font-Bold="True" Font-Size="Medium">View Log</asp:HyperLink></td>
                        </tr>
                        <tr>
                            <td style="width: 100px; height: 14px">
                            </td>
                            <td style="width: 84px; height: 14px">
                            </td>
                            <td style="width: 100px; height: 14px">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

