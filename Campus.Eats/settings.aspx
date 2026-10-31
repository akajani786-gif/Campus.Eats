<%@ Page Title="" Language="C#" MasterPageFile="~/Campus.Eats.Master" AutoEventWireup="true" CodeBehind="settings.aspx.cs" Inherits="Campus.Eats.settings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div id="site-header"></div>
    <div class="dashboard-shell">
      <aside class="sidebar">
        <div class="sidebar-brand">
          <div class="brand"><span>🍴</span><span>campus<span class="brand-accent">.eats</span></span></div>
          <div class="eyebrow" style="margin-top:0.6rem;">admin console</div>
        </div>
        <nav class="sidebar-nav">
          <a href="dashboard.aspx">📊 Overview</a>
          <a href="settings.aspx" class="active">⚙️ Settings</a>
          <a href="orders.aspx">📦 Orders</a>
          <a href="home.aspx">🏠 Home</a>
        </nav>
      </aside>
      <main class="dashboard-main">
        <div class="eyebrow">Settings</div>
        <h1 class="page-title">Manage the canteen experience</h1>
        <div class="grid grid-2 mt-5">
          <section class="surface-card p-6">
            <h2 class="menu-card__title mb-4">Pickup preferences</h2>
            <div class="field">
              <label for="slot-range">Slot window</label>
                <asp:TextBox ID="TextBox1" runat="server" type="text" value="15 minutes"></asp:TextBox>
            </div>
            <div class="field">
              <label for="notice">Notice board</label>
              <textarea id="notice">Special meal today — add a new chef’s selection.</textarea>
            </div>
            <a href="dashboard.aspx" class="btn btn-primary">Save changes</a>
          </section>
          <section class="surface-card p-6">
            <h2 class="menu-card__title mb-4">Store details</h2>
            <div class="field">
              <label for="store-name">Store name</label>
                <asp:TextBox ID="TextBox2" runat="server" type="text" value="Campus Canteen"></asp:TextBox>
            </div>
            <div class="field">
              <label for="contact">Contact</label>
                <asp:TextBox ID="TextBox3" runat="server" type="text" value="+91 9999999999"></asp:TextBox>
            </div>
          </section>
        </div>
      </main>
    </div>
    <div id="site-footer"></div>
</asp:Content>

