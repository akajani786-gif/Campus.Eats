<%@ Page Title="" Language="C#" MasterPageFile="~/Campus.Eats.Master" AutoEventWireup="true" CodeBehind="add-menu-item.aspx.cs" Inherits="Campus.Eats.add_menu_item" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style>
        .product-grid-wrapper {
            width: 100%;
            margin: 24px 0;
            padding: 16px;
            background: var(--surface, #ffffff);
            border: 2px solid var(--border, #191d17);
            border-radius: var(--radius, 1.25rem);
            box-shadow: var(--shadow-sm, 4px 4px 0 rgba(25,29,23,0.12));
            overflow-x: auto;
        }

        .product-grid {
            width: 100%;
            min-width: 750px;
            border-collapse: collapse;
            font-family: "Manrope", "Segoe UI", Arial, sans-serif;
            font-size: 14px;
            color: var(--text, #191d17);
        }

            .product-grid th {
                background: var(--text, #191d17);
                color: var(--bg, #f4f1ec);
                padding: 14px 12px;
                text-align: left;
                font-size: 11px;
                font-weight: 800;
                text-transform: uppercase;
                letter-spacing: 0.08em;
                white-space: nowrap;
            }

            .product-grid td {
                padding: 12px;
                border-bottom: 1px solid rgba(25, 29, 23, 0.12);
                vertical-align: middle;
            }

            .product-grid tr:last-child td {
                border-bottom: none;
            }

            .product-grid tr:hover td {
                background: #f4f1ec;
            }

            /* Product images */
            .product-grid img {
                width: 50px;
                height: 50px;
                object-fit: cover;
                border: 2px solid var(--border, #191d17);
                border-radius: 10px;
            }

            /* Edit button */
            .product-grid .edit-link {
                display: inline-block;
                padding: 7px 12px;
                background: var(--accent-2, #f3c544);
                color: var(--text, #191d17);
                border: 2px solid var(--border, #191d17);
                border-radius: 999px;
                font-size: 11px;
                font-weight: 800;
                text-decoration: none;
                transition: transform 180ms ease, box-shadow 180ms ease;
            }

            /* Delete button */
            .product-grid .delete-link {
                display: inline-block;
                padding: 7px 12px;
                background: var(--accent, #df492d);
                color: #ffffff;
                border: 2px solid var(--border, #191d17);
                border-radius: 999px;
                font-size: 11px;
                font-weight: 800;
                text-decoration: none;
                transition: transform 180ms ease, box-shadow 180ms ease;
            }

                /* Button hover effects */
                .product-grid .edit-link:hover,
                .product-grid .delete-link:hover {
                    transform: translateY(-2px);
                    box-shadow: 4px 4px 0 rgba(25, 29, 23, 0.12);
                }

        @media (max-width: 760px) {
            .product-grid-wrapper {
                padding: 8px;
            }

            .product-grid th,
            .product-grid td {
                padding: 10px;
            }
        }
    </style>
    <div class="dashboard-shell">
        <aside class="sidebar">
            <div class="sidebar-brand">
                <div class="brand"><span>🍴</span><span>campus<span class="brand-accent">.eats</span></span></div>
                <div class="eyebrow" style="margin-top: 0.6rem;">admin console</div>
            </div>
            <nav class="sidebar-nav">
                <a href="admin-dashboard.aspx">📊 Overview</a>
                <a href="admin-menu.aspx" class="active">🍽️ Menu</a>
                <a href="admin-orders.aspx">📦 Orders</a>
                <a href="admin-staff.aspx">👥 Staff</a>
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
            <div class="mb-5">
                <div class="eyebrow">Catalog</div>
                <h1 class="page-title">Add new menu item</h1>
            </div>

            <section class="surface-card p-6" style="max-width: 900px;">
                <div class="form-grid">
                    <div class="field">
                        <label>Name</label>
                        <asp:TextBox ID="txtnm" runat="server" placeholder="Enter item name"></asp:TextBox>
                        <asp:Label ID="lblnmerr" runat="server" Text="" ForeColor="Red"></asp:Label>
                    </div>

                    <div class="field">
                        <label>Category ID</label>
                        <asp:DropDownList ID="drpcat" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                            <asp:ListItem>-- Select Category --</asp:ListItem>
                            <asp:ListItem Value="1">Sandwiches &amp; Burgers</asp:ListItem>
                            <asp:ListItem Value="2">South Indian</asp:ListItem>
                            <asp:ListItem Value="3">Snacks</asp:ListItem>
                            <asp:ListItem Value="4">Beverages</asp:ListItem>
                            <asp:ListItem Value="5">Desserts &amp; Others</asp:ListItem>
                        </asp:DropDownList>
                        <asp:Label ID="lblciderr" runat="server" Text="" ForeColor="Red"></asp:Label>
                    </div>

                    <div class="field" style="grid-column: 1 / -1;">
                        <label>Description</label>
                        <asp:TextBox ID="txtdesc" runat="server"
                            TextMode="MultiLine"
                            Rows="5"
                            placeholder="Add item description">
                        </asp:TextBox>
                        <asp:Label ID="lbldescerr" runat="server" Text="" ForeColor="Red"></asp:Label>
                    </div>

                    <div class="field">
                        <label>Price</label>
                        <asp:TextBox ID="txtprice" runat="server" type="number" min="0" step="1" placeholder="0.00"></asp:TextBox>
                        <asp:Label ID="lblprierr" runat="server" Text="" ForeColor="Red"></asp:Label>
                    </div>

                    <div class="field">
                        <label>Preparation Time</label>
                        <asp:TextBox ID="txtprep_t" runat="server" type="text" placeholder="e.g. 15 minutes"></asp:TextBox>
                        <asp:Label ID="lblpreperr" runat="server" Text="" ForeColor="Red"></asp:Label>
                    </div>

                    <div class="field" style="grid-column: 1 / -1;">
                        <label>Image</label>
                        <asp:FileUpload ID="flpimg" runat="server" />
                        <asp:Label ID="lblimgerr" runat="server" Text="" ForeColor="Red"></asp:Label>
                    </div>
                </div>

                <div class="flex justify-between items-center flex-wrap gap-3 mt-5">
                    <a href="admin-menu.aspx" class="btn btn-secondary">Cancel</a>
                    <asp:Button ID="Button1" runat="server" Text="Save item" type="submit" class="btn btn-primary" OnClick="Button1_Click" />
                </div>
            </section>
            <div class="product-grid-wrapper">
                <asp:GridView
                    ID="GridView1"
                    runat="server"
                    AutoGenerateColumns="False"
                    OnRowCommand="GridView1_RowCommand"
                    CssClass="product-grid"
                    GridLines="None"
                    CellSpacing="0">

                    <Columns>

                        <asp:TemplateField HeaderText="ID">
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server"
                                    Text='<%# Eval("Id") %>'>
                                </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Name">
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server"
                                    Text='<%# Eval("name") %>'>
                                </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Category">
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server"
                                    Text='<%# Eval("category_id") %>'>
                                </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Price">
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server"
                                    Text='<%# Eval("price") %>'>
                                </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Image">
                            <ItemTemplate>
                                <asp:Image ID="Image1"
                                    runat="server"
                                    Height="50"
                                    Width="50"
                                    ImageUrl='<%# Eval("image") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Preparation Time">
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server"
                                    Text='<%# Eval("preparation_time") %>'>
                                </asp:Label>
                                min
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Update">
                            <ItemTemplate>
                                <asp:LinkButton
                                    ID="LinkButton1"
                                    runat="server"
                                    CssClass="edit-link"
                                    CommandArgument='<%# Eval("Id") %>'
                                    CommandName="cmd_edt">
                        Edit
                                </asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Delete">
                            <ItemTemplate>
                                <asp:LinkButton
                                    ID="LinkButton2"
                                    runat="server"
                                    CssClass="delete-link"
                                    CommandArgument='<%# Eval("Id") %>'
                                    CommandName="cmd_dlt"
                                    OnClientClick="return confirm('Are you sure you want to delete this item?');">
                        Delete
                                </asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>

                    </Columns>
                </asp:GridView>
            </div>
        </main>

    </div>
</asp:Content>

