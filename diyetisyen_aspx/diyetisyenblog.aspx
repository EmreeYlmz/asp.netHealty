<%@ Page Title="" Language="C#" MasterPageFile="~/diyetisyenmaster.Master" AutoEventWireup="true" CodeBehind="diyetisyenblog.aspx.cs" Inherits="WebApplication1.diyetisyenblog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* Card'a belirginlik vermek için gölgelendirme */
        .card {
            box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
            transition: 0.3s;
            border-radius: 5px; /* Kartın köşelerini yumuşatma */
        }

        /* Kartın sağ alt köşesine butonu yerleştirmek için konumlandırma */
        .card-footer {
            text-align: right;
        }

        /* Buton boyutunu biraz büyütme */
        .btn-yayinla {
            font-size: 16px;
            padding: 10px 20px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <div class="form-group">
                            <label for="txtBaslik">Başlık:</label>
                            <asp:TextBox ID="txtBaslik" runat="server" CssClass="form-control" placeholder="Başlık Giriniz"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="txtDiyetisyenAdi">Diyetisyen Adı:</label>
                            <asp:TextBox ID="txtDiyetisyenAdi" runat="server" CssClass="form-control" placeholder="Diyetisyen Adı Giriniz"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="txtDiyetisyenSoyadi">Diyetisyen Soyadı:</label>
                            <asp:TextBox ID="txtDiyetisyenSoyadi" runat="server" CssClass="form-control" placeholder="Diyetisyen Soyadı Giriniz"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="txtIcerik">İçerik:</label>
                            <asp:TextBox ID="txtIcerik" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="4" placeholder="İçerik Giriniz"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="txtYayinTarihi">Yayınlanma Tarihi:</label>
                            <asp:TextBox ID="txtYayinTarihi" runat="server" CssClass="form-control" TextMode="Date" placeholder="Yayınlanma Tarihi Giriniz"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="btnResimEkle">Resim Ekle:</label>
                            <asp:FileUpload ID="btnResimEkle" runat="server" CssClass="form-control" />
                        </div>
                    </div>
                    <div class="card-footer">
                        <asp:Button ID="btnYayinla" runat="server" Text="Yayınla" CssClass="btn btn-primary btn-yayinla" OnClick="btnYayinla_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
