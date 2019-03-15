<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book.aspx.cs" Inherits="Online_Store.Book" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Book</title>
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
        .footer {
            background-color:#fef0f0;
            width:100%;
            height:50px;        
        }
        .footer_lbl_btn {
            margin-left:4%;
            margin-top:10px;            
        }  
        .main_container {
            margin: auto 25%;
            width: 55%;
            height: 1400px;
        }
        .card {
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            width: 100%;
            height: 150px;
            margin-top: 20px;
            text-align: center;
            font-family: arial;
            background-color: #fef0f0;
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
            background-color: #009933;
            text-align: center;
            cursor: pointer;
            width: 20%;
            font-size: 18px;
            margin-top: 20px;
            float: right;
            text-align: center;
            margin-right: 20px;
        }
        .image {
            float: left;
            width: 120px;
            height:150px;
            margin-left:20px;
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
                <asp:ImageButton ID="img_icon" runat="server" src="img/icon.JPG" CssClass="icon" href="Home.aspx" OnClick="img_icon_Click"/>
                <asp:TextBox ID="txt_search" runat="server" CssClass="search"></asp:TextBox>
                <asp:Button ID="btn_search" runat="server" Text="SEARCH" CssClass="search_btn" BackColor="#333333" Font-Bold="True" ForeColor="White"/>
                <asp:ImageButton ID="img_shop_cart" runat="server" src="https://purepng.com/public/uploads/large/purepng.com-shopping-cartshoppingcarttrolleycarriagebuggysupermarkets-1421526532320cblq3.png" CssClass="img_button" />
                <asp:ImageButton ID="img_profile" runat="server" src="https://cdn1.iconfinder.com/data/icons/freeline/32/account_friend_human_man_member_person_profile_user_users-512.png" CssClass="img_button" />                
            </asp:Panel>
        </div>
        <div class="main_container" runat="server" id="Maindiv">
            <div class="card">                
                <asp:Image src="" ID="Image1" runat="server" Height="147px" CssClass="image" />
                    <asp:Label ID="Label1" runat="server"/>
                    <button>Add to Cart</button>             
                </div>
                <div class="card">                
                <asp:Image src="" ID="Image2" runat="server" Height="147px" CssClass="image" />     
                    <asp:Label ID="Label2" runat="server"/>
                    <button>Add to Cart</button> 
                </div>
                <div class="card">                
                <asp:Image src="" ID="Image3" runat="server" Height="147px" CssClass="image" />  
                    <asp:Label ID="Label3" runat="server"/>
                    <button>Add to Cart</button> 
                </div>
                <div class="card">                
                <asp:Image src="" ID="Image4" runat="server" Height="147px" CssClass="image" />    
                    <asp:Label ID="Label4" runat="server"/>
                    <button>Add to Cart</button> 
                </div>
             <div class="card">                
                <asp:Image src="" ID="Image5" runat="server" Height="147px" CssClass="image" />
                    <asp:Label ID="Label5" runat="server"/>
                    <button>Add to Cart</button>             
                </div>
                <div class="card">                
                <asp:Image src="" ID="Image6" runat="server" Height="147px" CssClass="image" />     
                    <asp:Label ID="Label6" runat="server"/>
                    <button>Add to Cart</button> 
                </div>
                <div class="card">                
                <asp:Image src="" ID="Image7" runat="server" Height="147px" CssClass="image" />  
                    <asp:Label ID="Label7" runat="server"/>
                    <button>Add to Cart</button> 
                </div>
                <div class="card">                
                <asp:Image src="" ID="Image8" runat="server" Height="147px" CssClass="image" />    
                    <asp:Label ID="Label8" runat="server"/>
                    <button>Add to Cart</button> 
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
