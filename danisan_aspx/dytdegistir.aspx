<%@ Page Title="" Language="C#" MasterPageFile="~/danisanmaster.Master" AutoEventWireup="true" CodeBehind="dytdegistir.aspx.cs" Inherits="WebApplication1.danisan_aspx.dytdegistir" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f7f6;
        }

        .navbar {
            background-color: #1e7c1e;
            color: #ffffff;
        }

        .container {
            padding: 20px;
        }

        .card {

            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
            padding: 20px;
        }

        .card-title {
            font-family:'Schadow BT';
            font-size: 20px;
            font-weight: bold;
            margin-bottom: 10px;
            color: #333333;
        }

        .card-info {

            font-size: 20px;
            margin-bottom: 5px;
            color: #555555;
        }

        .btn-select {
            background-color: #2eae2e;
            color: #ffffff;
            border: none;
            border-radius: 5px;
            padding: 8px 16px;
            font-size: 18px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            width: auto; /* Butonun içeriğine göre genişlemesini sağlar */
            margin-left: auto; /* Butonu sağa hizalar */
            margin-right: auto; /* Butonu sola hizalar */
        }

        .btn-select:hover {
            background-color: #258a25;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h2>Diyetisyen Listesi</h2>

        <%-- Burada diyetisyenler dinamik olarak oluşturulacak --%>
        <asp:Repeater ID="rptDiyetisyenler" runat="server">
            <ItemTemplate>
                <div class="card">
                    <div class="card-title"><%# Eval("Adi") %> <%# Eval("Soyadi") %></div>
                    <div class="card-info">E-posta: <%# Eval("Mail") %></div>
                    <div class="card-info">Eğitim Bilgisi: <%# Eval("Egitim") %></div>
                    <asp:Button runat="server" ID="btnSelectDiyetisyen" CssClass="btn-select" Text="Diyetisyeni Seç" OnClick="SelectDiyetisyen_Click" CommandArgument='<%# Eval("diyetisyen_id") %>' />
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
