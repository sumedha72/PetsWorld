<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="WebApplication9.AdminPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
      <style>
         .fa{
    padding: 20px;
    font-size: 30px;
    width: 30px;
    text-align: center;
    text-decoration: none;
    border-radius: 50%;
        }
   .fa:hover {
    opacity: 0.7;
}

.fa-facebook {
  margin-left:550px;
  background: #3B5998;
  color: white;
  height:20px;
  width:20px;
}

.fa-twitter {
  background: #55ACEE;
  color: white;
   height:20px;
  width:20px;
}
.fa-instagram {
  background: #125688;
  color: white;
   height:20px;
  width:20px;
}

.fa-pinterest {
  background: #cb2027;
  color: white;
   height:20px;
  width:20px;
}
          html{
    height:100px;
    width:900px;
    top: auto;
    left: auto;
    margin:auto;
   
    background-image:url(HomePageImages/1234.jpg)
        }
   #logo{
        width:900px;height:100px;
        
        align-items:center;
        margin-top:20px;
        margin-left:300px;
        }
   #logotext{
       font-size:xx-large;
        font-family:'MS PGothic';
        
        font-weight:bold;
        color:#9b1732;
        align-items:center;
   }
   #marquee{
    color:crimson;
    font-weight:900;

}
          
     #footer {
            
            color:maroon;
            margin-top:100px;
            clear: left;
            text-align: center;
        }
     #homepage{
         margin-top:5px;
     }
     ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color:maroon;
}

li {
    float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover {
    background-color:#55ACEE;
}

li a:hover:not(.active){
    background-color:#55ACEE;

}

.active{
    background-color:maroon;
}

 </style>
</head>
<body>
    <div id="vimeologo">
        <img src="HomePageImages/vimeologo.png" height="80" width="80" /> </div>
    <a href="#" class="fa fa-facebook"></a>
    <a href="#" class="fa fa-twitter"></a>
    
    <a href="#" class="fa fa-instagram"></a>
    <a href="#" class="fa fa-pinterest"></a>    
     <div id="home">
<a href="HomePage.aspx">
<img src="HomePageImages/Homepage.png"   width="40" height="40" border="0"/>
</a>
    </div>
      
    <div id="logo">
        <img src="HomePageImages/Logo.jpg" />
        </div>
 <div id="marquee">
    <MARQUEE width="900" height="30" DIRECTION=LEFT color>Don't miss out our best offers!</MARQUEE>
    <MARQUEE width="900" height="30" DIRECTION=RIGHT>30% off on Christmas videos!</MARQUEE>
     </div>
       <div id="logotext">
    The best collection of videos from around the world!
        </div>
    <form id="form1" runat="server">
    
    <div>
    
    </div>
        <ul>
  <li><a class="active" href="AdminInsert.aspx">Insert Video</a></li>
  <%--<li><a href="AdminUpdate.aspx">Update</a></li>--%>
  <li><a href="AdminDelete.aspx">Delete Video</a></li>
  <li><a href="AdminView.aspx">Edit and View Videos</a></li>  
</ul>

    </form>
    <div id="footer">Copyright &copy; vimeo.com</div>
</body>
</html>
