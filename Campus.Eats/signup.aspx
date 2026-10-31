<%@ Page Title="" Language="C#" MasterPageFile="~/Campus.Eats.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="Campus.Eats.signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="auth-grid">
        <section class="auth-hero hero-image" style="background-image: linear-gradient(180deg, rgba(25,29,23,.25), rgba(25,29,23,.75)), url('https://images.unsplash.com/photo-1512152272829-e3139592d56f?auto=format&fit=crop&w=1200&q=80');">
            <div class="overlay">
                <div class="eyebrow" style="color: #f3c544">Join campus.eats</div>
                <h1 class="page-title" style="color: #fff">Create your account<br />
                    <span class="accent">And order fast.</span></h1>
                <p class="lead" style="color: #f4f1ec; margin-top: 1rem;">Reserve your lunch and keep all favorites in one place.</p>
            </div>
        </section>
        <section class="p-8" style="display: flex; align-items: center; justify-content: center; background: var(--bg);">
            <div class="auth-card">
                <div class="eyebrow">Create account</div>
                <h2 class="page-title" style="font-size: 1.8rem; margin-bottom: 0.5rem;">Set up your profile</h2>
                <p class="lead mb-5">Use your campus phone number to sign up in a few steps.</p>
                <div class="field">
                    <label>Username</label>
                    <asp:TextBox ID="txtunm" runat="server" type="text" placeholder="Username"></asp:TextBox>
                    <asp:Label ID="lblunmerr" runat="server" Text="" ForeColor="Red"></asp:Label>
                </div>
                <div class="field">
                    <label>Email</label>
                    <asp:TextBox ID="txteml" runat="server" type="email" placeholder="jane@campus.edu"></asp:TextBox>
                    <asp:Label ID="lblemlerr" runat="server" Text="" ForeColor="Red"></asp:Label>
                </div>
                <div class="field">
                    <label>Mobile number</label>
                    <asp:TextBox ID="txtmno" runat="server" type="tel" placeholder="+919999999999"></asp:TextBox>
                    <asp:Label ID="lblmnoerr" runat="server" Text="" ForeColor="Red"></asp:Label>
                </div>
                <div class="field">
                    <label>Password</label>
                    <asp:TextBox ID="txtpass" runat="server" type="password" placeholder="********" Visible="True"></asp:TextBox>
                </div>
                <div class="field">
                    <label>Confirm Password</label>
                    <asp:TextBox ID="txtcpass" runat="server" type="password" placeholder="********"></asp:TextBox>
                    <asp:Label ID="lblpasserr" runat="server" Text="" ForeColor="Red"></asp:Label>
                </div>
                <asp:Button ID="btn_register" runat="server" Text="CONTINUE" class="btn btn-primary btn-block" OnClick="btn_register_Click" />
            </div>
        </section>
    </div>
    </asp:Content>

