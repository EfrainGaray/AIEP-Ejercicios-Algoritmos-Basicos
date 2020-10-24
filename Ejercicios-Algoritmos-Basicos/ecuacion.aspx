<%@ Page Title="ecuacion" Language="C#" AutoEventWireup="true" MasterPageFile="~/Main.Master" CodeBehind="ecuacion.aspx.cs" Inherits="Ejercicios_Algoritmos_Basicos.ecuacion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>Ejerccios Algoritmo - Basicos Ecuacion Cuadratica</title>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="main" runat="server">
      <div class="hero-body">
            <div class="container">
                <div class="columns is-centered">
                    <div class="column is-5-tablet is-4-desktop is-3-widescreen">
                        <form runat="server" id="form3" class="box">
                            <div class="field">
                                <label for="" class="label">Ingrese valor de x</label>
                                <div class="control has-icons-left">
                                    <asp:TextBox ID="txtX" runat="server"  CssClass="input pl-130"></asp:TextBox>
                                    <span class="icon is-small is-left" style="width: 130px; font-size: 15px;">
                                        Y= 3X<sup>2</sup> + 7X - 15
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


