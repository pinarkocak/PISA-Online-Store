<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Administrator.aspx.cs" Inherits="Online_Store.Administrator" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Administrator</title>
    <style>
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
        .footer {
            background-color:#fef0f0;
            width:100%;
            height:50px; 
            margin-bottom: auto;
        }
        .footer_lbl_btn {
            margin-left:4%;
            margin-top:10px;            
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
            width: 370px; 
            border: 2px solid #fef0f0;
            border-radius: 5px;
        }
        .button{
            height: 35px;
            background-color: #009933;       
            border: none;
            border-radius: 4px;
            margin-left: 10px; 
            width: 370px;
        }
        .panel_insert {
            float: left;
            margin-left: 0%;
            margin-top: 20px;
            height: 720px;
            width: 390px;
            background-color: #fef0f0;
        }
        .panel_delete {
            float: left;
            margin-left: 5%;
            margin-top: 20px;
            height: 200px;
            width: 390px;
            background-color: #fef0f0;
        }
        .panel_update {
            float: left;
            margin-left: 5%;
            margin-top: 20px;
            height: 870px;
            width: 390px;
            background-color: #fef0f0;
        }
        .tab_container {
            height: 970px;
            width: 80%;
            margin-left: 10%;
            margin-right: 10%;
            margin-top: 10px;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div>
            <!-- Header -->
            <asp:Panel ID="panel_header" runat="server" CssClass="panel_header">
                <asp:ImageButton ID="img_icon" runat="server" src="img/icon.JPG" CssClass="icon" OnClick="img_icon_Click"/>
                <asp:ImageButton ID="img_profile" runat="server" src="https://cdn1.iconfinder.com/data/icons/freeline/32/account_friend_human_man_member_person_profile_user_users-512.png" CssClass="img_button" />                
            </asp:Panel>

            <!-- Main Container -->
                <ajaxToolkit:TabContainer ID="tbCont_BookOperation" runat="server" ActiveTabIndex="2" CssClass="tab_container">
                    <ajaxToolkit:TabPanel ID="TabPanel1" runat="server" HeaderText="TabPanel_Book">
                        <HeaderTemplate>
                            BOOK
                        </HeaderTemplate>
                        <ContentTemplate>
                            <asp:Panel ID="pnl_InsertBook" runat="server" CssClass="panel_insert">
                                <br />
                                <asp:Label ID="lbl_bookname" runat="server" CssClass="label" Text="NAME: "></asp:Label>
                                <asp:TextBox ID="txt_bookName" runat="server" CssClass="textbox" Width="363px"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Label ID="lbl_bookIsbn" runat="server" CssClass="label" Text="ISBN: "></asp:Label>
                                <asp:TextBox ID="txt_bookIsbn" runat="server" CssClass="textbox" Width="363px"></asp:TextBox>
                                <br />
                                <br />                              
                                <asp:Label ID="lbl_bookAuthor" runat="server" CssClass="label" Text="AUTHOR: "></asp:Label>
                                <asp:TextBox ID="txt_bookAuthor" runat="server" CssClass="textbox" Width="363px"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Label ID="lbl_bookPublisher" runat="server" CssClass="label" Text="PUBLISHER: "></asp:Label>
                                <asp:TextBox ID="txt_bookPublisher" runat="server" CssClass="textbox" Width="363px"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Label ID="lbl_bookPage" runat="server" CssClass="label" Text="PAGE: "></asp:Label>
                                <asp:TextBox ID="txt_bookPage" runat="server" CssClass="textbox" TextMode="Number" Width="363px"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Label ID="lbl_bookPrice" runat="server" CssClass="label" Text="PRICE: "></asp:Label>
                                <asp:TextBox ID="txt_bookPrice" runat="server" CssClass="textbox" Width="363px"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Label ID="lbl_bookStock" runat="server" CssClass="label" Text="STOCK: "></asp:Label>
                                <asp:TextBox ID="txt_bookStock" runat="server" CssClass="textbox" TextMode="Number" Width="363px" ></asp:TextBox>
                                <br />
                                <br />
                                <asp:Label ID="lbl_bookImage" runat="server" CssClass="label" Text="IMAGE: "></asp:Label>
                                <br />
                                <asp:FileUpload ID="fl_upld_image" runat="server" style="margin-left: 17px" />
                                <br />
                                <br />
                                <asp:Button ID="btn_insertBook" runat="server" OnClick="btn_insertBook_Click"  Text="ADD BOOK" CssClass="button" />
                            </asp:Panel>
                            <asp:Panel ID="pnl_DeleteBook" runat="server" CssClass="panel_delete">
                                <br />
                                <br />
                                <asp:Label ID="lbl_DeleteBook" runat="server" CssClass="label" Text="ENTER ISBN FOR DELETE BOOK: "></asp:Label>
                                <asp:TextBox ID="txt_ISBNforDelete" runat="server" CssClass="textbox"></asp:TextBox>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                                <br />
                                <asp:Button ID="btn_SearchIsbnforDelete" runat="server" OnClick="btn_SearchIsbnforDelete_Click" Text="DELETE" CssClass="button" />
                                <br />
                                <br />
                                <br />
                                <br />
                            </asp:Panel>
                            <asp:Panel ID="pnl_UpdateBook" runat="server" CssClass="panel_update">
                                <br />
                                <br />
                                <asp:Label ID="lbl_SearchIsbn" runat="server" CssClass="label" Text="ENTER ISBN FOR UPDATE BOOK: "></asp:Label>
                                <asp:TextBox ID="txt_ISBNforUpdate" runat="server" CssClass="textbox"></asp:TextBox>
                                &nbsp;&nbsp;&nbsp;&nbsp;<br />
                                <br />
                                &nbsp;<asp:Button ID="btn_SearchISBNforUpdate" runat="server" OnClick="btn_SearchISBN_Click" Text="SEARCH" CssClass="button" />
                                <br />
                                <br />
                                <asp:Label ID="lbl_bookname0" runat="server" CssClass="label" Text="NAME: "></asp:Label>
                                <asp:TextBox ID="txt_bookNameupdate" runat="server" CssClass="textbox" Width="363px"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Label ID="lbl_bookIsbn0" runat="server" CssClass="label" Text="ISBN: "></asp:Label>
                                <asp:TextBox ID="txt_bookIsbnupdate" runat="server" CssClass="textbox" Width="363px"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Label ID="lbl_bookAuthor0" runat="server" CssClass="label" Text="AUTHOR: "></asp:Label>
                                <asp:TextBox ID="txt_bookAuthorupdate" runat="server" CssClass="textbox" Width="363px"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Label ID="lbl_bookPublisher0" runat="server" CssClass="label" Text="PUBLISHER: "></asp:Label>
                                <asp:TextBox ID="txt_bookPublisherupdate" runat="server" CssClass="textbox" Width="363px"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Label ID="lbl_bookPage0" runat="server" CssClass="label" Text="PAGE: "></asp:Label>
                                <asp:TextBox ID="txt_bookPageupdate" runat="server" CssClass="textbox" TextMode="Number" Width="363px"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Label ID="lbl_bookPrice0" runat="server" CssClass="label" Text="PRICE: "></asp:Label>
                                <asp:TextBox ID="txt_bookPriceupdate" runat="server" CssClass="textbox" Width="363px"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Label ID="lbl_bookStock0" runat="server" CssClass="label" Text="STOCK: "></asp:Label>
                                <asp:TextBox ID="txt_bookStockupdate" runat="server" CssClass="textbox" TextMode="Number" Width="363px"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Label ID="lbl_bookImage0" runat="server" CssClass="label" Text="IMAGE: "></asp:Label>
                                <br />
                                <asp:FileUpload ID="fl_upld_imageforUpdate" runat="server" style="margin-left: 17px" />
                                <br />
                                <br />
                                <asp:Button ID="btn_updateBook" runat="server"  OnClick="btn_updateBook_Click"  Text="UPDATE BOOK" CssClass="button" Visible="False" />
                            </asp:Panel>
                        </ContentTemplate>
                    </ajaxToolkit:TabPanel>
                    <ajaxToolkit:TabPanel ID="TabPanel2" runat="server" HeaderText="TabPanel_Music">
                        <HeaderTemplate>
                            MUSIC
                        </HeaderTemplate>
                        <ContentTemplate>
                            <asp:Panel ID="pnl_InsertMusic" runat="server" CssClass="panel_insert">
                                <br />
                                <asp:Label ID="lbl_musicname" runat="server" CssClass="label" Text="NAME: "></asp:Label>
                                <asp:TextBox ID="txt_musicname" runat="server" CssClass="textbox" Width="363px"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Label ID="lbl_singer" runat="server" CssClass="label" Text="SINGER: "></asp:Label>
                                <asp:TextBox ID="txt_singer" runat="server" CssClass="textbox" Width="363px"></asp:TextBox>
                                <br />
                                <br />                              
                                <asp:Label ID="lbl_musictype" runat="server" CssClass="label" Text="TYPE: "></asp:Label>
                                <asp:TextBox ID="txt_musictype" runat="server" CssClass="textbox" Width="363px"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Label ID="lbl_musicprice" runat="server" CssClass="label" Text="PRICE: "></asp:Label>
                                <asp:TextBox ID="txt_musicprice" runat="server" CssClass="textbox" Width="363px"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Label ID="lbl_musicstock" runat="server" CssClass="label" Text="STOCK: "></asp:Label>
                                <asp:TextBox ID="txt_musicstock" runat="server" CssClass="textbox" TextMode="Number" Width="363px"></asp:TextBox>
                                <br />
                                <br /> 
                                <asp:Label ID="lbl_musicimage" runat="server" CssClass="label" Text="IMAGE: "></asp:Label>
                                <br />
                                <asp:FileUpload ID="FileUpload1" runat="server" style="margin-left: 17px" />
                                <br />
                                <br />
                                <asp:Button ID="btn_insertmusic" runat="server" Text="ADD MUSIC" CssClass="button" />
                            </asp:Panel>
                            <asp:Panel ID="Panel2" runat="server" CssClass="panel_delete">
                                <br />
                                <br />
                                <asp:Label ID="lbl_id" runat="server" CssClass="label" Text="ENTER ID FOR DELETE MUSIC: "></asp:Label>
                                <asp:TextBox ID="txt_id" runat="server" CssClass="textbox"></asp:TextBox>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                                <br />
                                <asp:Button ID="btn_deletemusic" runat="server" Text="DELETE" CssClass="button" />
                                <br />
                                <br />
                                <br />
                                <br />
                            </asp:Panel>
                            <asp:Panel ID="Panel3" runat="server" CssClass="panel_update">
                                <br />
                                <br />
                                <asp:Label ID="Label10" runat="server" CssClass="label" Text="ENTER ID FOR UPDATE MUSIC: "></asp:Label>
                                <asp:TextBox ID="TextBox9" runat="server" CssClass="textbox"></asp:TextBox>
                                &nbsp;&nbsp;&nbsp;&nbsp;<br />
                                <br />
                                &nbsp;<asp:Button ID="btn_searchmusic" runat="server" Text="SEARCH" CssClass="button" />
                                <br />
                                <br />
                                <asp:Label ID="lbl_musicname1" runat="server" CssClass="label" Text="NAME: "></asp:Label>
                                <asp:TextBox ID="txt_musicname1" runat="server" CssClass="textbox" Width="363px"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Label ID="lbl_singer1" runat="server" CssClass="label" Text="SINGER: "></asp:Label>
                                <asp:TextBox ID="txt_singer1" runat="server" CssClass="textbox" Width="363px"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Label ID="lbl_musictype1" runat="server" CssClass="label" Text="TYPE: "></asp:Label>
                                <asp:TextBox ID="txt_musictype1" runat="server" CssClass="textbox" Width="363px"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Label ID="lbl_musicprice1" runat="server" CssClass="label" Text="PRICE: "></asp:Label>
                                <asp:TextBox ID="txt_musicprice1" runat="server" CssClass="textbox" Width="363px"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Label ID="lbl_musicstock1" runat="server" CssClass="label" Text="STOCK: "></asp:Label>
                                <asp:TextBox ID="txt_musicstock1" runat="server" CssClass="textbox" TextMode="Number" Width="363px"></asp:TextBox>
                                <br />
                                <br />                                
                                <asp:Label ID="lbl_musicimage1" runat="server" CssClass="label" Text="IMAGE: "></asp:Label>
                                <br />
                                <asp:FileUpload ID="FileUpload2" runat="server" style="margin-left: 17px" />
                                <br />
                                <br />
                                <asp:Button ID="btn_updatemusic" runat="server" Text="UPDATE MUSIC" CssClass="button" />
                            </asp:Panel>
                        </ContentTemplate>
                    </ajaxToolkit:TabPanel>
                    <ajaxToolkit:TabPanel ID="TabPanel3" runat="server" HeaderText="TabPanel_Movie">
                        <HeaderTemplate>
                            MOVIE
                        </HeaderTemplate>
                        <ContentTemplate>
                            <asp:Panel ID="pnl_InsertMovie" runat="server" CssClass="panel_insert">
                                <br />
                                <asp:Label ID="lbl_moviename" runat="server" CssClass="label" Text="NAME: "></asp:Label>
                                <asp:TextBox ID="txt_moviename" runat="server" CssClass="textbox" Width="363px"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Label ID="lbl_director" runat="server" CssClass="label" Text="DIRECTOR: "></asp:Label>
                                <asp:TextBox ID="txt_moviedirector" runat="server" CssClass="textbox" Width="363px"></asp:TextBox>
                                <br />
                                <br />                              
                                <asp:Label ID="lbl_year" runat="server" CssClass="label" Text="YEAR: "></asp:Label>
                                <asp:TextBox ID="txt_movieyear" runat="server" CssClass="textbox" Width="363px"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Label ID="lbl_genre" runat="server" CssClass="label" Text="GENRE: "></asp:Label>
                                <asp:TextBox ID="txt_moviegenre" runat="server" CssClass="textbox" Width="363px"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Label ID="lbl_runtime" runat="server" CssClass="label" Text="RUNTIME: "></asp:Label>
                                <asp:TextBox ID="txt_movieruntime" runat="server" CssClass="textbox" TextMode="Number" Width="363px"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Label ID="lbl_price" runat="server" CssClass="label" Text="PRICE: "></asp:Label>
                                <asp:TextBox ID="txt_movieprice" runat="server" CssClass="textbox" Width="363px"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Label ID="lbl_stock" runat="server" CssClass="label" Text="STOCK: "></asp:Label>
                                <asp:TextBox ID="txt_moviestock" runat="server" CssClass="textbox" TextMode="Number" Width="363px"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Label ID="lbl_movieimage" runat="server" CssClass="label" Text="IMAGE: "></asp:Label>
                                <br />
                                <asp:FileUpload ID="flupld_movieinsert" runat="server" style="margin-left: 17px" />
                                <br />
                                <br />
                                <asp:Button ID="btn_insertmovie" runat="server"  Text="ADD MOVIE" CssClass="button" OnClick="btn_insertmovie_Click" />
                            </asp:Panel>
                            <asp:Panel ID="pnl_deletemovie" runat="server" CssClass="panel_delete">
                                <br />
                                <br />
                                <asp:Label ID="lbl_deletemovie" runat="server" CssClass="label" Text="ENTER ID FOR DELETE MOVIE: "></asp:Label>
                                <asp:TextBox ID="txt_deletemovie" runat="server" CssClass="textbox"></asp:TextBox>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                                <br />
                                <asp:Button ID="btn_deletemovie" runat="server"  Text="DELETE" CssClass="button" />
                                <br />
                                <br />
                                <br />
                                <br />
                            </asp:Panel>
                            <asp:Panel ID="pnl_updatemovie" runat="server" CssClass="panel_update">
                                <br />
                                <br />
                                <asp:Label ID="lbl_updatemovie" runat="server" CssClass="label" Text="ENTER ID FOR UPDATE MOVIE: "></asp:Label>
                                <asp:TextBox ID="txt_updatemovie" runat="server" CssClass="textbox"></asp:TextBox>
                                &nbsp;&nbsp;&nbsp;&nbsp;<br />
                                <br />
                                &nbsp;<asp:Button ID="btn_searchmovie" runat="server" Text="SEARCH" CssClass="button" />
                                <br />
                                <br />
                                <asp:Label ID="lbl_moviename1" runat="server" CssClass="label" Text="NAME: "></asp:Label>
                                <asp:TextBox ID="txt_moviename1" runat="server" CssClass="textbox" Width="363px"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Label ID="lbl_director1" runat="server" CssClass="label" Text="DIRECTOR: "></asp:Label>
                                <asp:TextBox ID="txt_director1" runat="server" CssClass="textbox" Width="363px"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Label ID="lbl_year1" runat="server" CssClass="label" Text="YEAR: "></asp:Label>
                                <asp:TextBox ID="txt_year1" runat="server" CssClass="textbox" Width="363px"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Label ID="lbl_genre1" runat="server" CssClass="label" Text="GENRE: "></asp:Label>
                                <asp:TextBox ID="txt_genre1" runat="server" CssClass="textbox" Width="363px"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Label ID="lbl_runtime1" runat="server" CssClass="label" Text="RUNTIME: "></asp:Label>
                                <asp:TextBox ID="txt_runtime1" runat="server" CssClass="textbox" TextMode="Number" Width="363px"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Label ID="lbl_price1" runat="server" CssClass="label" Text="PRICE: "></asp:Label>
                                <asp:TextBox ID="txt_price1" runat="server" CssClass="textbox" Width="363px"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Label ID="lbl_stock1" runat="server" CssClass="label" Text="STOCK: "></asp:Label>
                                <asp:TextBox ID="txt_stock1" runat="server" CssClass="textbox" TextMode="Number" Width="363px"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Label ID="lbl_movieimage1" runat="server" CssClass="label" Text="IMAGE: "></asp:Label>
                                <br />
                                <asp:FileUpload ID="FileUpload4" runat="server" style="margin-left: 17px" />
                                <br />
                                <br />
                                <asp:Button ID="btn_updatemovie" runat="server" Text="UPDATE MOVIE" CssClass="button" />
                            </asp:Panel>
                        </ContentTemplate>
                    </ajaxToolkit:TabPanel>
                    <ajaxToolkit:TabPanel ID="TabPanel4" runat="server" HeaderText="TabPanel_Magazine">
                        <HeaderTemplate>
                            MAGAZINE
                        </HeaderTemplate>
                        <ContentTemplate>
                            <asp:Panel ID="pnl_insertmagazine" runat="server" CssClass="panel_insert">
                                <br />
                                <asp:Label ID="lbl_magazinename" runat="server" CssClass="label" Text="NAME: "></asp:Label>
                                <asp:TextBox ID="txt_magazinename" runat="server" CssClass="textbox" Width="363px"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Label ID="lbl_magazinetype" runat="server" CssClass="label" Text="TYPE: "></asp:Label>
                                <asp:TextBox ID="txt_magazinetype" runat="server" CssClass="textbox" Width="363px"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Label ID="lbl_magazineprice" runat="server" CssClass="label" Text="PRICE: "></asp:Label>
                                <asp:TextBox ID="txt_magazineprice" runat="server" CssClass="textbox" Width="363px"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Label ID="lbl_magazinestock" runat="server" CssClass="label" Text="STOCK: "></asp:Label>
                                <asp:TextBox ID="txt_magazinestock" runat="server" CssClass="textbox" TextMode="Number" Width="363px"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Label ID="lbl_magazineimage" runat="server" CssClass="label" Text="IMAGE: "></asp:Label>
                                <br />
                                <asp:FileUpload ID="FileUpload5" runat="server" style="margin-left: 17px" />
                                <br />
                                <br />
                                <asp:Button ID="btn_insertmagazine" runat="server" Text="ADD MAGAZINE" CssClass="button" />
                            </asp:Panel>
                            <asp:Panel ID="pnl_deletemagazine" runat="server" CssClass="panel_delete">
                                <br />
                                <br />
                                <asp:Label ID="lbl_deletemagazine" runat="server" CssClass="label" Text="ENTER ID FOR DELETE MAGAZINE: "></asp:Label>
                                <asp:TextBox ID="txt_deletemagazine" runat="server" CssClass="textbox"></asp:TextBox>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                                <br />
                                <asp:Button ID="btn_deletemagazine" runat="server" Text="DELETE" CssClass="button" />
                                <br />
                                <br />
                                <br />
                                <br />
                            </asp:Panel>
                            <asp:Panel ID="pnl_updatemagazine" runat="server" CssClass="panel_update">
                                <br />
                                <br />
                                <asp:Label ID="lbl_updatemagazine" runat="server" CssClass="label" Text="ENTER ID FOR UPDATE MAGAZINE: "></asp:Label>
                                <asp:TextBox ID="txt_updatemagazine" runat="server" CssClass="textbox"></asp:TextBox>
                                &nbsp;&nbsp;&nbsp;&nbsp;<br />
                                <br />
                                &nbsp;<asp:Button ID="btn_searchmagazine" runat="server" Text="SEARCH" CssClass="button" />
                                <br />
                                <br />
                                <asp:Label ID="lbl_magazinename1" runat="server" CssClass="label" Text="NAME: "></asp:Label>
                                <asp:TextBox ID="txt_magazinename1" runat="server" CssClass="textbox" Width="363px"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Label ID="lbl_magazinetype1" runat="server" CssClass="label" Text="ISBN: "></asp:Label>
                                <asp:TextBox ID="txt_magazinetype1" runat="server" CssClass="textbox" Width="363px"></asp:TextBox>
                                <br />
                                <br />                                
                                <asp:Label ID="lbl_magazineprice1" runat="server" CssClass="label" Text="PRICE: "></asp:Label>
                                <asp:TextBox ID="txt_magazineprice1" runat="server" CssClass="textbox" Width="363px"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Label ID="lbl_magazinestock1" runat="server" CssClass="label" Text="STOCK: "></asp:Label>
                                <asp:TextBox ID="txt_magazinestock1" runat="server" CssClass="textbox" TextMode="Number" Width="363px"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Label ID="lbl_magazineimage1" runat="server" CssClass="label" Text="IMAGE: "></asp:Label>
                                <br />
                                <asp:FileUpload ID="FileUpload6" runat="server" style="margin-left: 17px" />
                                <br />
                                <br />
                                <asp:Button ID="btn_updatemagazine" runat="server"  Text="UPDATE MAGAZINE" CssClass="button" />
                            </asp:Panel>
                        </ContentTemplate>
                    </ajaxToolkit:TabPanel>
                    <ajaxToolkit:TabPanel ID="TabPanel5" runat="server" HeaderText="TabPanel_Hobby">
                        <HeaderTemplate>
                            HOBBY
                        </HeaderTemplate>
                        <ContentTemplate>
                            <asp:Panel ID="pnl_inserthobby" runat="server" CssClass="panel_insert">
                                <br />
                                <asp:Label ID="lbl_hobbyname" runat="server" CssClass="label" Text="NAME: "></asp:Label>
                                <asp:TextBox ID="txt_hobbyname" runat="server" CssClass="textbox" Width="363px"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Label ID="lbl_hobbytype" runat="server" CssClass="label" Text="ISBN: "></asp:Label>
                                <asp:TextBox ID="txt_hobbytype" runat="server" CssClass="textbox" Width="363px"></asp:TextBox>
                                <br />
                                <br /> 
                                <asp:Label ID="lbl_hobbyprice" runat="server" CssClass="label" Text="PRICE: "></asp:Label>
                                <asp:TextBox ID="txt_hobbyprice" runat="server" CssClass="textbox" Width="363px"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Label ID="lbl_hobbystock" runat="server" CssClass="label" Text="STOCK: "></asp:Label>
                                <asp:TextBox ID="txt_hobbystock" runat="server" CssClass="textbox" TextMode="Number" Width="363px"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Label ID="lbl_hobbyimage" runat="server" CssClass="label" Text="IMAGE: "></asp:Label>
                                <br />
                                <asp:FileUpload ID="FileUpload7" runat="server" style="margin-left: 17px" />
                                <br />
                                <br />
                                <asp:Button ID="btn_inserthobby" runat="server"  Text="ADD" CssClass="button" />
                            </asp:Panel>
                            <asp:Panel ID="pnl_deletehobby" runat="server" CssClass="panel_delete">
                                <br />
                                <br />
                                <asp:Label ID="lbl_deletehobby" runat="server" CssClass="label" Text="ENTER ID FOR DELETE: "></asp:Label>
                                <asp:TextBox ID="txt_deletehobby" runat="server" CssClass="textbox"></asp:TextBox>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                                <br />
                                <asp:Button ID="btn_deletehobby" runat="server" Text="DELETE" CssClass="button" />
                                <br />
                                <br />
                                <br />
                                <br />
                            </asp:Panel>
                            <asp:Panel ID="pnl_updatehobby" runat="server" CssClass="panel_update">
                                <br />
                                <br />
                                <asp:Label ID="lbl_searchhobby" runat="server" CssClass="label" Text="ENTER ID FOR UPDATE: "></asp:Label>
                                <asp:TextBox ID="txt_searchhobby" runat="server" CssClass="textbox"></asp:TextBox>
                                &nbsp;&nbsp;&nbsp;&nbsp;<br />
                                <br />
                                &nbsp;<asp:Button ID="btn_searchhobby" runat="server" OnClick="btn_SearchISBN_Click" Text="SEARCH" CssClass="button" />
                                <br />
                                <br />
                                <asp:Label ID="lbl_hobbyname1" runat="server" CssClass="label" Text="NAME: "></asp:Label>
                                <asp:TextBox ID="txt_hobbyname1" runat="server" CssClass="textbox" Width="363px"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Label ID="lbl_hobbytype1" runat="server" CssClass="label" Text="TYPE: "></asp:Label>
                                <asp:TextBox ID="txt_hobbytype1" runat="server" CssClass="textbox" Width="363px"></asp:TextBox>
                                <br />
                                <br />                                
                                <asp:Label ID="lbl_hobbyprice1" runat="server" CssClass="label" Text="PRICE: "></asp:Label>
                                <asp:TextBox ID="txt_hobbyprice1" runat="server" CssClass="textbox" Width="363px"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Label ID="lbl_hobbystock1" runat="server" CssClass="label" Text="STOCK: "></asp:Label>
                                <asp:TextBox ID="txt_hobbystock1" runat="server" CssClass="textbox" TextMode="Number" Width="363px"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Label ID="lbl_hobbyimage1" runat="server" CssClass="label" Text="IMAGE: "></asp:Label>
                                <br />
                                <asp:FileUpload ID="FileUpload8" runat="server" style="margin-left: 17px" />
                                <br />
                                <br />
                                <asp:Button ID="btn_updatehobby" runat="server" Text="UPDATE" CssClass="button" />
                            </asp:Panel>
                        </ContentTemplate>
                    </ajaxToolkit:TabPanel>
                </ajaxToolkit:TabContainer>

                <ajaxToolkit:AnimationExtender ID="tbCont_BookOperation_AnimationExtender" runat="server" BehaviorID="TabContainer1_AnimationExtender" TargetControlID="tbCont_BookOperation">
                </ajaxToolkit:AnimationExtender>

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
