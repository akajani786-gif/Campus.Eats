<%@ Page Title="" Language="C#" MasterPageFile="~/Campus.Eats.Master" AutoEventWireup="true" CodeBehind="admin-dashboard.aspx.cs" Inherits="Campus.Eats.admin_dashboard" %>

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
                <a href="admin-dashboard.aspx" class="active">📊 Overview</a>
                <a href="admin-menu.aspx">🍽️ Menu</a>
                <a href="admin-orders.aspx">📦 Orders</a>
                <a href="admin-staff.aspx">👥 Staff</a>
                <a href="admin-users.aspx">👥 Users</a>
                <a href="settings.aspx">⚙️ Settings</a>
            </nav>
            <div class="sidebar-foot">
                <strong>Signed in as</strong>
                <div class="mt-2">Admin Desk</div>
                <div class="mt-2">+91 9999999999</div>
            </div>
        </aside>

        <main class="dashboard-main">
            <div class="eyebrow">Operations overview</div>
            <h1 class="page-title">Kitchen performance at a glance</h1>

            <div class="dashboard-grid mt-5">
                <article class="stat-card">
                    <div class="badge badge-warm">Pending</div>
                    <div class="value mt-3">
                        <asp:Label ID="lblpending" runat="server" Text="Label"></asp:Label>
                    </div>
                </article>
                <article class="stat-card">
                    <div class="badge badge-accent">Preparing</div>
                    <div class="value mt-3">
                        <asp:Label ID="lblpreparing" runat="server" Text="Label"></asp:Label>
                    </div>
                </article>
                <article class="stat-card">
                    <div class="badge badge-success">Ready</div>
                    <div class="value mt-3">
                        <asp:Label ID="lblready" runat="server" Text="Label"></asp:Label>
                    </div>
                </article>
                <article class="stat-card">
                    <div class="badge badge-dark">Collected</div>
                    <div class="value mt-3">
                        <asp:Label ID="lblcollected" runat="server" Text="Label"></asp:Label>
                    </div>
                </article>
            </div>

            <div class="p-5 border-bottom">Live order queue:</div>
            <div class="table-card">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderStyle="None" BorderWidth="0px">
                    <Columns>
                        <asp:TemplateField HeaderText="Token">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# "#" + Eval("Id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Customer">
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Order">
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("p_name") %>'></asp:Label>
                                &nbsp;X
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("quantity") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Pickup">
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("pickup_time") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Total">
                            <ItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%# Eval("t_price") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Status">
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("status") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>

                <%--<table>
                    <thead>
                        <tr>
                            <th>Token</th>
                            <th>Customer</th>
                            <th>Order</th>
                            <th>Pickup</th>
                            <th>Total</th>
                            <th>Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>#12</td>
                            <td>Harsh</td>
                            <td>Crispy Wrap ×2</td>
                            <td>ASAP</td>
                            <td>₹280</td>
                            <td><span class="badge-pill badge-pending">Pending</span></td>
                        </tr>
                        <tr>
                            <td>#13</td>
                            <td>Riya</td>
                            <td>Saffron Rice Bowl ×1</td>
                            <td>12:30</td>
                            <td>₹120</td>
                            <td><span class="badge-pill badge-ready">Ready</span></td>
                        </tr>
                        <tr>
                            <td>#14</td>
                            <td>Pranav</td>
                            <td>Veggie Burger ×1</td>
                            <td>12:45</td>
                            <td>₹165</td>
                            <td><span class="badge-pill badge-preparing">Preparing</span></td>
                        </tr>
                    </tbody>
                </table>--%>
            </div>
        </main>
    </div>
</asp:Content>

