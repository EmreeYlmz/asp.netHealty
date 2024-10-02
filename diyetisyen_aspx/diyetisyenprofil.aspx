<%@ Page Title="" Language="C#" MasterPageFile="~/diyetisyenmaster.Master" AutoEventWireup="true" CodeBehind="diyetisyenprofil.aspx.cs" Inherits="WebApplication1.diyetisyenprofil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* Card Stili */
        .card {
            margin-top: 20px;
            transition: all 0.3s ease;
            border-radius: 10px;
            border: 1px solid #dee2e6;
            box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }
        .card:hover {
            transform: scale(1.05);
            box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.3);
        }
        .card-body {
            padding: 20px;
        }
        .form-group {
            margin-bottom: 20px;
        }
        /* Logo ve Footer Stili */
        .logo {
            width: 150px; /* Resim genişliği */
            height: auto;
            opacity: 1;
            float: right; /* Resmi sağa yasla */
        }
        .footer {
            position: fixed;
            bottom: 0;
            right: 0;
            width: 200px; /* Footer genişliği */
            padding: 10px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <!-- Sol Taraftaki Card -->
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Profil Bilgileri</h5>
                        <hr />
                        <div class="form-group">
                            <label for="txtName">İsim:</label>
                            <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="İsim"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="txtSurname">Soyisim:</label>
                            <asp:TextBox ID="txtSurname" runat="server" CssClass="form-control" placeholder="Soyisim"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="txtAge">Yaş:</label>
                            <asp:TextBox ID="txtAge" runat="server" CssClass="form-control" placeholder="Yaş"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="txtEmail">E-posta:</label>
                            <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" CssClass="form-control" placeholder="E-posta"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="txtEducation">Eğitim Durumu:</label>
                            <asp:TextBox ID="txtEducation" runat="server" CssClass="form-control" placeholder="Eğitim Durumu"></asp:TextBox>
                        </div>
                        <asp:Button ID="btnUpdate" runat="server" Text="Güncelle" CssClass="btn btn-primary btn-update" OnClick="btnUpdate_Click" />
                    </div>
                </div>
            </div>
            <!-- Sağ Taraftaki Logo ve Footer -->
            <div class="col-md-6">
                <div class="footer">
                    <img src="../resimler/footer.png" alt="Footer Image" class="logo">
                    <!-- Footer için istediğiniz içeriği buraya ekleyebilirsiniz -->
                </div>
            </div>
        </div>
    </div>
</asp:Content>
