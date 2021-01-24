<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="gallery.aspx.cs" Inherits="finalhtmlNurit.gallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="Gallery" class="center">
        <button id="back" onclick="Previous();">Back</button>
        <img src="images\1.jpg" alt="didnt load correctly" id="image"/>
        <button id="next" onclick="Forward();">Next</button>
        <p class="center">Tomers gallery!</p>

    </div>
    <script>
        var imagenum = 1;
        function Forward() {
            if (imagenum < 4) {
                imagenum++;
                image.src = imagenum + ".jpg";
            }
            else if (imagenum == 4) {
                imagenum = 1;
                image.src = imagenum + ".jpg";
            }
        }
        function Previous() {
            if (imagenum > 1) {
                imagenum--;
                image.src = imagenum + ".jpg";
            }
            else if (imagenum == 1) {
                imagenum = 4;
                image.src = imagenum + ".jpg";
            }
        }
    </script>
</asp:Content>
