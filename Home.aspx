<%@ Page Title="" Language="C#" MasterPageFile="~/Mas.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Home.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="w3-content w3-section"  id="img_slide" onload="carousel()">
         <img id="img1" class="mySlides" style="width:100%" src="Images/pets/1.jpg" /> 
        
         <img id="img2" class="mySlides" style="width:100%" src="Images/pets/2.jpg" /> 
         <img id="img3" class="mySlides" style="width:100%" src="Images/pets/3.jpg" />
       
         <img id="img4" class="mySlides" style="width:100%" src="Images/pets/4.jpg" />
         <img id="img5" class="mySlides" style="width:100%" src="Images/pets/5.jpg" /> 
         <img id="img6" class="mySlides" style="width:100%" src="Images/pets/6.jpg" />
    
        <h4 id="th4">Check out these Cute Animals !</h4>

                                  
     </div>

    
   <div class="videoo">

        <video autoplay loop style="width:100%">
             <source src="Images/vids/Jack Russell Terrier Dog Running Carefree Through The Grass In The Nature Park, Slow Motion Stock Footage Video 17716834 - Shutterstock.MP4" type="video/mp4" />
             
        </video>
    
    

    </div>
    <br />

    
        
        <div id="ad1" style="margin-left:7px;">

       <div style="display: inline" class="container1">
        <asp:ImageButton ImageUrl="~/Images/bgpet/1.jpg" runat="server" id="bg1" OnClick="bg3_Click" Width="330" Height="350"/>
       <div class="overlay">
        <div class="text">Birds</div>
         </div> 
       </div>  
        <div style="display: inline" class="container1">
        <asp:ImageButton ImageUrl="~/Images/bgpet/2.jpg" runat="server" id="bg2" OnClick="bg4_Click" Width="330" Height="350"/>
         </div> 
        <div style="display: inline" class="container1">
        <asp:ImageButton ImageUrl="~/Images/bgpet/3.jpg" runat="server" id="bg3" OnClick="bg3_Click" Width="330" Height="350"/>
         </div> 
        <div style="display: inline" class="container1">
        <asp:ImageButton ImageUrl="~/Images/bgpet/4.jpg" runat="server" id="bg4" OnClick="bg4_Click" Width="330" Height="350"/>
          </div> 
           
            </div>
        

    <div class="videoo">

        <video autoplay loop style="width:100%">
             <source src="Images/vids/Young Woman Spinning With Her Labrador Dog In Slow Motion Stock Footage Video 6253163 - Shutterstock.MP4" type="video/mp4" />
             
        </video>
        </div>
        <div class="videoo">

        <video autoplay loop style="width:100%;height:50%;">
             <source src="Images/vids/Young Woman Sitting Under Tree With Her Labrador Puppy Stock Footage Video 6253124 - Shutterstock.MP4" type="video/mp4" />
             
        </video>
    
        </div>



    <script>
        var myIndex = 0;
        carousel();

    function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 2000); // Change image every 2 seconds
}
</script>

</asp:Content>
