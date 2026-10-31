<%@ Page Title="" Language="C#" MasterPageFile="~/Campus.Eats.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Campus.Eats.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="page-shell">
      <div id="site-header"></div>

      <main>
        <section class="hero-panel fade-in">
          <div class="container section">
            <div class="grid grid-2 items-center">
              <div>
                <div class="eyebrow">Campus canteen experience</div>
                <h1 class="page-title">Skip the queue. <span class="accent">Eat first.</span></h1>
                <p class="lead mb-5">Pre-order lunch, pick your slot, and grab it hot without waiting in line.</p>
                <div class="flex gap-3 flex-wrap">
                  <a href="login.aspx" class="btn btn-primary">Sign in</a>
                  <a href="menu.aspx" class="btn btn-secondary">Browse menu</a>
                </div>
              </div>
              <div class="surface-card p-8 brutal-shadow">
                <div class="eyebrow">Today’s highlights</div>
                <div class="card-list">
                  <article class="menu-card">
                    <div class="menu-card__image hero-image" style="background-image:url('https://images.unsplash.com/photo-1516197370049-569c4eaba1d6?auto=format&fit=crop&w=800&q=80');"></div>
                    <div class="menu-card__body">
                      <div class="menu-card__meta">
                        <h3 class="menu-card__title">Crispy Wrap</h3>
                        <span class="menu-card__price">₹140</span>
                      </div>
                      <p class="menu-card__desc">Grilled veggies, chilli sauce, and fresh herbs.</p>
                    </div>
                  </article>
                  <article class="menu-card">
                    <div class="menu-card__image hero-image" style="background-image:url('https://images.unsplash.com/photo-1512152272829-e3139592d56f?auto=format&fit=crop&w=800&q=80');"></div>
                    <div class="menu-card__body">
                      <div class="menu-card__meta">
                        <h3 class="menu-card__title">Saffron Rice</h3>
                        <span class="menu-card__price">₹120</span>
                      </div>
                      <p class="menu-card__desc">Comforting bowl with roasted spice and herbs.</p>
                    </div>
                  </article>
                </div>
              </div>
            </div>
          </div>
        </section>

        <section class="section">
          <div class="container">
            <div class="eyebrow">Core flows</div>
            <div class="card-list">
              <a href="login.aspx" class="menu-card p-4">
                <h3 class="menu-card__title">Login</h3>
                <p class="menu-card__desc">Phone-based sign-in and OTP verification flow.</p>
              </a>
              <a href="cart.aspx" class="menu-card p-4">
                <h3 class="menu-card__title">Cart</h3>
                <p class="menu-card__desc">Review items, adjust quantities, and continue to checkout.</p>
              </a>
              <a href="dashboard.aspx" class="menu-card p-4">
                <h3 class="menu-card__title">Dashboard</h3>
                <p class="menu-card__desc">Admin console, kitchen pipeline, and slot management.</p>
              </a>
            </div>
          </div>
        </section>
      </main>

      <div id="site-footer"></div>
    </div>
</asp:Content>

