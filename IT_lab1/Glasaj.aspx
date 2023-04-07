<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Glasaj.aspx.cs" Inherits="IT_lab1.Glasaj" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="row">
            <asp:Image ID="Image1" runat="server" src="finki.png" />
        </div>
        <div class="row m-2">
            <asp:Label ID="lblProfesor" runat="server" Text=""></asp:Label>
        </div>

        <div class="row m-2">
            <div class="col-5">
                <asp:ListBox ID="lbPredmeti" runat="server" OnSelectedIndexChanged="lbPredmeti_SelectedIndexChanged" AutoPostBack="true" ></asp:ListBox>
            </div>
            <div class="col-2">
                <asp:ListBox ID="lbKrediti" runat="server"></asp:ListBox>
            </div>

        </div>

        <div class="row m-2">
            <div class="col">
                <asp:Button ID="vote" runat="server" Text="Гласајте" OnClick="vote_Click" />
            </div>
        </div>
        <hr />

        <div class="row m-2">
            <div class="col-5">
                Предмет:<br />
                <asp:TextBox ID="addPredmet" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="row m-2">
            <div class="col-6">
                Кредити:
                <br />
                <asp:TextBox ID="addKrediti" runat="server"></asp:TextBox>
            </div>
        </div>

        <div class="row m-2">
            <div class="col">
                <asp:Button ID="dodadi" runat="server" Text="Додади" OnClick="dodadi_Click" />
            </div>
            <div class="col">
                <asp:Button ID="izbrishi" runat="server" Text="Избриши" OnClick="izbrishi_Click" />
            </div>
        </div>
        <div class="row">
            <asp:Label ID="lbmail" runat="server" Text=""></asp:Label>
        </div>

    </div>

</asp:Content>
