<%@ Page Title="conversor" Language="C#" AutoEventWireup="true"  MasterPageFile="~/Main.Master"  CodeBehind="conversor.aspx.cs" Inherits="Ejercicios_Algoritmos_Basicos.conversor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>Ejerccios Algoritmo - Conversor</title>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="main" runat="server">
<div class="hero-body">
            <div class="container">

                <div class="columns is-centered">

                    <div class="column is-5-tablet is-4-desktop is-3-widescreen">
                    
                        <form id="form" runat="server" class="box">
                        <h1>Ingresa el que sera sumado entre si</h1>
                          <div class="field">
                                <label for="" class="label">Ingrese el valor y unidades a convertir</label>
                                <div class="control has-icons-left">

                                    <asp:TextBox ID="txtUnit" TextMode="Number"  runat="server" CssClass="input"></asp:TextBox>
                                    <span class="icon is-small is-left">
                                        <i class="fa fa-angle-right"></i>
                                    </span>
                                
                              
                                <asp:DropDownList ID="Conversor1" CssClass="input" runat="server">
                                      <asp:ListItem  Text ="Selecciones la unidad" Value ="0"></asp:ListItem>
                                      <asp:ListItem  Text ="mm" Value ="1000"></asp:ListItem>
                                      <asp:ListItem Text ="cm" Value ="100"></asp:ListItem>
                                     <asp:ListItem Text ="dm" Value ="10"></asp:ListItem>
                                     <asp:ListItem Text ="m" Value ="1"></asp:ListItem>
                                 </asp:DropDownList>
                                   <p class="center">A</p>
                                  <asp:DropDownList ID="Conversor2" CssClass="input" runat="server">
                                     <asp:ListItem  Text ="Selecciones la unidad" Value ="0"></asp:ListItem>
                                     <asp:ListItem  Text ="mm" Value ="1000"></asp:ListItem>
                                      <asp:ListItem Text ="cm" Value ="100"></asp:ListItem>
                                     <asp:ListItem Text ="dm" Value ="10"></asp:ListItem>
                                     <asp:ListItem Text ="m" Value ="1"></asp:ListItem>
                                 </asp:DropDownList>
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
