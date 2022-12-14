<%--
  Created by IntelliJ IDEA.
  User: cosmo
  Date: 2022/06/29
  Time: 3:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- reset -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css"/>
    <!-- font -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
    <!-- material icons -->
    <link href="https://fonts.googleapis.com/css?family=Material+Icons|Material+Icons+Outlined|Material+Icons+Two+Tone|Material+Icons+Round|Material+Icons+Sharp" rel="stylesheet">
    <!-- css -->
    <link rel="stylesheet" href="./css/common.css"/>
    <link rel="stylesheet" href="./css/illustration.css"/>
    <title>illustration</title>
    <style>


    </style>
    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.imagesloaded/5.0.0/imagesloaded.pkgd.min.js"></script>
    <!-- jQuery Modal -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
    <!-- gsap & scrollToPlugin -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/4.17.21/lodash.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.10.4/gsap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.10.4/ScrollToPlugin.min.js"></script>
    <!-- scrollMaging -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/ScrollMagic/2.0.8/ScrollMagic.min.js"></script>
    <!-- selectbox -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/js/jquery.nice-select.min.js"></script>
    <script defer src="./js/check.js"></script>
    <script defer src="./js/common.js"></script>
    <script defer src="./js/illustration.js"></script>
    <%-- jQuery File Download --%>
    <script src="./js/library/jquery.fileDownload.js"></script>
</head>
<body>
<!-- ?????????, ???????????? ??????-->
<div id="modal"></div>
<div class="modal-con loginModal">
    <a href="javascript:;" class="close-btn">
        <%--        <span class="material-icons-round">close</span>--%>
        <i class="fas fa-times"></i>
    </a>
    <p class="title">Login</p>
    <div class="login-form">
        <form action="/index" method="get" id="loginForm">
            <span>?????????</span>
            <input id="loginId" type="text" placeholder="???????????? ???????????????.">
            <span id="loginIdMessage" class="message">&nbsp;</span>
            <span>????????????</span>
            <input id="loginPw" type="password" placeholder="??????????????? ???????????????.">
            <span id="loginPwMessage" class="message">&nbsp;</span>
            <div class="btn-box">
                <button type="button" class="login-btn" id="axLogin">?????????</button>
                <button type="reset" class="reset-btn">??????</button>
            </div>
        </form>
    </div>
    <div class="find-pw">
        <a href="#">?????????/??????????????? ??????????????????????</a>
    </div>
</div>

<!-- <div id="modal-join"></div> -->
<div class="modal-con joinModal">
    <a href="javascript:;" class="close-btn">
        <%--        <span class="material-icons-round">close</span>--%>
        <i class="fas fa-times"></i>
    </a>
    <p class="title">Sign-up</p>
    <div class="join-form">
        <form action="" method="post" id="joinForm">
            <span>?????????</span>
            <input id="joinId" type="text" placeholder="???????????? ???????????????.">
            <input id="idDupCheck" type="button" value="????????????" onclick="idDupCheckF()">
            <span id="idMessage" class="message">&nbsp;</span>
            <span>??????</span>
            <input id="joinName" type="text" placeholder="????????? ???????????????.">
            <span id="nameMessage" class="message">&nbsp;</span>
            <span>????????????</span>
            <input id="joinPw" type="password" placeholder="??????????????? ???????????????.">
            <span id="pwMessage" class="message">&nbsp;</span>
            <span>???????????? ??????</span>
            <input id="joinPwCheck" type="password" placeholder="??????????????? ?????? ???????????????.">
            <span id="pwCheckMessage" class="message">&nbsp;</span>
            <div class="btn-box">
                <button type="submit" class="join-btn" id="axJoin" onclick="return joinCheck()" disabled>??????</button>
                <button type="reset" class="reset-btn">??????</button>
            </div>
        </form>
    </div>
    <div class="help">
        <a href="#">????????? ???????????????????</a>
    </div>
</div>

<!-- ?????? -->
<header>
    <div class="inner">
        <a href="index" class="logo">
            <h2 class="logo-text">FreeStock</h2>
        </a>

        <div class="menu">
            <h2 class="hidden">????????? ??????</h2>
            <ul class="user-menu"></ul>
            <button class="btn-upload" onclick="uploadLoginCheck();">UPLOAD</button>
        </div>
    </div>
</header>

<!-- ??????????????? -->
<nav>
    <div class="inner">
        <h2 class="hidden">?????? ??????</h2>
        <ul class="main-menu">
            <li>
                <a href="photo">Photo</a>
            </li>
            <li>
                <a href="illustration">Illustration</a>
            </li>
            <li>
                <a href="video">Video</a>
            </li>
            <li>
                <a href="music">Music</a>
            </li>
        </ul>
    </div>
</nav>

<main>
    <div class="inner">
        <!-- ????????? -->
        <form action="" method="">
            <div class="search-box">
                <h2 class="hidden">???????????? ??????</h2>
                <select name="wichiSearch" id="category">
                    <option value="??????" id="title" selected>??????</option>
                    <option value="?????????" id="author">?????????</option>
                </select>
                <h2 class="hidden">?????????</h2>
                <input type="text" maxlength="100" placeholder="???????????? ???????????????." autocomplete="off">
                <h2 class="hidden">?????? ??????</h2>
                <button type="submit" class="search-btn">SEARCH</button>
            </div>
        </form>

        <!-- ????????? ????????? -->
        <div class="grid-container"></div>
        <button class="more-btn">?????????</button>

    </div>
</main>

<!-- ????????? ????????? ????????????  -->
<div id="modal-img" onclick="closeImg()"></div>
<div class="modal-con imgModal">
    <a href="javascript:;" class="close-btn img-close" onclick="closeImg()">
        <i class="fas fa-times"></i>
    </a>
    <div class="img-box">
        <img src="" alt="" id="img-content">
    </div>
    <div class="img-info">
        <div class="img-title"></div>
        <div class="img-id"></div>
        <div class="img-createDate"></div>
        <div class=" hidden img-boardNo"></div>
        <input id="uuid" type="hidden" />
        <input id="fileName" type="hidden" />
        <input id="fileExtension" type="hidden" />
    </div>
    <div class="btn-wrap">
        <button class="like">
            <i class="fas fa-thumbs-up"></i>
            <span id="spanLikeCount" class="likeCount"></span>
        </button>
        <button id="file-download" class="img-btn" onclick="downloadImg()">????????????</button>
    </div>
</div>

<!-- ????????? ??? ?????? -->
<div id="to-top">
    <i class="fas fa-arrow-up"></i>
</div>


</body>
</html>
