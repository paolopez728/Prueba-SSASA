<%@ Page Title="" Language="C#" MasterPageFile="~/PM.Master" AutoEventWireup="true" CodeBehind="CRUD.aspx.cs" Inherits="Prueba_SSASA.Paginas.CRUD" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    CRUD
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <br />
    <div class="mx-auto" style="width: 250px">
        <asp:Label runat="server" CssClass="h2" ID="lbltitulo"></asp:Label>
    </div>
    <form runat="server" class="h-100 d-flex align-items-center justify-content-center">
        <div>
            <div class="container">
                <div class="row">
                    <div class="mb-3">
                        <label class="form-label">Nombre</label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="tbnombre"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Dpi</label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="tbdpi"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Sexo</label>
                        <asp:DropDownList runat="server" CssClass="form-control" ID="listSexo">
                            <asp:ListItem Text="Femenino" Value="Femenino"></asp:ListItem>
                            <asp:ListItem Text="Masculino" Value="Masculino"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Email</label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="tbemail"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Fecha de nacimiento</label>
                        <asp:TextBox runat="server" TextMode="Date" CssClass="form-control" ID="tbdate"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Edad</label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="tbedad"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Fecha de Ingreso</label>
                        <asp:TextBox runat="server" TextMode="Date" CssClass="form-control" ID="tbingreso"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Direccion</label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="tbdireccion"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Nit</label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="tbnit"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Departamento</label>
                        <asp:DropDownList runat="server" CssClass="form-control" ID="listDepartamento">
                            <asp:ListItem Text="Créditos y Cobros" Value="Créditos y Cobros"></asp:ListItem>
                            <asp:ListItem Text="Publicidad e Imagen Corporativa" Value="Publicidad e Imagen Corporativa"></asp:ListItem>
                            <asp:ListItem Text="Gerencia General" Value="Gerencia General"></asp:ListItem>
                            <asp:ListItem Text="Finanzas" Value="Finanzas"></asp:ListItem>
                            <asp:ListItem Text="Mercadeo" Value="Mercadeo"></asp:ListItem>
                            <asp:ListItem Text="Contabilidad" Value="Contabilidad"></asp:ListItem>
                            <asp:ListItem Text="Negocios" Value="Negocios"></asp:ListItem>
                            <asp:ListItem Text="Administración" Value="Administración"></asp:ListItem>
                            <asp:ListItem Text="Informática" Value="Informática"></asp:ListItem>
                            <asp:ListItem Text="Corporativo" Value="Corporativo"></asp:ListItem>
                            <asp:ListItem Text="Riesgos" Value="Riesgos"></asp:ListItem>
                            <asp:ListItem Text="Ventas" Value="Ventas"></asp:ListItem>
                        </asp:DropDownList>

                    </div>
                </div>
            </div>

            <asp:Button runat="server" CssClass="btn btn-primary" ID="BtnCreate" Text="Create" Visible="True" OnClick="BtnCreate_Click" />
            <asp:Button runat="server" CssClass="btn btn-primary" ID="BtnUpdate" Text="Update" Visible="True" OnClick="BtnUpdate_Click" />
            <asp:Button runat="server" CssClass="btn btn-primary" ID="BtnDelete" Text="Delete" Visible="True" OnClick="BtnDelete_Click" />
            <asp:Button runat="server" CssClass="btn btn-primary btn-dark" ID="BtnVolver" Text="Volver" Visible="True" OnClick="BtnVolver_Click" />
        </div>
    </form>
</asp:Content>
