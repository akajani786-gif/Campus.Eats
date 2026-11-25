<%@ Page Title="" Language="C#" MasterPageFile="~/Campus.Eats.Master" AutoEventWireup="true" CodeBehind="staff-pickup.aspx.cs" Inherits="Campus.Eats.staff_pickup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="dashboard-shell">
        <aside class="sidebar">
            <div class="sidebar-brand">
                <div class="brand"><span>🍴</span><span>campus<span class="brand-accent">.eats</span></span></div>
                <div class="eyebrow" style="margin-top: 0.6rem;">staff portal</div>
            </div>
            <nav class="sidebar-nav">
                 
                <a href="staff-orders.aspx">🧾 Orders</a>
                <a href="staff-pickup.aspx" class="active">📦 Pickup</a>
                <a href="staff-profile.aspx">👤 Profile</a>
            </nav>
            <div class="sidebar-foot">
                <strong>Pickup desk</strong>
                <div class="mt-2">Verified: 12</div>
                <div class="mt-2">Pending: 3</div>
            </div>
        </aside>

        <main class="dashboard-main">
            <div class="eyebrow">Counter</div>
            <h1 class="page-title">Pickup queue</h1>

            <div class="grid grid-2 mt-5">
                <article class="summary-card">
                    <h3 class="menu-card__title">Ready for collection</h3>
                    <ul class="mt-4">
                        <li><span>#21 – Arjun</span><span>Veggie Burger ×2</span></li>
                        <li><span>#31 – Nisha</span><span>Wrap + Juice</span></li>
                        <li><span>#44 – Tushar</span><span>Rice bowl</span></li>
                    </ul>
                </article>

                <article class="summary-card">
                    <h3 class="menu-card__title">Verification notes</h3>
                    <ul class="mt-4">
                        <li><span>Name check</span><span>OK</span></li>
                        <li><span>Token match</span><span>OK</span></li>
                        <li><span>Payment status</span><span>Pending</span></li>
                    </ul>
                </article>
            </div>
        </main>
    </div>
</asp:Content>

