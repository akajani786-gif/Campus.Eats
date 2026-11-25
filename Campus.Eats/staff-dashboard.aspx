<%@ Page Title="" Language="C#" MasterPageFile="~/Campus.Eats.Master" AutoEventWireup="true" CodeBehind="staff-dashboard.aspx.cs" Inherits="Campus.Eats.staff_dashboard" %>

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
                <a href="staff-dashboard.aspx" class="active">📋 Tasks</a>
                <a href="staff-orders.aspx">🧾 Orders</a>
                 
                <a href="staff-profile.aspx">👤 Profile</a>
            </nav>
            <div class="sidebar-foot">
                <strong>Shift status</strong>
                <div class="mt-2">11:00 AM – 06:00 PM</div>
                <div class="mt-2">Assigned: Aditya</div>
            </div>
        </aside>

        <main class="dashboard-main">
            <div class="eyebrow">Today’s queue</div>
            <h1 class="page-title">Staff operations</h1>

            <div class="dashboard-kanban mt-5">
                <section class="kanban-column">
                    <div class="kanban-column__header">
                        <strong>Pending</strong>
                        <span class="badge badge-warm">3</span>
                    </div>
                    <div class="kanban-card">
                        <strong>#12 — Harsh</strong>
                        <p class="text-muted mt-2 mb-0">2 wraps, 1 juice</p>
                    </div>
                    <div class="kanban-card">
                        <strong>#19 — Saanvi</strong>
                        <p class="text-muted mt-2 mb-0">Rice bowl + salad</p>
                    </div>
                </section>

                <section class="kanban-column">
                    <div class="kanban-column__header">
                        <strong>Preparing</strong>
                        <span class="badge badge-accent">4</span>
                    </div>
                    <div class="kanban-card">
                        <strong>#17 — Meera</strong>
                        <p class="text-muted mt-2 mb-0">Burger assembly in progress</p>
                    </div>
                </section>

                <section class="kanban-column">
                    <div class="kanban-column__header">
                        <strong>Ready</strong>
                        <span class="badge badge-success">2</span>
                    </div>
                    <div class="kanban-card">
                        <strong>#21 — Arjun</strong>
                        <p class="text-muted mt-2 mb-0">Awaiting pickup</p>
                    </div>
                </section>

                <section class="kanban-column">
                    <div class="kanban-column__header">
                        <strong>Collected</strong>
                        <span class="badge badge-dark">5</span>
                    </div>
                    <div class="kanban-card">
                        <strong>#08 — Nandini</strong>
                        <p class="text-muted mt-2 mb-0">Picked up at 12:12</p>
                    </div>
                </section>
            </div>
        </main>
    </div>
</asp:Content>

