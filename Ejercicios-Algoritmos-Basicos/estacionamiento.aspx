<%@ Page Title="estacionamiento" Language="C#" AutoEventWireup="true"  MasterPageFile="~/Main.Master"  CodeBehind="estacionamiento.aspx.cs" Inherits="Ejercicios_Algoritmos_Basicos.estacionamiento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>Ejerccios Algoritmo - Estacionamiento</title>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="main" runat="server">
<div class="hero-body">
            <div class="container">

                <div class="columns is-centered">

                    <div class="column is-5-tablet is-4-desktop is-3-widescreen">
                    
                        <form id="form" runat="server" class="box">
                            <h1>Calculo de estacionamiento</h1>
                          <div class="field">
                                <label for="" class="label">Nombre Usuario</label>
                                <div class="control has-icons-left">

                                    <asp:TextBox ID="txtName" runat="server" CssClass="input"></asp:TextBox>
                                    <span class="icon is-small is-left">
                                        <i class="fa fa-angle-right"></i>
                                    </span>
                                
                                </div>
                            </div>  
                        
                         <div class="field">
                                <label for="" class="label">Ingrese la patente</label>
                                <div class="control has-icons-left">

                                    <asp:TextBox ID="txtPpu" runat="server" CssClass="input"></asp:TextBox>
                                    <span class="icon is-small is-left">
                                        <i class="fa fa-angle-right"></i>
                                    </span>
                                
                                </div>
                            </div>   
                        
                           <div class="field">
                                <label for="" class="label">Ingrese las horas</label>
                                <div class="control has-icons-left">

                                    <asp:TextBox ID="txtHour" TextMode="Number"  runat="server" CssClass="input"></asp:TextBox>
                                    <span class="icon is-small is-left">
                                        <i class="fa fa-angle-right"></i>
                                    </span>
                                
                                </div>
                            </div>   
                        
                        
                            <div class="field">
                                <asp:Button ID="btnSend" runat="server" OnClick="btnSend_Click" Text="Calcular" CssClass="button is-succes" />
                                <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="Limpiar" CssClass="button is-succes" />
                                <a href="index.aspx" class="button is-succes" >volver</a>
                            </div>
                            <div id="result" runat="server">
                            </div>
                        
                        </form>
                    </div>
                </div>
            </div>
        </div>
</asp:Content>
