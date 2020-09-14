<%--
  Created by IntelliJ IDEA.
  User: MHilmi
  Date: 14.09.2020
  Time: 14:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<meta name = "description" content = "Fikirtepe öğrenci bilgi sistemi" charset="utf-8">
<meta name = "viewport" content = "width = device-width, initial-scale = 1.0">
<title>  Öğrenci Bilgi Sistemi </title>
<link rel = "stylesheet" href = "../css/style.css">
<link rel = "stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
</head>
<body id = "LoginPage">
<div id = "LoginTopLine">
  <div id = "LoginTitle">
    Öğrenci&nbsp;Bilgi&nbsp;Sistemi
  </div>
</div>
<div id = "warning-place">
  <div id = "wrong-data" class = "warning-message" style="display:none;">
    Kullanıcı adınız ya da şifreniz hatalı!
  </div>
  <div id = "lack-of-data" class = "warning-message" style="display:none;">
    Lütfen bilgilerinizi giriniz!
  </div>
  <div id = "branch-warn" class = "warning-message" style="display: none;">
    Lütfen şubenizi seçiniz!
  </div>
  <div id = "invalid-password" class = "warning-message" style = "display: none">
    Şifreniz en az 6 karakterli olmalı, büyük harf, küçük harf ve rakam içermelidir.
  </div>
</div>
<div id = "LoginPanel">
  <div id= slogan> EĞİTİM & DEĞİŞİM & GELİŞİM </div>
  <div id = "logo"></div>
  <!-- <form id = "form" method = "POST"> -->
  <div id = "form">
    <div class = "userInput">
      <i id = "user-image" class = "login-images"></i>
      <input id = "userID" class = "input" name = "user_id" placeholder = "Kullanıcı Adı / TCKN">
    </div>
    <div id = "password-div" class = "userInput">
      <i id = "password-image" class = "login-images"></i>
      <input type = "password" id = "password" name = "user_password" class = "input" name = "password" placeholder = "Şifre" autocomplete = "off" aria-hidden ="false">
      <i id = "toggle-password" class ="far fa-eye"> </i>
    </div>
    <div id = branch-div class = "userInput">
      <i id = "branch-image" class = "login-images"></i>
      <select id = "branch" class = "input">
        <option class = "option" value = "0" name = "default" selected = "true" disabled = "disabled"> Şube </option>
        <option class = "option" value = "1" name = "user_branch"> Fikirtepe </option>
        <option class = "option" value = "2" name = "user_branch"> Temporary Branch </option>
      </select>
    </div>
    <div id = "log-button-div">
      <button id = "login-button" class = "input" type = "submit"> <strong> GİRİŞ </strong> </button>
    </div>
    <div id = "for-pass-div">
      <i class = "arrow"></i>
      <button id = "forgot-password" class = "input"> Şifremi unuttum </button>
    </div>
    <div id = "create-pass-div">
      <i class = "arrow"></i>
      <button id = "create-password" class = "input"> İlk şifremi oluştur </button>
    </div>
  </div>
</div>
<script src = "../js/app.js"> </script>
</body>
</html>
