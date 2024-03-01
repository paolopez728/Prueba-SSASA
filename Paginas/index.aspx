<%@ Page Title="" Language="C#" MasterPageFile="~/PM.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Prueba_SSASA.Paginas.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Inicio
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <form runat="server">
        <br />
        <div class="mx-auto" style="width: 300px">
            <h2>Listado de registros</h2>
        </div>
        <br />
        <div class="container">
            <div class="row">
                <div class="col align-self-end">
                    <asp:Button runat="server" ID="BtnCreate" CssClass="btn btn-sucess form-control" Text="Create" OnClick="BtnCreate_Click" />
                </div>
            </div>
        </div>
        <br />
        <div class="container">
            <div class="row">
                <div class="table-responsive">
                    <table class="table table-borderless table-hover small">
                        <asp:GridView runat="server" ID="gvusuarios" CssClass="table table-borderless table-hover">
                            <Columns>
                                <asp:TemplateField HeaderText="Opciones del administrador">
                                    <ItemTemplate>
                                        <asp:Button runat="server" Text="Read" CssClass="btn btn-info btn-sm form-control-sm" ID="BtnRead" OnClick="BtnRead_Click" />
                                        <asp:Button runat="server" Text="Update" CssClass="btn btn-warning btn-sm form-control-sm" ID="BtnUpdate" OnClick="BtnUpdate_Click" />
                                        <asp:Button runat="server" Text="Delete" CssClass="btn btn-danger btn-sm form-control-sm" ID="BtnDelete" OnClick="BtnDelete_Click" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </table>
                </div>
            </div>
        </div>
    </form>
</asp:Content>
