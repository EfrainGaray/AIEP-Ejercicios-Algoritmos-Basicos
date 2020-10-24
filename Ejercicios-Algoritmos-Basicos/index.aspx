<%@ Page Title="index" Language="C#" AutoEventWireup="true"  MasterPageFile="~/Main.Master"  CodeBehind="index.aspx.cs" Inherits="Ejercicios_Algoritmos_Basicos.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>Ejerccios Algoritmo - Basicos Ecuacion login</title>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="main" runat="server">
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
</asp:Content>
