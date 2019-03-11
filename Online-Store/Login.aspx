<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Online_Store.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Login </title>
    <style type="text/css">
        #panel {
            width:950px;
            margin-top:5%;
            margin-left:auto;
            margin-right:auto;
        }
        .left { /*Sign Up Part*/
            width:530px;
            background-color:#e5e5e5;
            height:720px;
            float:left;
        }
        .right { /*Login Part*/
            width:420px;
            background-color:#0066cc;
            height:720px;
            float:right;
        }
        .button{
            height: 35px;
            background-color: #0099ff;       
            border: none;
            border-radius: 4px;
            margin-left: 10px;            
        }
        .label{
           float: left;
           text-align: center;
           margin-left: 10px;
           margin-bottom: 10px;
       }
        .textbox{
            margin-left: 10px;
            height: 35px;
            width: 400px;
        }
        .image{
            margin-left: 100px;
            margin-top: 100px;
        }
        span.psw {
            float: right;
            margin-top: 2px;
            margin-right: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="panel">
            <div class="left">
                <br />
                   <asp:Label ID="sgn_lbl_name" runat="server" Text="Name :" CssClass="label"></asp:Label>
                   <br />
                   <br />
                   <asp:TextBox ID="sgn_txt_name" runat="server" CssClass="textbox" Width="500px"></asp:TextBox>
                   <br />
                   <br />
                   <asp:Label ID="sgn_lbl_surname" runat="server" Text="Surname :" CssClass="label"></asp:Label>
                   <br />
                   <br />
                   <asp:TextBox ID="sgn_txt_surname" runat="server" CssClass="textbox" Width="500px"></asp:TextBox>
                   <br />
                   <br />
                   <asp:Label ID="sgn_lbl_email" runat="server" Text="E-mail :" CssClass="label"></asp:Label>
                   <br />
                   <br />
                   <asp:TextBox ID="sgn_txt_email" runat="server" CssClass="textbox" Width="500px"></asp:TextBox>
                   <br />
                   <asp:Label ID="sgn_lbl_address" runat="server" Text="Address :" CssClass="label"></asp:Label>
                   <br />
                   <br />
                   <asp:TextBox ID="sgn_txt_address" runat="server" CssClass="textbox" Width="500px"></asp:TextBox>
                   <br />
                   <br />
                   <asp:Label ID="sgn_lbl_username" runat="server" Text="Username :" CssClass="label"></asp:Label>
                   <br />
                   <br />
                   <asp:TextBox ID="sgn_txt_username" runat="server" CssClass="textbox" Width="500px"></asp:TextBox>
                   <br />
                   <br />
                   <asp:Label ID="sgn_lbl_password" runat="server" Text="Password :" CssClass="label"></asp:Label>
                   <br />
                   <br />
                   <asp:TextBox ID="sgn_txt_password" runat="server" CssClass="textbox" Width="500px"></asp:TextBox>
                   <br />
                   <br />
                   <asp:Label ID="sgn_lbl_confirm_password" runat="server" Text="Confirm Password :" CssClass="label"></asp:Label>
                   <br />
                   <br />
                   <asp:TextBox ID="sgn_txt_confirm_password" runat="server" CssClass="textbox" Width="500px"></asp:TextBox>
                   <br />
                   <br />
                   <asp:Button ID="btn_signup" runat="server" Text="Sign Up" CssClass="button" Width="500px" BackColor="#0066cc"/>
                   <br />
                   <br />
            </div>
            <div class="right">
                 <asp:Image ID="img_icon" runat="server" ImageUrl="https://www.xibis.com/Wysiwyg/Image?subPath=\\Blog\users.png&size=original&customX=&customY="  Height="160px" Width="220px" CssClass="image"/>
                   <br />
                   <br />
                   <asp:Label ID="lgn_lbl_username" runat="server" Text="Username :" CssClass="label"></asp:Label>
                   <br />
                   <asp:TextBox ID="lgn_txt_username" runat="server" CssClass="textbox"></asp:TextBox>
                   <br />
                   <br />
                   <br />
                   <asp:Label ID="lgn_lbl_password" runat="server" Text="Password :" CssClass="label"></asp:Label>
                   <br />
                   <asp:TextBox ID="lgn_txt_password" runat="server" CssClass="textbox" TextMode="Password"></asp:TextBox>
                   <br />
                   <br />
                   &nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:CheckBox ID="CheckBox1" runat="server" Text="I agree to Terms of Service and Privacy Policy" margin-left="10px"/>
                   <br />
                   <br />
                   <asp:Button ID="btn_login" runat="server" Text="Login" CssClass="button" Width="400px" BackColor="#009933" OnClick="btn_login_Click"/>
                   <br />
                   <br />
                   <span class="psw">Forgot <a href="#">password?</a></span>
            </div>
           
        </div>
    </form>
</body>
</html>
