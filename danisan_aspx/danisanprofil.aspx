<%@ Page Title="" Language="C#" MasterPageFile="~/danisanmaster.Master" AutoEventWireup="true" CodeBehind="danisanprofil.aspx.cs" Inherits="WebApplication1.danisanprofil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8sh+WyowtB1MZc/FfYJpPSiqr6Hd78Q" crossorigin="anonymous">
    <link rel="stylesheet" href="Styles/Styles.css" />
    <style>
        /* Yeni eklenen özel stiller */
        .custom-card {
            background-color: #f8f9fa; /* Kartın arka plan rengi (mavi) */
            color: black; /* Yazı rengi */
            width: 55%; /* Kartın genişliği */
            margin-bottom: 20px; /* Kartlar arasındaki boşluk */
            padding: 20px; /* Kartın içerisindeki içerik ile kenar arasındaki boşluk */
            border-radius: 10px; /* Kartın kenar yuvarlatma */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Kartın gölgelendirme efekti */
        }

        .form-group {
            margin-bottom: 15px; /* Form grupları arasındaki boşluk */
        }

        .oval-input {
            border-radius: 40px; /* Oval input kenar yuvarlatma */
            padding: 10px; /* Oval input içerisindeki içerik ile kenar arasındaki boşluk */
            border: 2px solid #28a745; /* Oval input kenar rengi */
        }

        .oval-button {
            border-radius: 40px; /* Oval button kenar yuvarlatma */
            padding: 10px 20px; /* Oval button içerisindeki içerik ile kenar arasındaki boşluk */
            transition: all 0.3s ease; /* Button hover efekti süresi */
            background-color: #28a745; 
            border-color: #28a745;
            /* Button arka plan rengi */
        }

        .oval-button:hover {
            background-color: #17a2b8; /* Hover durumunda button arka plan rengi */
            color: #fff; /* Hover durumunda button yazı rengi */
            border: 2px solid #17a2b8; /* Hover durumunda button kenar rengi */
        }

        .register-button {
            margin-top: 15px; /* Kayıt ol butonu ile arasındaki boşluk */
        }

        
        /* DropDownList içindeki metni görünür yapmak için */
        .form-control.dropdownlist {
            height: auto;
        }

        .form-control.dropdownlist option {
            color: black;
        }


        .logo {
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-3">
        <div class="row">
            <div class="col-md-6">
                <div class="card custom-card">
                    <div class="card-body">
                        <asp:Label ID="Label1" runat="server" Text="Kişisel Bilgiler" Font-Names="Tahoma" Font-Size="20" ForeColor="Black"></asp:Label><br />
                        <br /> <div class="form-group">
                            <asp:Label ID="lblFirstName" runat="server" Text="Adı"></asp:Label>
                            <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control oval-input"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lblLastName" runat="server" Text="Soyadı"></asp:Label>
                            <asp:TextBox ID="soyaditext" runat="server" CssClass="form-control oval-input"></asp:TextBox>

                        </div>
                        <div class="form-group">
                            <asp:Label ID="lblEmail" runat="server" Text="Mail"></asp:Label>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control oval-input" TextMode="Email"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lblPassword" runat="server" Text="Şifre"></asp:Label>
                            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control oval-input" ></asp:TextBox>
                        </div>
                        <asp:Button ID="btnSavePersonal" runat="server" Text="Değişiklikleri Kaydet" CssClass="btn btn-secondary oval-button register-button" OnClick="btnSavePersonal_Click" />
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="card custom-card">
                    <div class="card-body">
                        <asp:Label ID="Label2" runat="server" Text="Fiziksel Bilgiler" Font-Names="Tahoma" Font-Size="20" ForeColor="Black"></asp:Label><br />
                        <br />
                        <div class="form-group">
                            <asp:Label ID="lblGender" runat="server" Text="Cinsiyet"></asp:Label>
                            <asp:DropDownList ID="ddlGender" runat="server" CssClass="form-control oval-input dropdownlist">
                                <asp:ListItem Text="Erkek" Value="Erkek"></asp:ListItem>
                                <asp:ListItem Text="Kadın" Value="Kadın"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lblHeight" runat="server" Text="Boy"></asp:Label>
                            <asp:TextBox ID="txtHeight" runat="server" CssClass="form-control oval-input"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lblWeight" runat="server" Text="Kilo"></asp:Label>
                            <asp:TextBox ID="txtWeight" runat="server" CssClass="form-control oval-input"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lblAge" runat="server" Text="Yaş"></asp:Label>
                            <asp:TextBox ID="txtAge" runat="server" CssClass="form-control oval-input"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lblDietStartDate" runat="server" Text="Diyet Başlama Tarihi"></asp:Label>
                            <asp:TextBox ID="txtDietStartDate" runat="server" CssClass="form-control oval-input" TextMode="Date"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lblDietEndDate" runat="server" Text="Diyet Bitiş Tarihi"></asp:Label>
                            <asp:TextBox ID="txtDietEndDate" runat="server" CssClass="form-control oval-input" TextMode="Date"></asp:TextBox>
                        </div>
                        <asp:Button ID="btnSavePhysical" runat="server" Text="Değişiklikleri Kaydet" CssClass="btn btn-secondary oval-button register-button" OnClick="btnSavePhysical_Click" />
                    </div>
                </div>
            </div>

            <div class="col-md-6">
                <div class="footer">
                    <img src="../resimler/footer.png" alt="Footer Image" class="logo">
                    <!-- Footer için istediğiniz içeriği buraya ekleyebilirsiniz -->
                </div>
            </div>

        </div>
    </div>
    <asp:Button ID="Button1" runat="server" Text="çıkış" OnClick="Button1_Click" />
    <script src="Scripts/Scripts.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-pzjw8s+9MTLXndX3S1j8+6fB3AXdsEYO6UttEqEmfPWKxI2T2UAuFjpzZ92FnyZa" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8sh+WyowtB1MZc/FfYJpPSiqr6Hd78Q" crossorigin="anonymous"></script>
</asp:Content>
