<%@ Page Title="" Language="C#" MasterPageFile="~/danisanmaster.Master" AutoEventWireup="true" CodeBehind="DanisanAnasayfa.aspx.cs" Inherits="WebApplication1.DanisanAnasayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* Özel stiller */

        .diet-list {
            margin: 20px auto;
            max-width: 600px;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        .diet-header {
            text-align: center;
            margin-bottom: 20px;
        }

        .meal {
            margin-bottom: 20px;
        }

        .meal h3 {
            margin-bottom: 10px;
        }

        .meal ul {
            list-style-type: none;
            padding-left: 0;
        }

        .meal ul li {
            margin-bottom: 5px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="kullanıcı adı"></asp:Label>
    <div class="container">
        <div class="diet-list">
            <div class="diet-header">
                <h2>Diyet Listesi</h2>
                <p>Diyetisyen: <asp:Label ID="lblDiyetisyen" runat="server" Text="Diyetisyen Adı Soyadı"></asp:Label></p>
                <p>Başlama Tarihi: <asp:Label ID="lblBaslamaTarihi" runat="server" Text="Başlama Tarihi"></asp:Label></p>
            </div>
            <div class="meal">
                <h3>Sabah</h3>
                <ul>
                    <asp:Label ID="sabahlistetext" runat="server" Text="Sabah diyet listesi"></asp:Label>
                    <!-- Örnek olarak liste elemanları eklenebilir -->
                </ul>
            </div>
         
            <div class="meal">
                <h3>Öğlen</h3>
                <ul>
             <asp:Label ID="oglenlistetext" runat="server" Text="Öğlen diyet listesi"></asp:Label>

                    <!-- Örnek olarak liste elemanları eklenebilir -->
                </ul>
            </div>
            
            <div class="meal">
                <h3>Akşam</h3>
                <ul>
                <asp:Label ID="aksamlistetext" runat="server" Text="Akşam diyet listesi"></asp:Label>
                    <!-- Örnek olarak liste elemanları eklenebilir -->
                </ul>
            </div>
            
        </div>
    </div>
</asp:Content>
