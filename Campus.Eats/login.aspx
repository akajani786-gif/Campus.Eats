<%@ Page Title="" Language="C#" MasterPageFile="~/Campus.Eats.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Campus.Eats.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="auth-grid">
        <section class="auth-hero hero-image" style="background-image: linear-gradient(180deg, rgba(25,29,23,.25), rgba(25,29,23,.75)), url('https://images.unsplash.com/photo-1516197370049-569c4eaba1d6?auto=format&fit=crop&w=1200&q=80');">
            <div class="overlay">
                <div class="eyebrow" style="color: #f3c544">Step 1 of 2</div>
                <h1 class="page-title" style="color: #fff">Skip the queue.<br />
                    <span class="accent">Eat first.</span></h1>
                <p class="lead" style="color: #f4f1ec; margin-top: 1rem;">Sign in with your phone, get a one-time passcode, and pick up your meal on time.</p>
            </div>
        </section>
        <section class="p-8" style="display: flex; align-items: center; justify-content: center; background: var(--bg);">
            <div class="auth-card">
                <div class="eyebrow">Sign in</div>
                <h2 class="page-title" style="font-size: 1.8rem; margin-bottom: 0.5rem;">Welcome back</h2>
                <p class="lead mb-5">We’ll text a one-time code to your phone.</p>
                <div class="field">
                    <label for="name">Username</label>
                    <asp:TextBox ID="txtunm" runat="server" type="text" placeholder="Username"></asp:TextBox>
                    <asp:Label ID="lblunmerr" runat="server" Text="" ForeColor="Red"></asp:Label>
                </div>
                <div class="field">
                    <label>Password</label>
                    <asp:TextBox ID="txtpass" runat="server" type="password" placeholder="********"></asp:TextBox>
                    <asp:Label ID="lblpasserr" runat="server" Text="" ForeColor="Red"></asp:Label>
                </div>
                <asp:Button ID="btnlogin" runat="server" Text="Login" class="btn btn-primary btn-block mb-3" OnClick="btnlogin_Click" />
                <asp:Button ID="btnregister" runat="server" Text="Create account" class="btn btn-secondary btn-block" OnClick="btnregister_Click" />

            </div>
        </section>
    </div>
</asp:Content>

