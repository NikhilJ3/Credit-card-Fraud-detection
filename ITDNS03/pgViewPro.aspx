<%@ Page Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="pgViewPro.aspx.cs" Inherits="pgViewPro" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: left">
        <div style="text-align: left">
            <table>
                <tr>
                    <td style="width: 100px">
                    <asp:DetailsView ID="dvUserPro" runat="server" AutoGenerateRows="False" BackColor="White"
                        BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="firstname,lastname,uid,email,dob,gender,address1,address2,city,state,country,pincode,phone"
                        Font-Bold="True" Font-Italic="False" Font-Names="Palatino Linotype" ForeColor="Black"
                        GridLines="Vertical" Height="452px" Width="485px" HeaderText="USER DTAILS" Font-Size="Medium">
                        <FooterStyle BackColor="#CCCC99" />
                        <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                        <RowStyle BackColor="#F7F7DE" />
                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                        <Fields>
                            <asp:BoundField DataField="firstname" HeaderText="FIRST NAME" />
                            <asp:BoundField DataField="lastname" HeaderText="LAST NAME" />
                            <asp:BoundField DataField="email" HeaderText="E-MAIL" />
                            <asp:BoundField DataField="dob" HeaderText="DATE OF BIRTH" />
                            <asp:BoundField DataField="Gender" HeaderText="GENDER" />
                            <asp:BoundField DataField="address1" HeaderText="ADDRESS LINE1" />
                            <asp:BoundField DataField="address2" HeaderText="ADDRESS LINE2" />
                            <asp:BoundField DataField="city" HeaderText="CITY" />
                            <asp:BoundField DataField="state" HeaderText="STATE" />
                            <asp:BoundField DataField="Country" HeaderText="COUNTRY" />
                            <asp:BoundField DataField="phone" HeaderText="PHONE" />
                            <asp:BoundField DataField="pincode" HeaderText="PINCODE" />
                        </Fields>
                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                        <AlternatingRowStyle BackColor="White" />
                    </asp:DetailsView>
                        <br />
                        <div style="text-align: center">
                            <table>
                                <tr>
                                    <td style="width: 100px">
                                    <asp:LinkButton ID="btnEdit" runat="server" Font-Bold="True" Font-Names="Palatino Linotype"
                                        Font-Size="Large" Height="26px" Width="132px" OnClick="btnEdit_Click1" CausesValidation="False">EDIT PROFILE</asp:LinkButton></td>
                                </tr>
                            </table>
                        </div>
                        <br />
                        <asp:Panel ID="Panel1" runat="server" Height="50px" Width="125px">
                        </asp:Panel>
                        <table id="table1" style="width: 666px; height: 881px">
                            <tr>
                                <td style="width: 100px">
                                    <br />
                                    <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label></td>
                                <td style="width: 100px">
                                    <asp:TextBox ID="txtFName" runat="server" Width="166px"></asp:TextBox></td>
                                <td style="width: 100px">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFName"
                                        ErrorMessage="Name Is Required">*</asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
                                <td style="width: 100px">
                                    <br />
                                    <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label></td>
                                <td style="width: 100px">
                                    <asp:TextBox ID="txtLName" runat="server" Width="166px"></asp:TextBox></td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px">
                                    <br />
                                    <asp:Label ID="Label6" runat="server" Text="Email" Width="55px"></asp:Label></td>
                                <td style="width: 100px">
                                    <asp:TextBox ID="txtEmail" runat="server" Width="162px"></asp:TextBox></td>
                                <td style="width: 100px">
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail"
                                        ErrorMessage="Invalid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator></td>
                            </tr>
                            <tr>
                                <td style="width: 100px">
                                    <br />
                                    <asp:Label ID="Label15" runat="server" Text="Phone No" Width="59px"></asp:Label></td>
                                <td style="width: 100px">
                                    <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox></td>
                                <td style="width: 100px">
                                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPhone"
                                        ErrorMessage="Phone No Required" MaximumValue="9999999999" MinimumValue="111111">*</asp:RangeValidator></td>
                            </tr>
                            <tr>
                                <td style="width: 100px">
                                    <br />
                                    <asp:Label ID="Label14" runat="server" Text="Date Of Birth" Width="73px"></asp:Label></td>
                                <td style="width: 100px">
                                    <asp:TextBox ID="txtDOB" runat="server"></asp:TextBox></td>
                                <td style="width: 100px">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtDOB"
                                        ErrorMessage="DOB Required">*</asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
                                <td style="width: 100px">
                                    <br />
                                    <asp:Label ID="Label8" runat="server" Text="Gender" Width="55px"></asp:Label></td>
                                <td style="width: 100px">
                                    <asp:DropDownList ID="ddlGender" runat="server" Width="79px">
                                        <asp:ListItem Selected="True">Male</asp:ListItem>
                                        <asp:ListItem>Female</asp:ListItem>
                                    </asp:DropDownList></td>
                                <td style="width: 100px">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ddlGender"
                                        ErrorMessage="Gender Is Required">*</asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
                                <td style="width: 100px">
                                    <br />
                                    <asp:Label ID="Label9" runat="server" Text="AddressLine 1" Width="81px"></asp:Label></td>
                                <td style="width: 100px">
                                    <asp:TextBox ID="txtAdd1" runat="server" TextMode="MultiLine" Height="56px" Width="201px"></asp:TextBox></td>
                                <td style="width: 100px">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtAdd1">*</asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
                                <td style="width: 100px">
                                    <br />
                                    <asp:Label ID="Label10" runat="server" Text="Addresss Line 2" Width="95px"></asp:Label></td>
                                <td style="width: 100px">
                                    <asp:TextBox ID="txtAdd2" runat="server" TextMode="MultiLine" Height="55px" Width="199px"></asp:TextBox></td>
                                <td style="width: 100px">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtAdd2">*</asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
                                <td style="width: 100px">
                                    <br />
                                    <asp:Label ID="Label11" runat="server" Text="City" Width="59px"></asp:Label></td>
                                <td style="width: 100px">
                                    <asp:TextBox ID="txtCity" runat="server"></asp:TextBox></td>
                                <td style="width: 100px">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtCity">*</asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
                                <td style="width: 100px">
                                    <br />
                                    <asp:Label ID="Label12" runat="server" Text="State" Width="51px"></asp:Label></td>
                                <td style="width: 100px">
                                    <asp:TextBox ID="txtState" runat="server"></asp:TextBox></td>
                                <td style="width: 100px">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtState">*</asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
                                <td style="width: 100px">
                                    <br />
                                    <asp:Label ID="Label13" runat="server" Text="Country" Width="59px"></asp:Label></td>
                                <td style="width: 100px">
                                    <asp:TextBox ID="txtCountry" runat="server"></asp:TextBox></td>
                                <td style="width: 100px">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtCountry">*</asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
                                <td style="width: 100px">
                                    <br />
                                    <asp:Label ID="Label7" runat="server" Text="Pincode" Width="53px"></asp:Label></td>
                                <td style="width: 100px">
                                    <asp:TextBox ID="txtPin" runat="server"></asp:TextBox>
                                </td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px">
                                    <div style="text-align: right">
                                        <table>
                                            <tr>
                                                <td style="width: 100px">
                                                    <asp:LinkButton ID="btnSubmit" runat="server" Font-Bold="True" Font-Names="Palatino Linotype"
                                                        Font-Size="Medium" Height="21px" Width="61px" OnClick="btnSubmit_Click">SUBMIT</asp:LinkButton></td>
                                            </tr>
                                        </table>
                                    </div>
                                </td>
                                <td style="width: 100px">
                                    <div style="text-align: left">
                                        <table>
                                            <tr>
                                                <td style="width: 100px">
                                                    <asp:LinkButton ID="btnCancel" runat="server" Font-Bold="True" Font-Names="Palatino Linotype"
                                                        Font-Size="Medium" Height="21px" Width="65px" CausesValidation="False" OnClick="btnCancel_Click">CANCEL</asp:LinkButton></td>
                                            </tr>
                                        </table>
                                    </div>
                                    &nbsp;</td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
        &nbsp;<br />
    </div>
</asp:Content>

