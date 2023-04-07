<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Najava.aspx.cs" Inherits="IT_lab1.Najava" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row m-2">
            <div class="col-2">
                Име  
            </div>
            <div class="col-8">
                <asp:TextBox ID="name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator
                    class="text-danger"
                    ID="nameValidator"
                    runat="server"
                    ErrorMessage="Внесете име"
                    ControlToValidate="name"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="row m-2">
            <div class="col-2">
                Лозинка
             </div>
            <div class ="col-8">
                <asp:TextBox ID="password" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator
                class="text-danger"
                ID="passValidator"
                runat="server"
                ErrorMessage="Внесете лозинка"
                ControlToValidate="password"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="row m-2">
            <div class="col-2">
                е-адреса
            </div>
            <div class ="col-8">
            <asp:TextBox ID="email" runat="server"></asp:TextBox>
           
                <asp:RegularExpressionValidator
                    class="text-danger"
                    ID="emailval"
                    runat="server"
                    ControlToValidate="email"
                    ErrorMessage="Невалиден формат"
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                   ></asp:RegularExpressionValidator>
                 <asp:RequiredFieldValidator
                class="text-danger"
                ID="RequiredFieldValidator2"
                runat="server"
                ErrorMessage="Внесете е-адреса"
                ControlToValidate="email"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class ="row m-2">
            <div class="col">
            <asp:Button ID="najava" runat="server" Text="Најавете се" OnClick="najava_Click" />
        
            </div>
       </div>
    </div>

</asp:Content>
