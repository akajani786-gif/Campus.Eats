<%@ Page Title="" Language="C#" MasterPageFile="~/Campus.Eats.Master" AutoEventWireup="true" CodeBehind="admin-staff.aspx.cs" Inherits="Campus.Eats.admin_staff" %>

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
                <a href="admin-orders.aspx">📦 Orders</a>
                <a href="admin-staff.aspx" class="active">👥 Staff</a>
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
                    <div class="eyebrow">People</div>
                    <h1 class="page-title">Staff roster</h1>
                </div>
                <button class="btn btn-primary">+ Add staff</button>
            </div>

            <div class="table-card">
                <table>
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Role</th>
                            <th>Shift</th>
                            <th>Status</th>
                            <th>Assigned tasks</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Aditya</td>
                            <td>Kitchen Lead</td>
                            <td>11:00 – 18:00</td>
                            <td><span class="badge-pill badge-ready">On duty</span></td>
                            <td>Prep, quality check</td>
                        </tr>
                        <tr>
                            <td>Neha</td>
                            <td>Cashier</td>
                            <td>12:00 – 19:00</td>
                            <td><span class="badge-pill badge-ready">On duty</span></td>
                            <td>Pickup verification</td>
                        </tr>
                        <tr>
                            <td>Rohit</td>
                            <td>Support</td>
                            <td>09:00 – 15:00</td>
                            <td><span class="badge-pill badge-pending">Break</span></td>
                            <td>Restock and cleaning</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </main>
    </div>
</asp:Content>

