<%@ Page Title="" Language="C#" MasterPageFile="~/diyetisyenmaster.Master" AutoEventWireup="true" CodeBehind="DiyetisyenAnasayfa.aspx.cs" Inherits="WebApplication1.DiyetisyenAnasayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .card {
            background-color: white;
            padding: 10px;
            border-radius: 5px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            max-width: 600px;
            margin: 10px auto;
        }

        .input-group {
            margin-bottom: 10px;
        }

        .input-group label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
        }

        .input-group input[type=text], .input-group textarea {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 3px;
            box-sizing: border-box;
        }

        .btn-kaydet {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            width: 100%;
            margin-top: 10px;
        }

        .btn-kaydet:hover {
            background-color: #45a049;
        }

        .container {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
        }

        .info-card {
            background-color: white;
            padding: 10px;
            border-radius: 5px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            max-width: 300px;
            margin: 10px auto;
        }

        .gridview-container {
            max-width: 1000px;
            margin: 20px auto;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label><br />
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    <div class="container">
        <div class="card">
            <h2>Danışanın Bilgilerini Girin</h2>
            <div class="input-group">
                <label for="txtAdSoyad">Adı Soyadı:</label>
                <asp:TextBox ID="txtAdSoyad" runat="server" CssClass="form-control" placeholder="Adı Soyadı"></asp:TextBox>
            </div>
            <div class="input-group">
                <label for="txtKullaniciAdi">Kullanıcı Adı:</label>
                <asp:TextBox ID="txtKullaniciAdi" runat="server" CssClass="form-control" placeholder="Kullanıcı Adı"></asp:TextBox>
            </div>
            <div class="input-group">
                <label for="txtEmail">E-posta:</label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="E-posta"></asp:TextBox>
            </div>
            <h2>Öğün Bilgilerini Girin</h2>
            <div class="input-group">
                <label for="txtSabah">Sabah:</label>
                <asp:TextBox ID="txtSabah" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="4" placeholder="Sabah Öğünü Bilgisi"></asp:TextBox>
            </div>
            <div class="input-group">
                <label for="txtOglen">Öğlen:</label>
                <asp:TextBox ID="txtOglen" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="4" placeholder="Öğlen Öğünü Bilgisi"></asp:TextBox>
            </div>
            <div class="input-group">
                <label for="txtAksam">Akşam:</label>
                <asp:TextBox ID="txtAksam" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="4" placeholder="Akşam Öğünü Bilgisi"></asp:TextBox>
            </div>
            <asp:Button ID="btnKaydet" runat="server" Text="Kaydet" CssClass="btn-kaydet" OnClick="btnKaydet_Click" />
        </div>
        
        <div class="info-card">
            <h2>Danışanın Bilgileri</h2>
          
            <div class="input-group">
                <label>Kullanıcı Adı:</label>
                <asp:Label ID="lblKullaniciAdi" runat="server" CssClass="form-control"></asp:Label>
            </div>
           
        </div>
    </div>

  
</asp:Content>
