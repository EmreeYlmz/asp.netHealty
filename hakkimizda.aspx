<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="hakkimizda.aspx.cs" Inherits="WebApplication1.hakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* Sayfa tasarımını düzenleme */
        body {
            margin: 0;
            padding: 0;
            font-family: 'Roboto', sans-serif; /* Yeni fontu ekledim */
            background-color: #f8f9fa; /* Arka plan rengi */
            color: #333; /* Metin rengi */
        }

        /* Container tasarımı */
        .container {
            width: 80%; /* Genişlik artırıldı */
            margin: 50px auto;
            overflow: hidden;
            display: flex;
            align-items: center; /* Yatayda ortalamak için */
        }

        /* Logo tasarımı */
        .about-logo {
            width: 30%; /* Logonun genişliği artırıldı */
            margin-right: 5%;
        }

        .about-logo img {
            width: 100%;
            border-radius: 10px;
        }

        /* Kart tasarımı */
        .about-card {
            width: 65%; /* Kartın genişliği artırıldı */
        }

        /* Başlık tasarımı */
        h2 {
            font-family: 'Nunito', sans-serif; /* Başlık fontu değiştirildi */
            color: #000000; /* Başlık rengi */
            font-weight: bold;
            font-size: 24px; /* Başlık puntolu hale getirildi */
            margin-bottom: 10px; /* Başlık altındaki boşluk */
        }

        p {
            margin-top: 0;
            margin-bottom: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container">
        <!-- Logo -->
        <div class="about-logo">
            <img src="resimler/koelogo.png" alt="Koe Technology" />
        </div>

   
        <div class="about-card">
           
            <div class="about-text">
                <h2>Hakkımızda</h2>
                <p>
                    Koe Technology, 2018 yılında kurulan bir teknoloji şirketidir. Veritabanı mezunu üç arkadaş olarak bir araya gelerek, web ve mobil uygulama geliştirmeye odaklandık.
                </p>
            </div>

           
            <div class="about-text">
                <h2>Misyonumuz</h2>
                <p>
                    Müşterilerimize yenilikçi ve özelleştirilmiş çözümler sunmayı hedefliyoruz. Deneyimli ekibimizle birlikte, teknoloji dünyasındaki gelişmeleri yakından takip ediyor ve projelerimizi en güncel teknolojilerle hayata geçiriyoruz.
                </p>
            </div>

            <!-- 3. İçerik -->
            <div class="about-text">
                <h2>Vizyonumuz</h2>
                <p>
                    Koe Technology olarak, müşteri memnuniyetini ön planda tutuyor ve her projemizde kalite standartlarımızı en üst seviyede tutuyoruz.
                </p>
            </div>

            <!-- 4. İçerik -->
            <div class="about-text">
                <h2>Değerlerimiz</h2>
                <p>
                    İhtiyaçlarınıza özel çözümler sunmak, projelerinizi hayata geçirmek ve teknoloji alanındaki deneyimimizi sizinle paylaşmak için buradayız.
                </p>
            </div>

            <!-- 5. İçerik -->
            <div class="about-text">
                <h2>Ekibimiz</h2>
                <p>
                    Koe Technology olarak, teknolojiyi seviyor ve geleceği şekillendirmek için projeler üretiyoruz. Sizinle birlikte çalışmayı bekliyoruz.
                </p>
            </div>
            <div class="about-text">
                <h2>İletişim</h2>
                <p>
                    koeteknoloji@gmail.com
                </p>
            </div>
        </div>
    </div>

</asp:Content>
