<%@ Page Title="" Language="C#" MasterPageFile="~/Campus.Eats.Master" AutoEventWireup="true" CodeBehind="menu.aspx.cs" Inherits="Campus.Eats.menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="page-shell">
        <div id="site-header"></div>

        <section class="hero-panel fade-in">
            <div class="container section">
                <div class="eyebrow">Today's menu</div>
                <h1 class="page-title">Order now. <span class="accent">Pick your slot.</span></h1>
                <p class="lead mb-5">See what's available, add favorites, and keep it simple.</p>
                <div class="flex gap-3 flex-wrap mb-5">
                    <a href="#" class="btn btn-dark">All</a>
                    <a href="#" class="btn btn-secondary">Wraps</a>
                    <a href="#" class="btn btn-secondary">Rice Bowls</a>
                    <a href="#" class="btn btn-secondary">Desserts</a>
                </div>
            </div>
        </section>

        <section class="section">
            <div class="container">
                <div class="card-list">
                    <%--<article class="menu-card">
              <div class="menu-card__image hero-image" style="background-image:url('https://images.unsplash.com/photo-1516197370049-569c4eaba1d6?auto=format&fit=crop&w=800&q=80');"></div>
              <div class="menu-card__body">
                <div class="menu-card__meta">
                  <h3 class="menu-card__title">Crispy Wrap</h3>
                  <span class="menu-card__price">₹140</span>
                </div>
                <p class="menu-card__desc">A crisp hand roll with house sauce and fresh greens.</p>
                <div class="menu-card__footer">
                  <span class="badge badge-success">Available</span>
                  <a href="cart.aspx" class="btn btn-primary">Add</a>
                </div>
              </div>
            </article>--%>
                    <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" RepeatColumns="3" OnItemCommand="DataList1_ItemCommand" CellSpacing="50">
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

                                    <div class="menu-card__footer">
                                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Id") %>' class="btn btn-secondary" CommandName="cmd_add_cart">Add to Cart</asp:LinkButton>
                                    </div>
                                </div>
                            </article>
                        </ItemTemplate>
                    </asp:DataList>
                    <%--<article class="menu-card">
              <div class="menu-card__image hero-image" style="background-image:url('https://images.unsplash.com/photo-1512152272829-e3139592d56f?auto=format&fit=crop&w=800&q=80');"></div>
              <div class="menu-card__body">
                <div class="menu-card__meta">
                  <h3 class="menu-card__title">Saffron Rice Bowl</h3>
                  <span class="menu-card__price">₹120</span>
                </div>
                <p class="menu-card__desc">A hearty bowl layered with spice, herbs, and roasted vegetables.</p>
                <div class="menu-card__footer">
                  <span class="badge badge-success">Available</span>
                  <a href="cart.aspx" class="btn btn-primary">Add</a>
                </div>
              </div>
            </article>
            <article class="menu-card">
              <div class="menu-card__image hero-image" style="background-image:url('https://images.unsplash.com/photo-1482049016688-2d3e1b311543?auto=format&fit=crop&w=800&q=80');"></div>
              <div class="menu-card__body">
                <div class="menu-card__meta">
                  <h3 class="menu-card__title">Classic Pasta</h3>
                  <span class="menu-card__price">₹160</span>
                </div>
                <p class="menu-card__desc">Creamy tomato sauce, cheddar, and roasted garlic.</p>
                <div class="menu-card__footer">
                  <span class="badge badge-success">Available</span>
                  <a href="cart.aspx" class="btn btn-primary">Add</a>
                </div>
              </div>
            </article>--%>
                </div>
            </div>
        </section>

        <div id="site-footer"></div>
    </div>
</asp:Content>

