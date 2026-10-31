<%@ Page Title="" Language="C#" MasterPageFile="~/Campus.Eats.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="Campus.Eats.profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div id="site-header"></div>
    <div class="page-shell">
      <section class="section">
        <div class="container">
          <div class="eyebrow">Profile</div>
          <h1 class="page-title">Your campus identity</h1>
          <div class="grid grid-2 mt-5">
            <section class="surface-card p-6">
              <h2 class="menu-card__title mb-4">Student details</h2>
              <div class="field">
                <label>Name</label>
                  <asp:TextBox ID="TextBox1" runat="server" type="text" value="Jane Doe"></asp:TextBox>
              </div>
              <div class="field">
                <label>Phone</label>
                  <asp:TextBox ID="TextBox2" runat="server" type="tel" value="+91 9999999999"></asp:TextBox>
              </div>
              <div class="field">
                <label>Campus</label>
                  <asp:TextBox ID="TextBox3" runat="server" type="text" value="North Campus"></asp:TextBox>
              </div>
            </section>
            <section class="surface-card p-6">
              <h2 class="menu-card__title mb-4">Preferences</h2>
              <div class="field">
                <label>Favourite meal</label>
                  <asp:TextBox ID="TextBox4" runat="server" type="text" value="Crispy Wrap"></asp:TextBox>
              </div>
              <div class="field">
                <label>Pickup note</label>
                <textarea>Please keep it fresh and light.</textarea>
              </div>
              <a href="orders.aspx" class="btn btn-primary">Save profile</a>
            </section>
          </div>
        </div>
      </section>
      <div id="site-footer"></div>
    </div>
</asp:Content>

