<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="diyetisyenkayit.aspx.cs" Inherits="WebApplication1.diyetisyenkayit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
    body {
        background-color: #f8f9fa;
        color: black;
    }

    .fade-in {
        animation: fadeIn 1s;
        color: red;
    }

    .fade-in-success {
        animation: fadeIn 1s;
        color: green;
    }

    .fade-in-error {
        animation: fadeIn 1s;
        color: red;
    }

    @keyframes fadeIn {
        from {
            opacity: 0;
        }
        to {
            opacity: 1;
        }
    }

    .container {
        display: flex;
        justify-content: center;
        align-items: center;
        width: 60%;
        margin: auto;
        margin-top: 50px;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        background-color: white;
    }

    .form-section {
        flex: 1;
    }

    .form-group {
        margin-bottom: 15px;
    }

    .oval-input {
        border-radius: 40px;
        padding: 10px;
        width: 250px;
        border: 2px solid #28a745;
        /* Yeşil kenarlık rengi */
    }

    .oval-button {
        border-radius: 40px;
        padding: 10px 20px;
        transition: all 0.3s ease;
        background-color: #00bcd4;
        /* Turkuaz renk */
        color: #fff;
        border: 2px solid #00bcd4;
        /* Turkuaz kenarlık rengi */
    }

    .oval-button:hover {
        background-color: #00796b;
        /* Hover durumunda daha koyu turkuaz */
        border: 2px solid #00796b;
        /* Hover durumunda daha koyu turkuaz kenarlık rengi */
    }

    .register-button {
        margin-top: 15px;
    }

        .logo {
            max-width: 200px;
            height: auto;
            position: absolute;
            margin-left: 200px; /* Logo sol kenara yapıştırıldı */
            top: 300px; /* İstenilen yükseklikte ayarlayabilirsiniz */
            opacity: 0.9;
        }
</style>


    <script type="text/javascript">
        function redirectTo(url) {
            window.location.href = url;
        }
        $(document).ready(function () {
            $(".fade-in").fadeIn(1000); // 1000 milisaniyede bir fade-in efekti
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">

        <div style="flex: 1;">
            <h2>Diyetisyen Kayıt</h2>
            <!-- ... Dietitian registration form ... -->
            <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="Kullanıcı Adı:"></asp:Label>
                <asp:TextBox ID="txtdiyetisyenkullanicicad" runat="server" CssClass="form-control oval-input"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="lblDiyetisyenAd" runat="server" Text="Ad:"></asp:Label>
                <asp:TextBox ID="txtDiyetisyenAd" runat="server" CssClass="form-control oval-input"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="lblDiyetisyenSoyad" runat="server" Text="Soyad:"></asp:Label>
                <asp:TextBox ID="txtDiyetisyenSoyad" runat="server" CssClass="form-control oval-input"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="lblDiyetisyenEmail" runat="server" Text="E-posta:"></asp:Label>
                <asp:TextBox ID="txtDiyetisyenEmail" runat="server" TextMode="Email" CssClass="form-control oval-input"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="lblDiyetisyenPassword" runat="server" Text="Parola:"></asp:Label>
                <asp:TextBox ID="txtDiyetisyenPassword" runat="server" TextMode="Password" CssClass="form-control oval-input"></asp:TextBox>
            </div>
            <div class="form-group">
              <asp:Label ID="lblDiyetisyenPasswordRepeat" runat="server" Text="Parolayı Tekrar Girin:"></asp:Label> 
              <asp:TextBox ID="txtDiyetisyenPasswordRepeat" runat="server" TextMode="Password" CssClass="form-control oval-input"></asp:TextBox> 
                <asp:Label ID="Label1" runat="server" ForeColor="Red" Font-Bold="True"></asp:Label>

            </div>
            <div>
                <!-- Dietitian Register Button (Click event can be added if needed) -->
                <asp:Button ID="Button1" runat="server" Text="KAYIT OL" CssClass="btn btn-success oval-button" OnClick="Button1_Click" />

            </div>
        </div>
                <asp:Image ID="Image1" runat="server" CssClass="logo" ImageUrl="~/resimler/yesillogo.png" />

    </div>

       
</asp:Content>
