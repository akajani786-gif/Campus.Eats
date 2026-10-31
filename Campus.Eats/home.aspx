<%@ Page Title="" Language="C#" MasterPageFile="~/Campus.Eats.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Campus.Eats.home" %>
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
                <h1 class="page-title">Order now. <span class="accent">Pick your slot.</span></h1>
                <p class="lead mb-5">Fresh meals, zero queues, and a pickup window that fits your day.</p>
                <div class="flex gap-3 flex-wrap">
                  <%--<a href="login.aspx" class="btn btn-primary">Sign in</a>--%>
                  <a href="cart.aspx" class="btn btn-secondary">See cart</a>
                </div>
              </div>
              <div class="surface-card p-8 brutal-shadow">
                <div class="eyebrow">Featured dishes</div>
                <div class="card-list">
                  <article class="menu-card">
                    <div class="menu-card__image hero-image" style="background-image:url('https://images.unsplash.com/photo-1516197370049-569c4eaba1d6?auto=format&fit=crop&w=800&q=80');"></div>
                    <div class="menu-card__body">
                      <div class="menu-card__meta">
                        <h3 class="menu-card__title">Crispy Wrap</h3>
                        <span class="menu-card__price">₹140</span>
                      </div>
                      <p class="menu-card__desc">Layered with grilled vegetables and house sauce.</p>
                    </div>
                  </article>
                  <article class="menu-card">
                    <div class="menu-card__image hero-image" style="background-image:url('https://images.unsplash.com/photo-1512152272829-e3139592d56f?auto=format&fit=crop&w=800&q=80');"></div>
                    <div class="menu-card__body">
                      <div class="menu-card__meta">
                        <h3 class="menu-card__title">Saffron Rice</h3>
                        <span class="menu-card__price">₹120</span>
                      </div>
                      <p class="menu-card__desc">A warm bowl of spice, herbs, and comfort.</p>
                    </div>
                  </article>
                </div>
              </div>
            </div>
          </div>
        </section>
      </main>

      <div id="site-footer"></div>
    </div>
</asp:Content>

