<%@ Page Title="" Language="C#" MasterPageFile="~/Campus.Eats.Master" AutoEventWireup="true" CodeBehind="checkout.aspx.cs" Inherits="Campus.Eats.checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="page-shell">
        <div id="site-header"></div>

        <section class="section">
            <div class="container">
                <div class="eyebrow">Checkout</div>
                <h1 class="page-title">When would you like it?</h1>
                <div class="grid grid-2 gap-6 mt-5">
                    <div>
                        <%--<div class="grid grid-2 gap-3 mb-4">
                            <button class="surface-card p-5 text-left">
                                <div class="badge badge-accent">Ready ASAP</div>
                                <h3 class="menu-card__title mt-3">Immediate pickup</h3>
                                <p class="menu-card__desc">Next available window.</p>
                            </button>
                            <button class="surface-card p-5 text-left">
                                <div class="badge badge-warm">Schedule later</div>
                                <h3 class="menu-card__title mt-3">Pick a slot</h3>
                                <p class="menu-card__desc">Choose a later pickup time.</p>
                            </button>
                        </div>--%>
                        <%--<div class="surface-card p-5">
                            <div class="grid grid-2 gap-3 field">
                                <label for="TextBox1">Select Pickup Time:</label>
                                <br />
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="btn btn-secondary" TextMode="Time" Width="540"></asp:TextBox>
                                <%--<button class="btn btn-secondary">12:00 – 12:15</button>
                                <button class="btn btn-secondary">12:30 – 12:45</button>
                                <button class="btn btn-secondary">1:00 – 1:15</button>
                                <button class="btn btn-secondary">1:30 – 1:45</button>
                            </div>
                        </div>--%>
                        <div class="surface-card p-5 mt-4">
                            <div class="field">
                                <label for="txtpickup_time">Select Pickup Time:</label>
                                <asp:TextBox ID="txtpickup_time" runat="server" CssClass="btn btn-secondary" TextMode="Time" Width="540"></asp:TextBox>
                                <br />
                                <label for="drppaymentmethod">Select Payment Method:</label>
                                <asp:DropDownList ID="drppaymentmethod" runat="server">
                                    <asp:ListItem>Pay At Pickup</asp:ListItem>
                                    <asp:ListItem>online payment</asp:ListItem>
                                </asp:DropDownList>
                                <br />
                                <label for="notes">Notes for the kitchen</label>
                                <textarea id="notes" placeholder="Less spicy, no onions…"></textarea>
                            </div>
                        </div>
                        <%--<div class="surface-card p-5 mt-4">
                    <div class="field">
                        <label for="notes">Notes for the kitchen</label>
                        <textarea id="notes" placeholder="Less spicy, no onions…"></textarea>
                    </div>
                </div>--%>
                    </div>
                    <aside class="summary-card brutal-shadow">
                        <div class="eyebrow">Order summary</div>
                        <asp:DataList ID="DataList1" Width="540" runat="server">
                            <ItemTemplate>
                                <ul>
                                    <li>
                                        <span>
                                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                                            &nbsp;X
                                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("quantity") %>'></asp:Label>
                                        </span>
                                        <strong>&nbsp; ₹<asp:Label ID="Label6" runat="server" Text='<%# Eval("t_price") +".00" %>'></asp:Label>
                                        </strong>
                                    </li>
                                    <ul>
                            </ItemTemplate>
                        </asp:DataList>
                        <%--<asp:GridView ID="GridView1" runat="server" Width="540" AutoGenerateColumns="False" BorderWidth="0px">
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <span>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                                            &nbsp;X
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("quantity") %>'></asp:Label>
                                        </span>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <div style="text-align: right;">
                                            <strong>₹<asp:Label ID="Label3" runat="server" Text='<%# Eval("t_price") %>'></asp:Label>.00
                                            </strong>
                                        </div>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>--%>
                        <%--<ul>
                            <li><span>Crispy Wrap × 2</span><strong>₹280</strong></li>
                            <li><span>Saffron Rice Bowl × 1</span><strong>₹120</strong></li>
                        </ul>--%>
                        <div class="mt-4" style="border-top: 2px solid rgba(25,29,23,0.12); padding-top: 1rem; display: flex; justify-content: space-between; align-items: center;">
                            <strong style="font-size: 1.2rem;">Total</strong>
                            <strong style="font-size: 1.5rem;">₹<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            </strong>
                        </div>
                        <asp:Button ID="Button1" class="btn btn-primary btn-block mt-4" runat="server" Text="Place order" OnClick="Button1_Click" />
                    </aside>
                </div>
            </div>
        </section>

        <div id="site-footer"></div>
    </div>
</asp:Content>

