<%@ Page Title="" Language="C#" MasterPageFile="~/Campus.Eats.Master" AutoEventWireup="true" CodeBehind="admin-menu.aspx.cs" Inherits="Campus.Eats.admin_menu" %>

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
                <a href="admin-menu.aspx" class="active">🍽️ Menu</a>
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
            <div class="flex justify-between items-center flex-wrap gap-3 mb-5">
                <div>
                    <div class="eyebrow">Catalog</div>
                    <h1 class="page-title">Menu management</h1>
                </div>
                <asp:Button ID="Button1" runat="server" Text="+ Add item" class="btn btn-primary" OnClick="Button1_Click" />
                <%--<button class="btn btn-primary">+ Add item</button>--%>
            </div>

             <%-- <div class="card-list">
                <article class="menu-card">
                    <div class="menu-card__image hero-image" style="background-image: url('https://images.unsplash.com/photo-1516197370049-569c4eaba1d6?auto=format&fit=crop&w=800&q=80');"></div>
                    <div class="menu-card__body">
                        <div class="menu-card__meta">
                            <h3 class="menu-card__title">Crispy Wrap</h3>
                            <span class="menu-card__price">₹140</span>
                        </div>
                        <p class="menu-card__desc">Fresh greens, grilled veg, and house sauce.</p>
                        <div class="menu-card__footer">
                            <span class="badge badge-success">Available</span>
                            <button class="btn btn-secondary">Edit</button>
                        </div>
                    </div>
                </article>--%>

            <%--<article class="menu-card">--%>
            <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" RepeatColumns="3" OnItemCommand="DataList1_ItemCommand" CellSpacing="20">
                <ItemTemplate>
                    <article class="menu-card">
                        <div class="menu-card__image hero-image">
                            <asp:Image ID="Image1" runat="server" Width="350px" Height="250px" ImageUrl='<%# Eval("image") %>' />
                        </div>
                        <div class="menu-card__body">
                            <br />
                            <div class="menu-card__meta">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                                <br />
                                <div>
                                    ₹<asp:Label ID="Label2" runat="server" Text='<%# Eval("price") %>'></asp:Label>.00
                                </div>
                            </div>
                            <p class="menu-card__desc">
                                Estimated Preparation time:<asp:Label ID="Label4" runat="server" Text='<%# Eval("preparation_time") %>'></asp:Label>
                                &nbsp;Minutes
                            </p>

                        </div>
                    </article>
                </ItemTemplate>
            </asp:DataList>
            <%--<div class="menu-card__image hero-image" style="background-image: url('https://images.unsplash.com/photo-1512152272829-e3139592d56f?auto=format&fit=crop&w=800&q=80');"></div>
                    <div class="menu-card__body">
                        <div class="menu-card__meta">
                            <h3 class="menu-card__title">Saffron Rice Bowl</h3>
                            <span class="menu-card__price">₹120</span>
                        </div>
                        <p class="menu-card__desc">Herbed rice with roasted vegetables and spice.</p>
                        <div class="menu-card__footer">
                            <span class="badge badge-success">Available</span>
                            <button class="btn btn-secondary">Edit</button>
                        </div>
                    </div>--%>
            <%--</article>--%>

            <%--<article class="menu-card">
                    <div class="menu-card__image hero-image" style="background-image: url('https://images.unsplash.com/photo-1559847844-5315695dadae?auto=format&fit=crop&w=800&q=80');"></div>
                    <div class="menu-card__body">
                        <div class="menu-card__meta">
                            <h3 class="menu-card__title">Veggie Burger</h3>
                            <span class="menu-card__price">₹165</span>
                        </div>
                        <p class="menu-card__desc">Patty, lettuce, onion, cheddar, and toasted bun.</p>
                        <div class="menu-card__footer">
                            <span class="badge badge-warm">Low stock</span>
                            <button class="btn btn-secondary">Edit</button>
                        </div>
                    </div>
                </article>--%>
    </div>
    </main>
    </div>
</asp:Content>

