<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Online_Store.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <!-- Custom stlylesheet -->
	<link type="text/css" rel="stylesheet" href="Style.css" />
    <style type="text/css">
        .panel_header {
            background-color:#fef0f0;
            height:100px;
            width:100%;
            margin-top:auto;
            margin-bottom:auto;
            margin-left:auto;
            margin-right:auto;
        }        
        .img_button {
            height:50px;
            float:right;
            margin-top:25px;
            margin-right: 15px;
        }
        .icon {
            float:left;
            width:330px;
            height:90px;
            margin-top:5px;
            margin-left:10px;
        }
        .search {
            margin-top:35px;
            margin-bottom: auto;
            margin-left: 10px;
            width:25%;
            height:30px;
            border: 2px solid #fef0f0;
            border-radius: 5px;
        }
        .search_btn {
            border: 2px solid #fef0f0;
            border-radius: 5px;
            background-color: #000000;
            height:36px;
        }
        .main_container {
            margin-left:25%;
            margin-right:25%;
            margin-top:auto;
            margin-bottom:auto;
            width:55%;
        }
        .div_category{
            margin-top:auto;
            margin-bottom:auto;            
        }
        .category_btn {
            margin-top:10px;
            height:100px; 
            width:100px;
            margin-left:10px;            
        }
        .footer {
            background-color:#fef0f0;
            width:100%;
            height:50px;        
        }
        .footer_lbl_btn {
            margin-left:4%;
            margin-top:10px;            
        }
        .panel_product {
            width:100%;
            height:500px;
            margin-top:20px;
            margin-bottom:20px;
            border: 2px solid #fef0f0;
            border-radius: 5px;
            border-width:thick;
        }
        .h3 {
            text-align:center;
            font-family:'AR BLANCA';
        }
        .panel_best_seller {
            width:100%;
            height:152px;
            border: 2px solid #fef0f0;
            border-radius: 5px;
            border-width:thick;
        }
        .card {
            float: left;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            width: 25%;
            height: 400px;
            margin: auto;
            text-align: center;
            font-family: arial;
        }
        .price {
            color: grey;
            font-size: 22px;
        }
        .card button {
            border: none;
            outline: 0;
            padding: 12px;
            color: white;
            background-color: #000;
            text-align: center;
            cursor: pointer;
            width: 100%;
            font-size: 18px;
        }
        .card button:hover {
            opacity: 0.7;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!-- Header -->
            <asp:Panel ID="panel_header" runat="server" CssClass="panel_header">
                <asp:ImageButton ID="img_icon" runat="server" src="img/icon.JPG" CssClass="icon" href="Home.aspx"/>
                <asp:TextBox ID="txt_search" runat="server" CssClass="search"></asp:TextBox>
                <asp:Button ID="btn_search" runat="server" Text="SEARCH" CssClass="search_btn" BackColor="#333333" Font-Bold="True" ForeColor="White"/>
                <asp:ImageButton ID="img_shop_cart" runat="server" src="https://purepng.com/public/uploads/large/purepng.com-shopping-cartshoppingcarttrolleycarriagebuggysupermarkets-1421526532320cblq3.png" CssClass="img_button" />
                <asp:ImageButton ID="img_profile" runat="server" src="https://cdn1.iconfinder.com/data/icons/freeline/32/account_friend_human_man_member_person_profile_user_users-512.png" CssClass="img_button" OnClick="img_profile_Click"/>                
            </asp:Panel>
        <div class="main_container">
            <!-- Category Panel -->
            <div class="div_category">
                 <asp:Panel ID="panel1" runat="server" CssClass="panel" Height="656px" Width="120px" BackColor="#fef0f0">
                     <asp:ImageButton ID="img_btn_book" runat="server" src="img/books.jpg" CssClass="category_btn" OnClick="img_btn_book_Click" />
                     <br />
                     <br />
                     <asp:ImageButton ID="img_btn_music" runat="server" src="img/music.jpg" CssClass="category_btn" OnClick="img_btn_music_Click" />
                     <br />
                     <br />
                     <asp:ImageButton ID="img_btn_magazine" runat="server" src="img/magazines.jpg" CssClass="category_btn" OnClick="img_btn_magazine_Click" />
                     <br />
                     <br />
                     <asp:ImageButton ID="img_btn_movie" runat="server" src="img/movies.jpg" CssClass="category_btn" OnClick="img_btn_movie_Click" />
                     <br />
                     <br />
                     <asp:ImageButton ID="img_btn_hobby" runat="server" src="img/puzzle.jpg" CssClass="category_btn" OnClick="img_btn_hobby_Click" />
                     <br />
                     <br />                                
                </asp:Panel>
            </div>

            
        <!-- Slide Show -->
        <div class="slideshow-container">

        <div class="mySlides fade">
                <img src="img/slideshow_1.jpg" style="width:100%"/>
        </div>

        <div class="mySlides fade">
                <img src="img/slideshow_2.jpg" style="width:100%"/>
        </div>

        <div class="mySlides fade">
                <img src="img/slideshow_3.jpg" style="width:100%"/>
        </div>

        <div class="mySlides fade">
                <img src="img/slideshow_4.jpg" style="width:100%"/>
        </div>

        <div class="mySlides fade">
                <img src="img/slideshow_5.jpg" style="width:100%"/>
        </div>

        <div class="mySlides fade">
                <img src="img/slideshow_6.jpg" style="width:100%"/>
        </div>

        <div class="mySlides fade">
                <img src="img/slideshow_7.jpg" style="width:100%"/>
        </div>

        <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
        <a class="next" onclick="plusSlides(1)">&#10095;</a>
        <br />

        <div style="text-align:center">
        <span class="dot" onclick="currentSlide(1)"></span> 
        <span class="dot" onclick="currentSlide(2)"></span> 
        <span class="dot" onclick="currentSlide(3)"></span> 
        <span class="dot" onclick="currentSlide(4)"></span> 
        <span class="dot" onclick="currentSlide(5)"></span> 
        <span class="dot" onclick="currentSlide(6)"></span> 
        <span class="dot" onclick="currentSlide(7)"></span> 
        </div>

        <script>
            var slideIndex = 1;
            showSlides(slideIndex);
    
            function plusSlides(n) {
                showSlides(slideIndex += n);
            }

            function currentSlide(n) {
                showSlides(slideIndex = n);
            }

            function showSlides(n) {
                var i;
                var slides = document.getElementsByClassName("mySlides");
                var dots = document.getElementsByClassName("dot");
                if (n > slides.length) {slideIndex = 1}    
                if (n < 1) {slideIndex = slides.length}
                for (i = 0; i < slides.length; i++) {
                    slides[i].style.display = "none";  
                }
                for (i = 0; i < dots.length; i++) {
                    dots[i].className = dots[i].className.replace(" active", "");
                }
                slides[slideIndex-1].style.display = "block";  
                dots[slideIndex-1].className += " active";
            }
        </script>

        </div>

            <!-- Best Seller Panel -->
            <asp:Panel ID="Panel2" runat="server" CssClass="panel_best_seller">
                <asp:ImageButton ID="btn_img_best_seller" runat="server" Height="150px" ImageUrl="~/img/cok-satanlar.gif" Width="300px" />
            </asp:Panel>
            <br />
            <br />

            <!-- Products' Panels -->
            <h3 class="h3">B o o k</h3>
            <div class="panel_product">
                <div class="card">
                    <img src="https://www.w3schools.com/w3images/jeans3.jpg" alt="Denim Jeans" style="width:100%"/>
                    <h1>Tailored Jeans</h1>
                    <p class="price">$19.99</p>
                    <p><button>Add to Cart</button></p>
                </div>
                <div class="card">
                    <img src="https://www.w3schools.com/w3images/jeans3.jpg" alt="Denim Jeans" style="width:100%"/>
                    <h1>Tailored Jeans</h1>
                    <p class="price">$19.99</p>
                    <p><button>Add to Cart</button></p>
                </div>
                <div class="card">
                    <img src="https://www.w3schools.com/w3images/jeans3.jpg" alt="Denim Jeans" style="width:100%"/>
                    <h1>Tailored Jeans</h1>
                    <p class="price">$19.99</p>
                    <p><button>Add to Cart</button></p>
                </div>
                <div class="card">
                    <img src="https://www.w3schools.com/w3images/jeans3.jpg" alt="Denim Jeans" style="width:100%"/>
                    <h1>Tailored Jeans</h1>
                    <p class="price">$19.99</p>
                    <p><button>Add to Cart</button></p>
                </div>
            </div>
            <h3 class="h3">M u s i c</h3>
            <div class="panel_product">
                <div class="card">
                    <img src="https://www.w3schools.com/w3images/jeans3.jpg" alt="Denim Jeans" style="width:100%"/>
                    <h1>Tailored Jeans</h1>
                    <p class="price">$19.99</p>
                    <p><button>Add to Cart</button></p>
                </div>
                <div class="card">
                    <img src="https://www.w3schools.com/w3images/jeans3.jpg" alt="Denim Jeans" style="width:100%"/>
                    <h1>Tailored Jeans</h1>
                    <p class="price">$19.99</p>
                    <p><button>Add to Cart</button></p>
                </div>
                <div class="card">
                    <img src="https://www.w3schools.com/w3images/jeans3.jpg" alt="Denim Jeans" style="width:100%"/>
                    <h1>Tailored Jeans</h1>
                    <p class="price">$19.99</p>
                    <p><button>Add to Cart</button></p>
                </div>
                <div class="card">
                    <img src="https://www.w3schools.com/w3images/jeans3.jpg" alt="Denim Jeans" style="width:100%"/>
                    <h1>Tailored Jeans</h1>
                    <p class="price">$19.99</p>
                    <p><button>Add to Cart</button></p>
                </div>
            </div>
            <h3 class="h3">M a g a z i n e</h3>
            <div class="panel_product">
                <div class="card">
                    <img src="https://www.w3schools.com/w3images/jeans3.jpg" alt="Denim Jeans" style="width:100%"/>
                    <h1>Tailored Jeans</h1>
                    <p class="price">$19.99</p>
                    <p><button>Add to Cart</button></p>
                </div>
                <div class="card">
                    <img src="https://www.w3schools.com/w3images/jeans3.jpg" alt="Denim Jeans" style="width:100%"/>
                    <h1>Tailored Jeans</h1>
                    <p class="price">$19.99</p>
                    <p><button>Add to Cart</button></p>
                </div>
                <div class="card">
                    <img src="https://www.w3schools.com/w3images/jeans3.jpg" alt="Denim Jeans" style="width:100%"/>
                    <h1>Tailored Jeans</h1>
                    <p class="price">$19.99</p>
                    <p><button>Add to Cart</button></p>
                </div>
                <div class="card">
                    <img src="https://www.w3schools.com/w3images/jeans3.jpg" alt="Denim Jeans" style="width:100%"/>
                    <h1>Tailored Jeans</h1>
                    <p class="price">$19.99</p>
                    <p><button>Add to Cart</button></p>
                </div>
            </div>
            <h3 class="h3">M o v i e</h3>
            <div class="panel_product">
                <div class="card">
                    <img src="https://www.w3schools.com/w3images/jeans3.jpg" alt="Denim Jeans" style="width:100%"/>
                    <h1>Tailored Jeans</h1>
                    <p class="price">$19.99</p>
                    <p><button>Add to Cart</button></p>
                </div>
                <div class="card">
                    <img src="https://www.w3schools.com/w3images/jeans3.jpg" alt="Denim Jeans" style="width:100%"/>
                    <h1>Tailored Jeans</h1>
                    <p class="price">$19.99</p>
                    <p><button>Add to Cart</button></p>
                </div>
                <div class="card">
                    <img src="https://www.w3schools.com/w3images/jeans3.jpg" alt="Denim Jeans" style="width:100%"/>
                    <h1>Tailored Jeans</h1>
                    <p class="price">$19.99</p>
                    <p><button>Add to Cart</button></p>
                </div>
                <div class="card">
                    <img src="https://www.w3schools.com/w3images/jeans3.jpg" alt="Denim Jeans" style="width:100%"/>
                    <h1>Tailored Jeans</h1>
                    <p class="price">$19.99</p>
                    <p><button>Add to Cart</button></p>
                </div>
            </div>
            <h3 class="h3">H o b b y</h3>
            <div class="panel_product">
                <div class="card">
                    <img src="https://www.w3schools.com/w3images/jeans3.jpg" alt="Denim Jeans" style="width:100%"/>
                    <h1>Tailored Jeans</h1>
                    <p class="price">$19.99</p>
                    <p><button>Add to Cart</button></p>
                </div>
                <div class="card">
                    <img src="https://www.w3schools.com/w3images/jeans3.jpg" alt="Denim Jeans" style="width:100%"/>
                    <h1>Tailored Jeans</h1>
                    <p class="price">$19.99</p>
                    <p><button>Add to Cart</button></p>
                </div>
                <div class="card">
                    <img src="https://www.w3schools.com/w3images/jeans3.jpg" alt="Denim Jeans" style="width:100%"/>
                    <h1>Tailored Jeans</h1>
                    <p class="price">$19.99</p>
                    <p><button>Add to Cart</button></p>
                </div>
                <div class="card">
                    <img src="https://www.w3schools.com/w3images/jeans3.jpg" alt="Denim Jeans" style="width:100%"/>
                    <h1>Tailored Jeans</h1>
                    <p class="price">$19.99</p>
                    <p><button>Add to Cart</button></p>
                </div>
            </div>   
     
        </div>
    </div>
        
    <!-- Footer -->
    <footer class="footer">
        <asp:Label ID="lbl_footer_1" runat="server" Text="    © 2009 - 2019 PISA Online Store" Font-Size="Small" ForeColor="Black" CssClass="footer_lbl_btn"></asp:Label>
        <asp:Label ID="lbl_footer_2" runat="server" Text="Company" Font-Size="Small" ForeColor="Black" CssClass="footer_lbl_btn"></asp:Label>
        <asp:Label ID="lbl_footer_3" runat="server" Text=" Work at PISA" Font-Size="Small" ForeColor="Black" CssClass="footer_lbl_btn"></asp:Label>
        <asp:Label ID="lbl_footer_4" runat="server" Text="Pricing" Font-Size="Small" ForeColor="Black" CssClass="footer_lbl_btn"></asp:Label>
        <asp:Label ID="lbl_footer_5" runat="server" Text="Privacy Policy" Font-Size="Small" ForeColor="Black" CssClass="footer_lbl_btn"></asp:Label>
        <asp:Label ID="lbl_footer_6" runat="server" Text="Cookie Policy" Font-Size="Small" ForeColor="Black" CssClass="footer_lbl_btn"></asp:Label>
        <asp:Label ID="lbl_footer_7" runat="server" Text="Support" Font-Size="Small" ForeColor="Black" CssClass="footer_lbl_btn"></asp:Label>
        <asp:Label ID="lbl_footer_8" runat="server" Text="Sitemap" Font-Size="Small" ForeColor="Black" CssClass="footer_lbl_btn"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="btn_footer_1" runat="server" Height="23px" ImageUrl="~/img/facebook.png" Width="23px" CssClass="footer_lbl_btn" />
        <asp:ImageButton ID="btn_footer_2" runat="server" ImageUrl="~/img/youtube.png" Height="23px" Width="23px" CssClass="footer_lbl_btn" />
        <asp:ImageButton ID="btn_footer_3" runat="server" ImageUrl="~/img/twitter.png" Height="23px" Width="23px" CssClass="footer_lbl_btn"/>
        <asp:ImageButton ID="btn_footer_4" runat="server" ImageUrl="~/img/instagram.png" Height="23px" Width="23px" CssClass="footer_lbl_btn"/>
        <asp:ImageButton ID="btn_footer_5" runat="server" ImageUrl="~/img/pinterest.png" Height="23px" Width="23px" CssClass="footer_lbl_btn"/>
    </footer>
    </form>
</body>
</html>
