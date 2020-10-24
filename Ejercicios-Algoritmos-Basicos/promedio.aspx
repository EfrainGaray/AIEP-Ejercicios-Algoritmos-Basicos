<%@ Page Title="promedio" Language="C#" AutoEventWireup="true"  MasterPageFile="~/Main.Master" CodeBehind="promedio.aspx.cs" Inherits="Ejercicios_Algoritmos_Basicos.promedio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>Ejerccios Algoritmo - Basicos Ecuacion promedio</title>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="main" runat="server">
          <div class="hero-body">
            <div class="container">
                <div class="columns is-centered">
                    <div class="column is-5-tablet is-4-desktop is-3-widescreen">
                        <form runat="server" id="form" class="box">
                            <div class="field">
                                <label for="" class="label">Ingrese su nota</label>
                                <div class="control has-icons-left">
                                    <asp:TextBox ID="txtScore1" runat="server" CssClass="input"></asp:TextBox>
                                    <span class="icon is-small is-left">
                                        <i class="fa fa-angle-right"></i>
                                    </span>
                                </div>
                            </div>
                            <div class="field">
                                <label for="" class="label">Ingrese su nota</label>
                                <div class="control has-icons-left">

                                    <asp:TextBox ID="txtScore2" runat="server" CssClass="input"></asp:TextBox>
                                    <span class="icon is-small is-left">
                                        <i class="fa fa-angle-right"></i>
                                    </span>
                                </div>
                            </div>
                            <div class="field">
                                <label for="" class="label">Ingrese su nota</label>
                                <div class="control has-icons-left">

                                    <asp:TextBox ID="txtScore3" runat="server" CssClass="input"></asp:TextBox>
                                    <span class="icon is-small is-left">
                                        <i class="fa fa-angle-right"></i>
                                    </span>
                                </div>
                            </div>
                            <div class="field">
                                <asp:Button ID="btnSend" runat="server" OnClick="btnSend_Click" Text="Calcular" CssClass="button is-succes" />
                            </div>
                            <div id="result" runat="server">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
