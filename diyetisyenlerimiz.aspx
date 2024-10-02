<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="diyetisyenlerimiz.aspx.cs" Inherits="WebApplication1.diyetisyenlerimiz" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: white;
        }

        .diyetisyen-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .diyetisyen-card {
            position: relative;
            background-color: #fff;
            border-radius: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            margin: 20px;
            max-width: 300px; /* Maksimum genişlik ayarı */
            transition: all 0.3s ease-in-out; /* Kart genişleme/küçülme animasyonu */
        }

        .diyetisyen-card:hover {
            transform: scale(1.05); /* Kartın büyüklüğünü artır */
        }

        .diyetisyen-card img {
            width: 100%;
            max-height: 200px; /* Maksimum yükseklik ayarı */
            height: auto;
            border-bottom: 1px solid #eee;
        }

        .diyetisyen-info {
            padding: 20px;
            text-align: center;
        }

        .diyetisyen-info h2 {
            margin-top: 0;
            color: #333;
        }

        .diyetisyen-info p {
            margin: 8px 0;
            color: #666;
        }

        .gradient-overlay {
            position: absolute;
            bottom: 0;
            left: 0;
            right: 0;
            height: 80px; /* Ayarlayabilirsiniz */
            background: linear-gradient(to bottom, rgba(255, 255, 255, 0) 0%, rgba(255, 255, 255, 1) 100%);
        }





    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="diyetisyen-container" runat="server" id="diyetisyenkart">
        
        </div>

       
        

        <!-- Diğer diyetisyen kartları buraya eklenebilir <div class="diyetisyen-card">
                    <img src="resimler/diyetisyen.png" alt="Diyetisyen Resmi" class="img-fluid" />
            <div class="diyetisyen-info">
                <h2>Banu Serbest</h2>
                <p>Uzmanlık Alanı: Beslenme ve Diyet</p>
                <p>İletişim: dietitian@example.com</p>
            </div>
            <div class="gradient-overlay"></div> -->

    
</asp:Content>
