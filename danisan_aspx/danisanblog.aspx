<%@ Page Title="" Language="C#" MasterPageFile="~/danisanmaster.Master" AutoEventWireup="true" CodeBehind="danisanblog.aspx.cs" Inherits="WebApplication1.danisanblog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Gerekli CSS ve JavaScript dosyalarını ekleyin -->
    <!-- Bootstrap ve özel stil dosyaları gibi -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8sh+WyowtB1MZc/FfYJpPSiqr6Hd78Q" crossorigin="anonymous">
    <link rel="stylesheet" href="Styles/BlogStyles.css" />
    <style>
        /* Özel stiller */

        #blog-container {
            display: flex;
            justify-content: space-between;
        }

        #client-list {
            width: 25%;
            padding-right: 15px;
            border-right: 1px solid #ddd;
            transition: width 0.3s ease;
        }

        #blog-cards {
            width: 70%;
            padding-left: 15px;
            transition: width 0.3s ease;
        }

        .card {
            border-radius: 15px;
            width: 100%;
            transition: width 0.3s ease;
            margin-bottom: 15px;
            /* border: 2px solid #006400;  Dark green border color */
        }

        .dietician-info {
            display: flex;
            align-items: center;
        }

        .user-profile-pic {
            width: 40px;
            height: 40px;
            object-fit: cover;
            border-radius: 50%;
            margin-right: 10px;
        }

        .blog-content {
            display: flex;
            justify-content: space-between;
            align-items: flex-start;
        }

        .blog-image {
            max-width: 50%;
            height: auto; /* Keep the aspect ratio */
            object-fit: cover;
            border-radius: 0; /* Remove border radius for sharp edges */
            border: none; /* Remove border */
            transition: opacity 0.6s ease; /* Add transition for smooth appearance */
        }

        .blog-content .card-text {
            max-width: 45%; /* Set the maximum width for the text */
        }

        .input-group-append:hover .search-btn {
            background-color: #008000; /* Change the background color on hover */
            color: #fff; /* Change the text color on hover */
        }

        .search-btn {
            transition: background-color 0.3s ease, color 0.3s ease; /* Add transition for color change */
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-3">
        <div id="blogContainer">
            <div id="blog-cards">
                <!-- Blog cards here -->
                <asp:Literal ID="blogContainerLiteral" runat="server"></asp:Literal>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8sh+WyowtB1MZc/FfYJpPSiqr6Hd78Q" crossorigin="anonymous"></script>
</asp:Content>
