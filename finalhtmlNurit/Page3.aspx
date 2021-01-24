<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" CodeBehind="Page3.aspx.cs" Inherits="finalhtmlNurit.Page3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <script>
      function checkForm()
      {
          var uname = document.getElementById("uname").value;
          if (uname.length < 2) {
              document.getElementById("mFName").value = "שם משתמש קצר מדי או לא קיים";
              document.getElementById("mFName").style.display = "inline";
              return false;
          }
          else
              document.getElementById("mFName").style.display = "none";
          var temail = document.getElementById("temail").value;
          var atSign = temail.indexOf('@');
          var size = temail.length;
          var dotSign = temail.lastIndexOf('.', atSign);
          if (temail.length < 6) {
              document.getElementById("cemail").value = "כתובת לא חוקית או קצרה מדי";
              document.getElementById("cemail").style.display = "inline";
              return false;
          }
          else
              if (atSign != temail.lastIndexOf('@')) {
                  document.getElementById("cemail").value = "כתובת לא חוקית או הסימן @ קיים יותר מפעם אחת";
                  document.getElementById("cemail").style.display = "inline";
                  return false;
              }
           else
              if (temail.index('@') < 2 || temail.lastIndexOf('@') == size - 1) {
                     document.getElementById("cemail").value = "כתובת לא חוקית @ במקום לא נכון";
                     document.getElementById("cemail").style.display = "inline";
                     return false;
              }
           else
              if (dotSign - atSign < 2) {
                     document.getElementById("cemail").value = "כתובת לא חוקית. יש פחות מנקודה אחת או נקודה לא במקום הנכון";//השמת ערך בתוך התכונה
                     document.getElementById("cemail").style.display = "inline";//הפיכת השדה לפעיל
                     return false;
              }
           else
              if (temail.indexOf('.') == 0 || temail.lastIndexOf('.') == size - 1) {
                     document.getElementById("cemail").value = "כתובת לא חוקית. זאת שגיאה לכתוב את הנקודה במקום הראשון או האחרון";//השמת ערך בתוך התכונה
                     document.getElementById("cemail").style.display = "inline";//הפיכת השדה לפעיל
                     return false;
              }
           else
               document.getElementById("cemail").style.display = "none";//הפיכת השדה ללא פעיל


      }
  </script>
  <form method="post" runat ="server" onsubmit="return checkForm();">
      <div>
          user name:<input type="text" name="uname" id="uname" size="10"/>
          <input type = "text" id = "mFName" size = "30" style = "display: none; background-color: Silver; font-weight:bold;" disabled = "disabled" />
          
          <br />
          email: <input type="text" name="temail" id="temail" size="40" />
          <input type="text" id="cemail" size="40" style="display:none;background-color:silver;font-weight:bold;" disabled="disabled" />

          <br />
          password: <input type="password" name="password" id="password" size="40" />
          <br />
          <div class="center">
            gender: male<input type="radio" name="gender" value="male" />&nbsp&nbsp&nbsp female<input type="radio" name="gender" value="female" /><br />
            <input type="reset" name="reset" value="reset" />&nbsp&nbsp&nbsp&nbsp<input type="submit" name="submit" value="submit" />
          </div>
          <br />
      </div>

</form>
</asp:Content>
