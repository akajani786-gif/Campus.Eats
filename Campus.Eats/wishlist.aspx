<%@ Page Title="" Language="C#" MasterPageFile="~/Campus.Eats.Master" AutoEventWireup="true" CodeBehind="wishlist.aspx.cs" Inherits="Campus.Eats.wishlist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="page-shell">
      <div id="site-header"></div>
      <section class="section">
        <div class="container">
          <div class="eyebrow">Wishlist</div>
          <h1 class="page-title">Saved for later</h1>
          <div class="card-list mt-5">
            <article class="menu-card">
              <div class="menu-card__image hero-image" style="background-image:url('https://images.unsplash.com/photo-1482049016688-2d3e1b311543?auto=format&fit=crop&w=800&q=80');"></div>
              <div class="menu-card__body">
                <div class="menu-card__meta">
                  <h3 class="menu-card__title">Classic Pasta</h3>
                  <span class="menu-card__price">₹160</span>
                </div>
                <p class="menu-card__desc">Creamy tomato sauce with roasted garlic.</p>
              </div>
            </article>
            <article class="menu-card">
              <div class="menu-card__image hero-image" style="background-image:url('https://images.unsplash.com/photo-1512152272829-e3139592d56f?auto=format&fit=crop&w=800&q=80');"></div>
              <div class="menu-card__body">
                <div class="menu-card__meta">
                  <h3 class="menu-card__title">Saffron Bowl</h3>
                  <span class="menu-card__price">₹120</span>
                </div>
                <p class="menu-card__desc">A comforting bowl for a late afternoon pickup.</p>
              </div>
            </article>
          </div>
        </div>
      </section>
      <div id="site-footer"></div>
    </div>
</asp:Content>

