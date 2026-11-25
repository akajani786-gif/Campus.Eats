<%@ Page Title="" Language="C#" MasterPageFile="~/Campus.Eats.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="Campus.Eats.dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div id="site-header"></div>
    <div class="dashboard-shell">
        <aside class="sidebar">
            <div class="sidebar-brand">
                <div class="brand"><span>🍴</span><span>campus<span class="brand-accent">.eats</span></span></div>
                <div class="eyebrow" style="margin-top: 0.6rem;">admin console</div>
            </div>
            <nav class="sidebar-nav">
                <a href="dashboard.aspx" class="active">📊 Overview</a>
                <a href="settings.aspx">⚙️ Settings</a>
                <a href="orders.aspx">📦 Orders</a>
                <a href="home.aspx">🏠 Home</a>
            </nav>
            <div class="sidebar-foot">
                <strong>Signed in as</strong>
                <div class="mt-2">Admin Desk</div>
                <div class="mt-2">+91 9999999999</div>
            </div>
        </aside>

        <main class="dashboard-main">
            <div class="eyebrow">Admin console</div>
            <h1 class="page-title">Kitchen at a glance</h1>
            <div class="dashboard-grid mt-5">
                <article class="stat-card">
                    <div class="badge badge-warm">Pending</div>
                    <asp:Label ID="lblpending" runat="server" Text="0"></asp:Label>
                </article>
                <article class="stat-card">
                    <div class="badge badge-accent">Preparing</div>
                    <asp:Label ID="lblpreparing" runat="server" Text="0"></asp:Label>
                </article>
                <article class="stat-card">
                    <div class="badge badge-success">Ready</div>
                    <asp:Label ID="lblready" runat="server" Text="0"></asp:Label>
                </article>
                <article class="stat-card">
                    <div class="badge badge-dark">Collected</div>
                    <asp:Label ID="lblcollected" runat="server" Text="0"></asp:Label>
                </article>
            </div>

            <div class="table-card">
                <div class="p-5 border-bottom">Recent orders</div>
                <asp:DataList ID="DataList1" runat="server">
    <ItemTemplate>
        <article class="order-card">
            <div class="order-card__token">
                <asp:Label ID="Label6" runat="server" Text='<%# "#" + Eval("Id") %>'></asp:Label>
            </div>
            <div>
                <asp:Image ID="Image1" class="order-card" Style="padding:0; height: 50px; width; 50px;" runat="server" ImageUrl='<%# Eval("image") %>' />
            </div>
            <div style="flex: 1;">
                <h3 class="menu-card__title">
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("name") +"   " %>'></asp:Label>
                    x
                    <asp:Label ID="Label2" runat="server" Text='<%# "   "+ Eval("quantity") %>'></asp:Label>
                </h3>
                <p class="menu-card__desc">
                    <asp:Label ID="Label3" runat="server" Text='<%# "Pickup window: " + Eval("pickup_time") %>'></asp:Label>
                </p>
            </div>
            <div class="text-right">
                <strong>
                    <asp:Label ID="Label4" runat="server" Text='<%# "₹" + Eval("t_price") %>'></asp:Label>
                </strong>
                <div class="badge badge-warm mt-2">
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("status") %>'></asp:Label>
                </div>
            </div>
        </article>
    </ItemTemplate>
</asp:DataList>
                <asp:GridView ID="GridView1" runat="server"></asp:GridView>

                <%--<table>
                    <thead>
                        <tr>
                            <th>Token</th>
                            <th>Customer</th>
                            <th>Items</th>
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
                    </tbody>
                </table>--%>
            </div>
        </main>
    </div>
    <div id="site-footer"></div>
</asp:Content>

