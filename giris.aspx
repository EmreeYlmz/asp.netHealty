<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="giris.aspx.cs" Inherits="WebApplication1.giris" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <style type="text/css">
        body {
            background-color: #f8f9fa;
            color: black;
        }

        .container {
            display: flex;
            justify-content: space-between;
            width: 80%;
            margin: auto;
            margin-top: 50px;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .form-group {
            margin-bottom: 15px;
        }

        .oval-input {
            border-radius: 40px;
            padding: 10px;
            border: 2px solid #28a745;
        }

        .oval-button {
            border-radius: 40px;
            padding: 10px 20px;
            transition: all 0.3s ease;
        }

        .oval-button:hover {
            background-color: #28a745;
            color: #fff;
            border: 2px solid #28a745;
        }

        .register-button {
            margin-top: 15px;
        }

        .logo {
            max-width: 65%;
            height: 65%;
            margin: 0 auto;
        }


        .logof {
            width: 180px; /* Resim genişliği */
            height: auto;
            opacity: 1;
            float: right; /* Resmi sağa yasla */
        }
        .footer {
            position: fixed;
            bottom: 0;
            right: 0;
            width: 250px; /* Footer genişliği */
            padding: 10px;
        }



    </style>

    <script type="text/javascript">
        function redirectTo(url) {
            window.location.href = url;
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <!-- Diyetisyen Girişi -->
        <div style="flex: 1;">
            <h2>Diyetisyen Girişi</h2>
            <asp:Label ID="lblMessageDiyetisyen" runat="server" Text="" ForeColor="Red"></asp:Label>
            <div class="form-group">
                <asp:Label ID="lblUsernameDiyetisyen" runat="server" Text="Kullanıcı Adı:"></asp:Label>
                <asp:TextBox ID="txtUsernameDiyetisyen" runat="server" CssClass="form-control oval-input"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="lblPasswordDiyetisyen" runat="server" Text="Şifre:"></asp:Label>
                <asp:TextBox ID="txtPasswordDiyetisyen" runat="server" TextMode="Password" CssClass="form-control oval-input"></asp:TextBox>
            </div>
            <div>


                <asp:Button ID="Button2" runat="server"  CssClass="btn btn-success oval-button" Text="G İ R İ Ş" OnClick="Button2_Click" />


            </div>
            <div>
                <asp:Label ID="Label2" runat="server" Font-Bold="true" ForeColor="Red" Text=""></asp:Label>
            </div>
            <div class="register-button">
                <asp:Button ID="Button1" runat="server" CssClass="btn btn-info" Text="Hesabınız yok mu ?" OnClick="Button1_Click" />
            </div>
        </div>

        <!-- Logo -->
        <div style="flex: 1; text-align: center;">
            <img src="image/yesillogo.png" alt="Diyetisyen Resmi" class="img-fluid logo" />
        </div>

        <!-- Danışan Girişi -->
        <div style="flex: 1;">
            <h2>Danışan Girişi</h2>
            <asp:Label ID="lblMessageDanisan" runat="server" Text="" ForeColor="Red"></asp:Label>
            <div class="form-group">
                <asp:Label ID="lblUsernameDanisan" runat="server" Text="Kullanıcı Adı:"></asp:Label>
                <asp:TextBox ID="txtUsernameDanisan" runat="server" CssClass="form-control oval-input"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="lblPasswordDanisan" runat="server" Text="Şifre:"></asp:Label>
                <asp:TextBox ID="txtPasswordDanisan" runat="server"  TextMode="Password" CssClass="form-control oval-input"></asp:TextBox>
            </div>
            <div>
                <asp:Button ID="Button3" runat="server"  CssClass="btn btn-success oval-button" Text="G İ R İ Ş" OnClick="Button3_Click" />
            </div>
            <div>
                <asp:Label ID="Label1" runat="server" Font-Bold="true" ForeColor="Red" Text=""></asp:Label>
            </div>
            <div class="register-button">
                <asp:Button ID="Button4" runat="server" CssClass="btn btn-info" Text="Hesabınız yok mu ?" OnClick="Button4_Click" />
            </div>


            <div class="col-md-6">
                <div class="footer">
                    <img src="../resimler/footer.png" alt="Footer Image" class="logof">
                    <!-- Footer için istediğiniz içeriği buraya ekleyebilirsiniz -->
                </div>
            </div>


        </div>
    </div>

</asp:Content>
