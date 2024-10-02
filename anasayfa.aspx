<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="anasayfa.aspx.cs" Inherits="WebApplication1.anasayfa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        /* CardView tasarımı */


     

        .custom-card {
            display: flex;
            border: 1px solid #ddd;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

       /* Sol taraftaki resim bölümü */
.custom-oval-image {
    border-radius: 10%; /* Tamamen yuvarlak kenarlar */
    overflow: hidden;
    width: 50%; /* Cardview'in yarısı kadar genişlik */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Yumuşak gölge efekti */
}

.custom-oval-image img {
    width: 100%;
    border-radius: 10%; /* Tamamen yuvarlak kenarlar */
}

/* Sağ taraftaki resim bölümü */
.custom-oval-image-right {
    border-radius: 10%; /* Tamamen yuvarlak kenarlar */
    overflow: hidden;
    width: 50%; /* Cardview'in yarısı kadar genişlik */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Yumuşak gölge efekti */
}

.custom-oval-image-right img {
    width: 100%;
    border-radius: 10%; /* Tamamen yuvarlak kenarlar */
}


        /* Sağ taraftaki metin bölümü */
        .custom-text {
            width: 50%;
            padding: 20px;
        }

        /* Başlık fontu */
        h2 {
            font-family: 'Nunito', sans-serif;
            color: #1e7c1e;
            font-weight: bold;
        }

        /* Genel yazı fontu */
        p {
            font-family: 'Nunito', sans-serif;
            color: #555;
        }

        /* Sayfa tasarımını düzenleme */
        .container.my-4 {
            background-color: #f8f9fa;
            padding: 15px;
            border-radius: 10px;
            box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.1);
        }
    




    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container my-4">
        <div class="row">
            <!-- CardView -->
            <div class="col-md-12 custom-card mb-4">
                <!-- Sol taraftaki resim bölümü -->
                <div class="custom-oval-image">
                    <img src="resimler/diyetisyen.png" alt="Diyetisyen Resmi" class="img-fluid" />
                </div>
                <!-- Sağ taraftaki metin bölümü -->
                <div class="custom-text">
                    <h2 class="mb-3">Healthy Lifestyle Nedir ?</h2>
                    <p>
                        
                    </p>
                    <p>
                        Healthy Lifestyle bir sağlıklı yaşam uygulamasıdır. Uygulamada yer alan diyetler ve beslenme önerileri, alanında uzman diyetisyenler tarafından özel olarak hazırlanmaktadır. Kullanıcılar, uygulamayı kullanarak kişisel diyet planlarını oluşturabilirler ve diyetisyenlerle de iletişim kurabilirler. 
                    </p>
                </div>
            </div>
        </div>
    </div>
    <div class="container my-4">
    <div class="row">
        <!-- CardView -->
        <div class="col-md-12 custom-card mb-4">
            <!-- Sağ taraftaki metin bölümü -->
            <div class="custom-text">
                <h2 class="mb-3">Kullanımı</h2>
                <p>
                </p>
                <p>
                   Healthy Lifestyle, kullanımı kolay bir arayüze sahiptir ve kullanıcıların sağlıklı beslenme hedeflerine ulaşmalarına yardımcı olacak kaynakları sunar. Bu nedenle, her yaştan ve yaşam tarzından kişilerin faydalanabileceği bir uygulamadır.
                </p>
            </div>
            <!-- Sol taraftaki resim bölümü -->
            <div class="custom-oval-image">
                <img src="resimler/diyetisyen3.jpg" alt="Diyetisyen Resmi" class="img-fluid" />
            </div>
        </div>
    </div>
</div>
    
</asp:Content>
