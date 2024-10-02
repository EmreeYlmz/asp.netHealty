<%@ Page Title="" Language="C#" MasterPageFile="~/danisanmaster.Master" AutoEventWireup="true" CodeBehind="DanisanDiyetisyenim.aspx.cs" Inherits="WebApplication1.DanisanDiyetisyenim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body, html {
            height: 100%;
            margin: 0;
            padding: 0;
            font-family: 'Nunito', sans-serif;
            background-color: #f4f7f6;
        }

        .navbar {
            z-index: 1000;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: calc(100vh - 100px);
            padding-top: 100px;
            padding-bottom: 50px;
        }

        .card {
            width: 100%;
            max-width: 500px; /* Sabit genişlik */
            margin: 10px;
            border: 2px solid #28a745;
            border-radius: 15px;
            transition: all 0.3s ease;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.2);
        }

        .card-header {
            text-align: center;
            padding: 20px;
            background-color: transparent;
            color: #333;
            border-top-left-radius: 15px;
            border-top-right-radius: 15px;
        }

        .card-header h5 {
            font-size: 24px;
            font-weight: bold;
            margin-top: 15px;
            margin-bottom: 10px;
            color: #333;
        }

        .card-body {
            padding: 20px;
            text-align: center;
            margin: 0 auto; /* Center the content horizontally */
        }

        .card-text {
            color: #555;
            font-size: 20px;
            margin-bottom: 20px;
        }

        .card-text strong {
            color: #333;
            font-weight: bold;
        }

        .btn-primary:hover {
            background-color: #218838;
            border-color: #218838;
        }

        .btn-primary {
            background-color: #28a745;
            border-color: #28a745;
            padding: 5% 10%;
            font-size: 16px;
            border-radius: 5px;
            transition: background-color 0.3s ease, border-color 0.3s ease;
            text-align: center;
            text-decoration: none;
            color: #fff;
            display: inline-block; /* Display as inline block to center the button horizontally */
        }

        /* Media queries for responsive design */
        @media (max-width: 50px) {
            .btn-primary {
                padding: 8% 16%;
                font-size: 8px;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="diyetisyenkullaniciaditxt" runat="server" Text="Label"></asp:Label> <br />
    <asp:Label ID="diyetisyenidtxt" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

        <asp:Button ID="changeDietitianBtn" runat="server" Text="Diyetisyeni Değiştir" OnClick="changeDietitianBtn_Click" ForeColor="#107C10" />
    <!-- Danışanın seçtiği diyetisyenin kartı -->
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8" id="selectedDietitianCard">
                <div class="card">
                    <div class="card-header">
                        <asp:Label ID="dytadi" runat="server" Text="Diyetisyen Bilgileri" CssClass="card-title"></asp:Label>
                    </div>
                    <div class="card-body">
                        <p class="card-text" id="selectedDietitianContact"><strong>İletişim Bilgileri:</strong></p>
                        <asp:Label ID="dytmail" runat="server" Text="" CssClass="card-text"></asp:Label>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>




