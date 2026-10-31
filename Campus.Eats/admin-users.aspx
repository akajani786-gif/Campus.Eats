<%@ Page Title="" Language="C#" MasterPageFile="~/Campus.Eats.Master" AutoEventWireup="true" CodeBehind="admin-users.aspx.cs" Inherits="Campus.Eats.admin_users" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="dashboard-shell">
        <aside class="sidebar">
            <div class="sidebar-brand">
                <div class="brand"><span>🍴</span><span>campus<span class="brand-accent">.eats</span></span></div>
                <div class="eyebrow" style="margin-top: 0.6rem;">admin console</div>
            </div>
            <nav class="sidebar-nav">
                <a href="admin-dashboard.aspx">📊 Overview</a>
                <a href="admin-menu.aspx">🍽️ Menu</a>
                <a href="admin-orders.aspx">📦 Orders</a>
                <a href="admin-staff.aspx">👥 Staff</a>
                <a href="admin-users.aspx" class="active">👥 Users</a>
                <a href="settings.aspx">⚙️ Settings</a>
            </nav>
            <div class="sidebar-foot">
                <strong>Signed in as</strong>
                <div class="mt-2">Admin Desk</div>
                <div class="mt-2">+91 9999999999</div>
            </div>
        </aside>

        <main class="dashboard-main">
            <div class="flex justify-between items-center flex-wrap gap-3 mb-5">
                <div>
                    <div class="eyebrow">People</div>
                    <h1 class="page-title">Users</h1>
                    <asp:Button ID="Button1" runat="server" class="header-pill" Text="Generate report" OnClick="Button1_Click" />
                </div>
            </div>

            <div class="table-card">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowCancelingEdit="GridView1_RowCancelingEdit">
                    <Columns>
                        <asp:TemplateField HeaderText="Id">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Name">
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Email">
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Phone">
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("phone") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Role">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Eval("role") %>'>
                                    <asp:ListItem>user</asp:ListItem>
                                    <asp:ListItem>staff</asp:ListItem>
                                    <asp:ListItem>admin</asp:ListItem>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("role") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField HeaderText="Edit Role" ShowEditButton="True" />
                    </Columns>
                </asp:GridView>
                <%--<table>
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Role</th>
                            <th>Shift</th>
                            <th>Status</th>
                            <th>Assigned tasks</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Aditya</td>
                            <td>Kitchen Lead</td>
                            <td>11:00 – 18:00</td>
                            <td><span class="badge-pill badge-ready">On duty</span></td>
                            <td>Prep, quality check</td>
                        </tr>
                        <tr>
                            <td>Neha</td>
                            <td>Cashier</td>
                            <td>12:00 – 19:00</td>
                            <td><span class="badge-pill badge-ready">On duty</span></td>
                            <td>Pickup verification</td>
                        </tr>
                        <tr>
                            <td>Rohit</td>
                            <td>Support</td>
                            <td>09:00 – 15:00</td>
                            <td><span class="badge-pill badge-pending">Break</span></td>
                            <td>Restock and cleaning</td>
                        </tr>
                    </tbody>
                </table>--%>
            </div>
        </main>
    </div>
    <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" />
</asp:Content>
