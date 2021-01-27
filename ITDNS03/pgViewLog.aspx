<%@ Page Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="pgViewLog.aspx.cs" Inherits="pgViewLog" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table style="width: 693px; height: 172px">
            <tr>
                <td style="width: 100px">
                    <asp:GridView ID="gvLogs" runat="server" AutoGenerateColumns="False" BackColor="White"
                        BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black"
                        GridLines="Vertical" Height="301px" Width="863px" Font-Bold="True" Font-Size="Small">
                        <FooterStyle BackColor="#CCCC99" />
                        <Columns>
                            <asp:BoundField DataField="cardno" HeaderText="CARD NUMBER" />
                            <asp:BoundField DataField="holdername" HeaderText="HOLDER NAME" />
                            <asp:BoundField DataField="holderAddress" HeaderText="HOLDER ADDFRESS" />
                            <asp:BoundField DataField="ACNO" HeaderText="ACCOUNT NUMBER" />
                            <asp:BoundField DataField="BANKName" HeaderText="BANK NAME" />
                            <asp:BoundField DataField="placeoftransaction" HeaderText="PLACE OF TRANSACTION" />
                            <asp:BoundField DataField="placeid" HeaderText="PLACE ID" />
                            <asp:BoundField DataField="amount" HeaderText="AMOUNT" />
                            <asp:BoundField DataField="DATETIME" HeaderText="DATE TIME" />
                        </Columns>
                        <RowStyle BackColor="#F7F7DE" />
                        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                        <AlternatingRowStyle BackColor="White" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

