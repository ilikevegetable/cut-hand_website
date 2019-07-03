<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>

<%--&lt;%&ndash; 首页搜索栏和Tmall图标 &ndash;%&gt;--%>
<%--<div class="header">--%>
<%--    <div class="headerLayout workArea">--%>

<%--        &lt;%&ndash; 图片logo &ndash;%&gt;--%>
<%--        <div class="logo">--%>
<%--            <a href="${context}">--%>

<%--            </a>--%>
<%--        </div>--%>

<%--&lt;%&ndash;         搜索框&ndash;%&gt;--%>
<%--        <form class="mallSearch-input" action="/searchProduct">--%>
<%--            <input name="keyword" type="text" placeholder="搜索 商品/品牌/店铺">--%>
<%--            <button type="submit" class="searchButton">搜索</button>--%>
<%--            <ul class="hot-query">--%>
<%--                <li>--%>
<%--                    <a href="searchProduct?keyword=针织衫">针织衫</a>--%>
<%--                </li>--%>
<%--                <li class="hot-query-li">--%>
<%--                    <a href="searchProduct?keyword=连衣裙">连衣裙</a>--%>
<%--                </li>--%>
<%--                <li class="hot-query-li">--%>
<%--                    <a href="searchProduct?keyword=四件套">四件套</a>--%>
<%--                </li>--%>
<%--                <li class="hot-query-li">--%>
<%--                    <a href="">摄像头</a>--%>
<%--                </li>--%>
<%--                <li class="hot-query-li">--%>
<%--                    <a href="">客厅灯</a>--%>
<%--                </li>--%>
<%--                <li class="hot-query-li">--%>
<%--                    <a href="">口红</a>--%>
<%--                </li>--%>
<%--                <li class="hot-query-li">--%>
<%--                    <a href="">手机</a>--%>
<%--                </li>--%>
<%--                <li class="hot-query-li">--%>
<%--                    <a href="">运动鞋</a>--%>
<%--                </li>--%>
<%--                <li class="hot-query-li">--%>
<%--                    <a href="">牛奶</a>--%>
<%--                </li>--%>
<%--            </ul>--%>
<%--        </form>--%>
<%--    </div>--%>
<%--</div>--%>

<%--<div style="clear: both;"/>--%>

<%--&lt;%&ndash; 分类信息栏 &ndash;%&gt;--%>
<%--<div class="main-nav">--%>
<%--    <div class="workArea">--%>
<%--        <span class="category-type">--%>
<%--            <span class="glyphicon glyphicon-th-list category-type-icon"></span>--%>
<%--            <span class="category-type-text">商品分类</span>--%>
<%--        </span>--%>
<%--        <span>--%>
<%--            <a href="">--%>
<%--                <img src="img/fore/tmall-shop.png">--%>
<%--            </a>--%>
<%--            <a href="">--%>
<%--                <img src="img/fore/tmall-international.png">--%>
<%--            </a>--%>
<%--            <c:forEach items="${links}" var="link">--%>
<%--                <a href="${link.link}">${link.text}</a>--%>
<%--            </c:forEach>--%>
<%--        </span>--%>
<%--    </div>--%>
<%--</div>--%>
<style>
    * {
        padding: 0;
        margin: 0;
        list-style: none;
        text-decoration: none;
    }

    html, body {
        width: 100%;
        height: 100%;
        background-color: white;
        color: #3c3c3c;
        overflow-x: hidden; /*横向滚动条隐藏*/

    }

    .wrapper {
        width: 100%;
        /*height: 100%;*/
    }

    .wrapper .search-wrap {
        width: 100%;
        height: 130px;
        padding-top: 24px;
        background-color: #fff;

    }

    .wrapper .search-wrap .search-con {
        position: relative;
        width: 1250px;
        height: 120px;
        margin: 0 auto;
    }

    .wrapper .search-wrap .search-con .logo-box {
        position: relative; /*相对定位*/
        top: -10px; /*基于自身向上移动10px*/
        display: inline-block; /*基于下基准线对齐*/
        width: 200px;
        height: 120px;
        background-size: 100% 100%;

    }

    .wrapper .search-wrap .search-con .search-box {
        display: inline-block;
        width: 600px;
        height: 120px;
        vertical-align: top;
        position: absolute;
        right: 50px;
    }

    .wrapper .search-wrap .search-con .search-box .search-t {
        width: 600px;
        height: 50px;
    }

    .wrapper .search-wrap .search-con .search-box .search-t .search-panel {
        width: 600px;
        height: 49px;
        position: -webkit-sticky;
        position: sticky;
        top: 0;

    }


    .wrapper .search-wrap .search-con .search-box .search-t .search-panel form .btn {
        width: 74px;
        height: 45px;
        position:absolute;
        top: 0;
        right: 0;
        border-top-right-radius: 20px;
        border-bottom-right-radius: 20px;
        overflow: hidden;
        border: none;
    }

    .wrapper .search-wrap .search-con .search-box .search-t .search-panel form .btn button {
        width: 100%;
        height: 100%;
        border-top-right-radius: 20px;
        border-bottom-right-radius: 20px;
        /*background: linear-gradient(to right, #6dd5fa 0%, #2980b9 100%);!*css3线性渐变*!*/
        background-color: #1989fa;
        border: none;
        color: #fff;
        font-weight: 700;
        font-size: 16px;
        cursor: pointer; /*鼠标放上有小手显示*/

    }

    .wrapper .search-wrap .search-con .search-box .search-t .search-panel .search-inp-box {
        width: 540px;
        height: 45px;
        border: 2px solid #00eeff;
        border-top-left-radius: 20px;
        border-bottom-left-radius: 20px;
        overflow: hidden;
    }

    .wrapper .search-wrap .search-con .search-box .search-t .search-panel .search-inp {
        width: 551px;
        height: 45px;
        overflow: hidden;
    }

    .wrapper .search-wrap .search-con .search-box .search-t .search-panel .search-inp input {
        width: 530px;
        height: 45px;
        padding: 6px 16px;
        border: none;
        outline: 0;
        text-indent: 10px;
    }



    .wrapper .search-wrap .search-con .search-box .search-bl {
        width: 627px;
        height: 20px;
    }

    .wrapper .search-wrap .search-con .search-box .search-bl a{
        font-size: 12px;
        margin-right:8px;
        color: #666;
    }

    .wrapper .search-wrap .search-con .search-box .search-bl a.active,
    .wrapper .search-wrap .search-con .search-box .search-bl a:hover {
        color: #ff5000;
    }
    .wrapper .screen-nav {
        width: 1250px;
        height: 40px;
        /*background: linear-gradient(to right, #6dd5fa 0%, #2980b9 100%);*/
        margin: 0 auto; /*实现左右居中*/
    }

    .wrapper .screen-nav .screen-nav-con {
        width: 100%;

    }


    .wrapper .screen-nav .screen-nav-con .tab{
        float: left;
        width: 100px;
        height: 40px;
    }
    .wrapper .screen-nav .screen-nav-con .mulu{
        float: left;
        width: 200px;
        height: 40px;
    }

    .wrapper .screen-nav .screen-nav-con ul li {
        float: left;
        margin:0 3px;
        padding: 0 4px;
        position: relative;
        width: 100px;
        font-size: 18px;
        text-align: center;
    }

    .wrapper .screen-nav .screen-nav-con ul li a {
        line-height: 40px;
        color: black;
        font-weight: 500;
    }

    .wrapper .screen-nav .screen-nav-con ul li a:hover{
        color: #66ccff
    }

    .dropbtn {
        /*background-color: #2980b9;*/
        /*background: linear-gradient(to right, #6dd5fa 0%, #2980b9 100%);*/
        background-color: #1989fa;
        color: white;
        padding: 10px;
        font-size: 18px;
        cursor: pointer;
        height: 40px;
        border: none;
        width: 200px;
        border-top-left-radius: 10px;
    }

    .dropdown {
        /*position: absolute;*/
        display: inline-block;
    }

    .dropdown-content {
        z-index:10;
        display: none;
        position: absolute;
        background-color: #f9f9f9;
        min-width: 160px;
        box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    }

    .dropdown-content a {
        color: black;
        padding: 12px 16px;
        text-decoration: none;
        display: block;
    }

    .dropdown-content a:hover {background-color: #2b2e33}

    .dropdown:hover .dropdown-content {
        display: block;
    }

    .dropdown:hover .dropbtn {
        background-color: #6dd5fa;
    }
</style>
<div class="wrapper">
    <div class="search-wrap">
        <div class="search-con">
            <div class="logo-box">
                <a href="">
                    <img src="img/fore/logo4.png" class="logo-box">
                </a>
            </div>
            <div class="search-box">
                <div class="search-t">

                    <div class="search-panel">
                        <form action="/searchProduct">
                            <div class="btn">
                                <button type="submit" class="btn">搜索</button>
                            </div>
                            <div class="search-inp-box">
                                <div class="search-inp">
                                    <!-- placeholder为灰色字体 -->
                                    <input type="text" name="keyword" placeholder="搜索商品">
                                </div>
                            </div>
                        </form>

                    </div>
                </div>
                <div class="search-bl">
                    &nbsp;&nbsp;
                    <a href="/searchProduct?keyword=连衣裙" class="active">连衣裙</a>
                    <a href="/searchProduct?keyword=四件套">四件套</a>
                    <a href="/searchProduct?keyword=T恤">潮流T恤</a>
                    <a href="/searchProduct?keyword=女鞋">时尚女鞋</a>
                    <a href="/searchProduct?keyword=短裤" class="active">短裤</a>
                    <a href="/searchProduct?keyword=半身裙">半身裙</a>
                    <a href="/searchProduct?keyword=男士外套">男士外套</a>
                    <a href="/searchProduct?keyword=墙纸">墙纸</a>
                </div>
            </div>

        </div>
    </div>
</div>
<div class="wrapper">
    <div class="screen-nav">
        <div class="screen-nav-con">
            <ul class="mulu">
                <div class="dropdown">
                    <button class="dropbtn">全部分类</button>
<%--                    <div class="dropdown-content">--%>
<%--                        <a href="">A</a>--%>
<%--                        <a href="">B</a>--%>
<%--                        <a href="">C</a>--%>
<%--                    </div>--%>
                </div>
            </ul>
            <ul class="">
                <li><a href="#nowhere">抢金币</a> </li>
                <li><a href="#nowhere">金币签到</a> </li>
                <li><a href="#nowhere">充值</a> </li>
                <li><a href="#nowhere">超级单品</a> </li>
                <li><a href="#nowhere">超级品牌</a> </li>
                <li><a href="#nowhere">超级品类</a> </li>
                <li><a href="#nowhere">领券中心</a> </li>
            </ul>
        </div>
    </div>

</div>