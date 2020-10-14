<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Ejercicios_Algoritmos_Basicos.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <title>Ejerccios Algoritmo - Basicos</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.1/css/bulma.min.css">
    <link rel="stylesheet" href="./assets/css/main.css" runat="server">
</head>
<body>
    <section class="hero is-info is-fullheight">
        <div class="hero-head">
            <nav class="navbar">
                <div class="container">
                    <div class="navbar-brand">
                        <a class="navbar-item" href="index.aspx">
                            <asp:Image ID="logo" runat="server" ImageUrl="~/assets/img/logo-400x140.png" AlternateText="Aiep" CssClass="u-max-full-width" />
                        </a>
                        <span class="navbar-burger burger" data-target="navbarMenu">
                            <span></span>
                            <span></span>
                            <span></span>
                        </span>
                    </div>
                    <div id="navbarMenu" class="navbar-menu">
                        <div class="navbar-end">
                            <span class="navbar-item">
                                <a class="button is-white is-outlined" href="index.aspx">
                                    <span class="icon">
                                        <i class="fa fa-user"></i>
                                    </span>
                                    <span>Login</span>
                                </a>
                            </span>
                            <span class="navbar-item">
                                <a class="button is-white is-outlined" href="promedio.aspx">
                                    <span class="icon">
                                        <i class="fa fa-graduation-cap"></i>
                                    </span>
                                    <span>Calcula Promedio</span>
                                </a>
                            </span>
                            <span class="navbar-item">
                                <a class="button is-white is-outlined" href="ecuacion.aspx">
                                    <span class="icon">
                                        <i class="fa fa-book"></i>
                                    </span>
                                    <span>Ecuación Cuadrática</span>
                                </a>
                            </span>
                            <span class="navbar-item">
                                <a class="button is-white is-outlined"  href="https://github.com/EfrainGaray/AIEP-Ejercicios-Algoritmos-Basicos">
                                    <span class="icon">
                                        <i class="fa fa-github"></i>
                                    </span>
                                    <span>View Source</span>
                                </a>
                            </span>
                        </div>
                    </div>
                </div>
            </nav>
        </div>

        <div class="hero-body">
            <div class="container">

                <div class="columns is-centered">

                    <div class="column is-5-tablet is-4-desktop is-3-widescreen">
                    
                        <form runat="server" class="box">
                            <div class="field">
                                <label for="" class="label">Email</label>
                                <div class="control has-icons-left">
                                    <asp:TextBox ID="txtEmail" runat="server" CssClass="input"></asp:TextBox>
                                    <span class="icon is-small is-left">
                                        <i class="fa fa-user"></i>
                                    </span>
                                </div>
                            </div>
                            <div class="field">
                                <label for="" class="label">Password</label>
                                <div class="control has-icons-left">
                                 
                                    <asp:TextBox ID="txtPasword" runat="server" CssClass="input"></asp:TextBox>
                                    <span class="icon is-small is-left">
                                        <i class="fa fa-lock"></i>
                                    </span>
                                </div>
                            </div>
                            <div class="field">
                                <label for="chkRememberme" class="checkbox">
                                    <asp:CheckBox ID="chkRememberme" runat="server" />
                                    Remember me
                                </label>
                            </div>
                            <div class="field">
                                <asp:Button ID="btnSend" runat="server" OnClick="btnSend_Click" Text="Ingresar" CssClass="button is-succes" />
                            </div>
                            <div id="result" runat="server">
                              
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>

</body>
</html>
