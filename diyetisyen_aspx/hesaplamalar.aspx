<%@ Page Title="" Language="C#" MasterPageFile="~/diyetisyenmaster.Master" AutoEventWireup="true" CodeBehind="hesaplamalar.aspx.cs" Inherits="WebApplication1.hesaplamalar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* Genel Stil */
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
        }
        .container {
            margin-top: 20px;
        }
        h2 {
            color: #28a745;
        }
        .card {
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            padding: 20px;
            margin-bottom: 20px;
        }
        /* Form Stili */
        .form-group {
            margin-bottom: 20px;
        }
        .form-group label {
            font-weight: bold;
        }
        .form-control {
            width: 100%;
            padding: 10px;
            border: 1px solid #ced4da;
            border-radius: 5px;
        }
        .btn-primary {
            background-color: #28a745;
            border: none;
            color: #fff;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }
        .btn-primary:hover {
            background-color: #218838;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="card">
            <h2>Günlük Beslenme İhtiyacı Hesaplama Aracı</h2>
            <div class="form-group">
                <label for="txtKilo">Kilonuz (kg):</label>
                <asp:TextBox ID="txtKilo" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtBoy">Boyunuz (cm):</label>
                <asp:TextBox ID="txtBoy" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtYas">Yaşınız:</label>
                <asp:TextBox ID="txtYas" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="ddlCinsiyet">Cinsiyetiniz:</label>
                <asp:DropDownList ID="ddlCinsiyet" runat="server" CssClass="form-control">
                    <asp:ListItem Text="Erkek" Value="erkek"></asp:ListItem>
                    <asp:ListItem Text="Kadın" Value="kadin"></asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <asp:Button ID="btnHesapla" runat="server" Text="Hesapla" CssClass="btn btn-primary" OnClick="btnHesapla_Click" />
            </div>
            <div id="sonuc" runat="server"></div>
        </div>
    </div>
</asp:Content>
