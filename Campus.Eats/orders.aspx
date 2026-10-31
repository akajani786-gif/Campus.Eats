<%@ Page Title="" Language="C#" MasterPageFile="~/Campus.Eats.Master" AutoEventWireup="true" CodeBehind="orders.aspx.cs" Inherits="Campus.Eats.orders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="page-shell">
        <div id="site-header"></div>

        <section class="section">
            <div class="container">
                <div class="eyebrow">My orders</div>
                <h1 class="page-title">Every bite you’ve booked</h1>
                <div class="space mt-5" width="1700">
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
                    <%--<article class="order-card">
                        <div class="order-card__token">#12</div>
                        <div style="flex: 1;">
                            <h3 class="menu-card__title">Crispy Wrap × 2</h3>
                            <p class="menu-card__desc">Today · ASAP · Pickup window 12:00</p>
                        </div>
                        <div class="text-right">
                            <strong>₹280</strong>
                            <div class="badge badge-warm mt-2">Pending</div>
                        </div>
                    </article>
                    <article class="order-card">
                        <div class="order-card__token">#13</div>
                        <div style="flex: 1;">
                            <h3 class="menu-card__title">Saffron Rice Bowl × 1</h3>
                            <p class="menu-card__desc">Tomorrow · 12:30 – 12:45</p>
                        </div>
                        <div class="text-right">
                            <strong>₹120</strong>
                            <div class="badge badge-success mt-2">Ready</div>
                        </div>
                    </article>--%>
                </div>
            </div>
        </section>

        <div id="site-footer"></div>
    </div>
</asp:Content>

