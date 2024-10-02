<%@ Page Title="Sağlıklı Yemek Tarifleri" Language="C#" MasterPageFile="~/danisanmaster.Master" AutoEventWireup="true" CodeBehind="yemekltarifleri.aspx.cs" Inherits="WebApplication1.yemekltarifleri" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="~/Content/recipes.css" rel="stylesheet" />
    <script src="~/Scripts/recipes.js"></script>
    <style>
        .tarif-kapsayici {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            justify-content: center;
            padding: 20px;
        }
        .tarif-kart {
            background: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            overflow: hidden;
            width: 300px;
            text-align: center;
            transition: transform 0.2s;
            padding: 20px;
        }
        .tarif-kart img {
            width: 100%;
            height: auto;
        }
        .tarif-kart h3 {
            margin: 10px 0;
            font-size: 1.5em;
            color: #333;
        }
        .tarif-kart p {
            color: #777;
            margin-bottom: 10px;
        }
        .tarif-detay h4 {
            margin: 10px 0 5px 0;
            font-size: 1.2em;
            color: #333;
        }
        .tarif-detay ul {
            list-style-type: disc;
            padding-left: 20px;
            text-align: left;
        }
        .tarif-detay p {
            text-align: left;
            color: #555;
        }
        .tarif-kart:hover {
            transform: scale(1.05);
        }
        /* Özel resim boyutlandırma */
        .resim-buyuk {
            width: 350px;
            height: 350px;
        }
    </style>
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            // Etkileşim eklemek için buraya kod yazabilirsiniz
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="tarif-kapsayici">
        <div class="tarif-kart">
            <asp:Image ID="Image2" runat="server" CssClass="resim-buyuk" ImageUrl="~/yemek/kinoa-salatasi-yemekcom.jpg" />
            <h3>Kinoa Salatası</h3>
            <p>Yayınlayan: Ahmet Yılmaz</p>
            <div class="tarif-detay">
                <h4>Malzemeler:</h4>
                <ul>
                    <li>1 su bardağı kinoa</li>
                    <li>2 su bardağı su</li>
                    <li>1 salatalık, doğranmış</li>
                    <li>1 kırmızı biber, doğranmış</li>
                    <li>1 avokado, dilimlenmiş</li>
                    <li>Yarım limonun suyu</li>
                    <li>2 yemek kaşığı zeytinyağı</li>
                    <li>Tuz ve karabiber</li>
                </ul>
                <h4>Hazırlanışı:</h4>
                <p>Kinoayı iyice yıkayın ve süzün. Bir tencereye kinoayı ve suyu ekleyin, kaynatın. Kaynadıktan sonra altını kısın ve 15 dakika kadar pişirin. Kinoayı soğumaya bırakın. Soğuduktan sonra bir kaseye alın, doğranmış salatalık, kırmızı biber ve avokadoyu ekleyin. Limon suyu, zeytinyağı, tuz ve karabiber ekleyerek karıştırın. Soğuk olarak servis yapın.</p>
            </div>
        </div>
        <div class="tarif-kart">
        <asp:Image ID="Image1" runat="server" CssClass="resim-buyuk" ImageUrl="~/yemek/1801_smoothie_Image1_750x552.jpg" />
            <h3>Yeşil Smoothie</h3>
            <p>Yayınlayan: Ayşe Demir</p>
            <div class="tarif-detay">
                <h4>Malzemeler:</h4>
                <ul>
                    <li>1 su bardağı ıspanak</li>
                    <li>1 muz</li>
                    <li>1 su bardağı badem sütü</li>
                    <li>1 yemek kaşığı chia tohumu</li>
                    <li>Yarım avokado</li>
                    <li>1 tatlı kaşığı bal</li>
                </ul>
                <h4>Hazırlanışı:</h4>
                <p>Tüm malzemeleri bir blender'a koyun ve pürüzsüz bir kıvam alana kadar karıştırın. Hemen servis yapın.</p>
            </div>
        </div>
        <div class="tarif-kart">
        <asp:Image ID="Image3" runat="server" CssClass="resim-buyuk" ImageUrl="~/yemek/sebze-sote-lezzetlendik.jpg" />
            <h3>Sebze Sote</h3>
            <p>Yayınlayan: Emre Kara</p>
            <div class="tarif-detay">
                <h4>Malzemeler:</h4>
                <ul>
                    <li>1 kabak, dilimlenmiş</li>
                    <li>1 havuç, dilimlenmiş</li>
                    <li>1 kırmızı biber, dilimlenmiş</li>
                    <li>1 sarı biber, dilimlenmiş</li>
                    <li>2 yemek kaşığı soya sosu</li>
                    <li>2 yemek kaşığı zeytinyağı</li>
                    <li>1 diş sarımsak, kıyılmış</li>
                    <li>Tuz ve karabiber</li>
                </ul>
                <h4>Hazırlanışı:</h4>
                <p>Bir tavada zeytinyağını ısıtın. Sarımsağı ekleyin ve kokusu çıkana kadar soteleyin. Ardından dilimlenmiş sebzeleri ekleyin ve yüksek ateşte soteleyin. Sebzeler yumuşamaya başlayınca soya sosunu ekleyin. Tuz ve karabiber ile tatlandırın. Sıcak servis yapın.</p>
            </div>
        </div>
        <div class="tarif-kart">
            <img src="~/Images/corba.jpg" alt="Mercimek Çorbası" class="resim-buyuk">
            <h3>Mercimek Çorbası</h3>
            <p>Yayınlayan: Fatma Şahin</p>
            <div class="tarif-detay">
                <h4>Malzemeler:</h4>
                <ul>
                    <li>1 su bardağı kırmızı mercimek</li>
                    <li>1 soğan, doğranmış</li>
                    <li>1 havuç, doğranmış</li>
                    <li>1 patates, doğranmış</li>
                    <li>1 yemek kaşığı salça</li>
                    <li>2 yemek kaşığı zeytinyağı</li>
                    <li>6 su bardağı su</li>
                    <li>Tuz, karabiber, kimyon</li>
                </ul>
                <h4>Hazırlanışı:</h4>
                <p>Bir tencerede zeytinyağını ısıtın ve soğanı kavurun. Ardından havuç ve patatesi ekleyin ve birkaç dakika soteleyin. Salçayı ekleyip karıştırın. Mercimekleri yıkayıp ekleyin ve suyu ilave edin. Tuz, karabiber ve kimyon ekleyerek karıştırın. Kaynadıktan sonra kısık ateşte mercimekler yumuşayana kadar pişirin. Blenderdan geçirerek pürüzsüz bir kıvam elde edin. Sıcak servis yapın.</p>
            </div>
        </div>
        <div class="tarif-kart">
            <img src="~/Images/avocadotoast.jpg" alt="Avokado Tost" class="resim-buyuk">
            <h3>Avokado Tost</h3>
            <p>Yayınlayan: Mehmet Öz</p>
            <div class="tarif-detay">
                <h4>Malzemeler:</h4>
                <ul>
                    <li>2 dilim tam buğday ekmeği</li>
                    <li>1 olgun avokado</li>
                    <li>Yarım limonun suyu</li>
                    <li>1 yemek kaşığı zeytinyağı</li>
                    <li>Tuz ve karabiber</li>
                    <li>Opsiyonel: cherry domates, haşlanmış yumurta</li>
                </ul>
                <h4>Hazırlanışı:</h4>
                <p>Ekmek dilimlerini kızartın. Avokadoyu ezip limon suyu, zeytinyağı, tuz ve karabiber ile karıştırın. Bu karışımı kızarmış ekmek dilimlerinin üzerine sürün. İsterseniz cherry domates ve haşlanmış yumurta ile süsleyin. Hemen servis yapın.</p>
            </div>
        </div>
    </div>
</asp:Content>
