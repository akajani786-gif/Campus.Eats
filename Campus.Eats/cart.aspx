<%@ Page Title="" Language="C#" MasterPageFile="~/Campus.Eats.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="Campus.Eats.cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="page-shell">
        <div id="site-header"></div>

        <section class="section">
            <div class="container">
                <div class="eyebrow">Your cart</div>
                <h1 class="page-title">Review your order</h1>
                <div class="grid grid-2 gap-6 mt-5">
                    <div class="space">


                        <%--<div style="flex: 1;">
                                <h3 class="menu-card__title">Crispy Wrap</h3>
                                <p class="menu-card__desc">₹140 • Qty 2</p>
                            </div>
                            <div class="flex gap-2">
                                <button class="icon-btn">−</button>
                                <button class="icon-btn">+</button>
                            </div>--%>

                        <asp:DataList ID="DataList1" runat="server" OnItemCommand="DataList1_ItemCommand">
                            <ItemTemplate>
                                <article class="order-card mb-3">
                                    <div class="order-card__token">
                                        <asp:Image ID="Image2" runat="server" style="border-radius:100%; height:50px; width;50px;" ImageUrl='<%# Eval("image") %>' />
                                    </div>
                                    <div style="flex: 1;">
                                        <h3 class="menu-card__title">
                                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                                        </h3>
                                        <p class="menu-card__desc">
                                            ₹<asp:Label ID="Label7" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                                            •
                                            Qty <asp:Label ID="Label8" runat="server" Text='<%# Eval("quantity") %>'></asp:Label>
                                        </p>
                                    </div>
                                    <div class="flex gap-2">
                                            <asp:LinkButton ID="LinkButton3" runat="server" CommandArgument='<%# Eval("product_id") %>' CommandName="cmd_red_quan"><div class="icon-btn">-</div></asp:LinkButton>
                                            <asp:LinkButton ID="LinkButton4" runat="server" CommandArgument='<%# Eval("product_id") %>' CommandName="cmd_add_quan"><div class="icon-btn">+</div></asp:LinkButton>
                                    </div>
                                </article>
                            </ItemTemplate>
                        </asp:DataList>
                        <%--<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand">
                            <Columns>
                                <asp:TemplateField HeaderText="product Image">
                                    <ItemTemplate>
                                        <asp:Image ID="Image1" runat="server" Height="50" Width="50" ImageUrl='<%# Eval("image") %>' />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="name">
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="price">
                                    <ItemTemplate>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Quantity">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("product_id") %>' CommandName="cmd_red_quan">-</asp:LinkButton>
                                        &nbsp;
                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("quantity") %>'></asp:Label>
                                        &nbsp;
                                        <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("product_id") %>' CommandName="cmd_add_quan">+</asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>--%>
                        <%--<article class="order-card mb-3">
                            <div class="order-card__token">#1</div>
                            <div style="flex: 1;">
                                <h3 class="menu-card__title">Crispy Wrap</h3>
                                <p class="menu-card__desc">₹140 • Qty 2</p>
                            </div>
                            <div class="flex gap-2">
                                <button class="icon-btn">−</button>
                                <button class="icon-btn">+</button>
                            </div>
                        </article>--%>
                        <%--<article class="order-card">
                            <div class="order-card__token">#2</div>
                            <div style="flex: 1;">
                                <h3 class="menu-card__title">Saffron Rice Bowl</h3>
                                <p class="menu-card__desc">₹120 • Qty 1</p>
                            </div>
                            <div class="flex gap-2">
                                <button class="icon-btn">−</button>
                                <button class="icon-btn">+</button>
                            </div>
                        </article>--%>
                    </div>
                    <aside class="summary-card brutal-shadow">
                        <div class="eyebrow">Summary</div>
                        <ul>
                            <li><span>Subtotal</span><strong>
                                ₹<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                            </strong></li>
                            <li><span>Payment</span><span class="text-muted">Pay at pickup</span></li>
                        </ul>
                        <div class="mt-4" style="border-top: 2px solid rgba(25,29,23,0.12); padding-top: 1rem; display: flex; justify-content: space-between; align-items: center;">
                            <strong style="font-size: 1.2rem;">Total</strong>
                            <strong style="font-size: 1.5rem;">₹<asp:Label ID="Label4" runat="server" Text="400"></asp:Label>
                            </strong>
                        </div>
                        <a href="checkout.aspx" class="btn btn-primary btn-block mt-4">Choose pickup</a>
                    </aside>
                </div>
            </div>
        </section>

        <div id="site-footer"></div>
    </div>
</asp:Content>

