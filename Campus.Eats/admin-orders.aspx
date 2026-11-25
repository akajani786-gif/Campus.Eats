<%@ Page Title="" Language="C#" MasterPageFile="~/Campus.Eats.Master" AutoEventWireup="true" CodeBehind="admin-orders.aspx.cs" Inherits="Campus.Eats.admin_orders" %>

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
                <a href="admin-orders.aspx" class="active">📦 Orders</a>

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
            <div class="eyebrow">Fulfillment</div>
            <h1 class="page-title">Order management</h1>

            <div class="mt-5">
                <div class="table-card">
                    <div class="p-5 border-bottom">All active orders</div>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand">
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
                            <asp:TemplateField HeaderText="Update">
                                <ItemTemplate>
                                    <asp:LinkButton ID="btn_preparing" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_preparing" Visible='<%# Eval("status").ToString().ToLower() == "pending" %>' Style="background-color: red; border-radius: 20px; padding: 10px; color: white; font-weight: bold;">Preparing</asp:LinkButton>
                                    <asp:LinkButton ID="btn_ready" runat="server" CommandName="cmd_ready" CommandArgument='<%# Eval("Id") %>' Visible='<%# Eval("status").ToString().ToLower() == "preparing" %>' Style="background-color: green; border-radius: 20px; padding: 10px; color: white; font-weight: bold;">Ready</asp:LinkButton>
                                    <asp:LinkButton ID="btn_collected" runat="server" CommandName="cmd_collected" CommandArgument='<%# Eval("Id") %>' Visible='<%# Eval("status").ToString().ToLower() == "ready" %>' Style="background-color: black; border-radius: 20px; padding: 10px; color: white; font-weight: bold;">Collected</asp:LinkButton>
                                    <br />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>

                    <%--<table>
                        <thead>
                            <tr>
                                <th>Order ID</th>
                                <th>Student</th>
                                <th>Items</th>
                                <th>Pickup slot</th>
                                <th>Total</th>
                                <th>Status</th>
                                <th>Action</th>
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
                                <td>
                                    <button class="btn btn-secondary">Advance</button></td>
                            </tr>
                            <tr>
                                <td>#17</td>
                                <td>Meera</td>
                                <td>Saffron Rice Bowl ×1</td>
                                <td>12:30</td>
                                <td>₹120</td>
                                <td><span class="badge-pill badge-preparing">Preparing</span></td>
                                <td>
                                    <button class="btn btn-secondary">Mark ready</button></td>
                            </tr>
                            <tr>
                                <td>#21</td>
                                <td>Arjun</td>
                                <td>Veggie Burger ×2</td>
                                <td>1:00</td>
                                <td>₹330</td>
                                <td><span class="badge-pill badge-ready">Ready</span></td>
                                <td>
                                    <button class="btn btn-secondary">Dispatch</button></td>
                            </tr>
                        </tbody>
                    </table>--%>
                </div>
            </div>
        </main>
    </div>
</asp:Content>

