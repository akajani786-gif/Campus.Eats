<%@ Page Title="" Language="C#" MasterPageFile="~/Campus.Eats.Master" AutoEventWireup="true" CodeBehind="staff-profile.aspx.cs" Inherits="Campus.Eats.staff_profile" %>

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
                <a href="staff-dashboard.aspx">📋 Tasks</a>
                <a href="staff-orders.aspx">🧾 Orders</a>
                <a href="staff-pickup.aspx">📦 Pickup</a>
                <a href="staff-profile.aspx" class="active">👤 Profile</a>
            </nav>
            <div class="sidebar-foot">
                <strong>Profile</strong>
                <div class="mt-2">Staff ID: ST-204</div>
                <div class="mt-2">Shift: 11:00 AM</div>
            </div>
        </aside>

        <main class="dashboard-main">
            <div class="eyebrow">Account</div>
            <h1 class="page-title">Staff profile</h1>

            <div class="auth-card mt-5">
                <form>
                    <div class="field">
                        <label for="full-name">Full name</label>
                        <input id="full-name" type="text" value="Aditya Sharma" />
                    </div>
                    <div class="field">
                        <label for="role">Role</label>
                        <input id="role" type="text" value="Kitchen Lead" />
                    </div>
                    <div class="field">
                        <label for="phone">Phone</label>
                        <input id="phone" type="tel" value="+91 9876543210" />
                    </div>
                    <button type="button" class="btn btn-primary btn-block">Save profile</button>
                </form>
            </div>
        </main>
    </div>
</asp:Content>

