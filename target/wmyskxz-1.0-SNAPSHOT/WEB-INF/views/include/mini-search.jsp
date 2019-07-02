<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>

<%--<style>--%>
<%--    div.headerCon {--%>
<%--        width: auto;--%>
<%--        height: 120px;--%>
<%--        padding: 30px 0 0;--%>
<%--        margin: 0 auto;--%>
<%--        display: block;--%>
<%--    }--%>

<%--    div.fullSearchDiv {--%>
<%--        width: 550px;--%>
<%--        height: 40px;--%>
<%--        position: relative;--%>
<%--        padding: 1px;--%>
<%--        margin: 10px 25px 10px auto;--%>
<%--        right: -5px;--%>
<%--    }--%>

<%--    .searchFrom {--%>
<%--        background-color: #FF0036;--%>
<%--        width: 460px;--%>
<%--        padding: 1px;--%>
<%--        height: 40px;--%>
<%--        display: block;--%>
<%--    }--%>

<%--    .searchFrom input {--%>
<%--        width: 367px !important;--%>
<%--        padding: 5px 3px 5px 5px;--%>
<%--        border: 1px solid transparent;--%>
<%--        height: 34px;--%>
<%--        margin: 2px;--%>
<%--        font-size: 15px;--%>
<%--        outline: 0;--%>
<%--        /*position: relative;*/--%>
<%--    }--%>

<%--    button.searchButton {--%>
<%--        width: 80px;--%>
<%--        border: 1px solid transparent;--%>
<%--        background-color: #FF0036;--%>
<%--        color: white;--%>
<%--        height: 34px;--%>
<%--        font-size: 16px;--%>
<%--        font-weight: bold;--%>
<%--        cursor: pointer;--%>
<%--    }--%>

<%--    button.shopButton {--%>
<%--        width: 86px;--%>
<%--        border: 1px solid transparent;--%>
<%--        background-color: #333;--%>
<%--        color: white;--%>
<%--        height: 40px;--%>
<%--        font-size: 16px;--%>
<%--        font-weight: bold;--%>
<%--        cursor: pointer;--%>
<%--        position: absolute;--%>
<%--        margin: 1px auto;--%>
<%--        top: 0;--%>
<%--        right: 0;--%>
<%--    }--%>

<%--    div.searchBelow {--%>
<%--        margin-top: 3px;--%>
<%--        margin-left: -10px;--%>
<%--    }--%>

<%--    div.searchBelow span {--%>
<%--        color: #999;--%>
<%--    }--%>

<%--    div.searchBelow a {--%>
<%--        padding: 0px 10px 0px 10px;--%>
<%--        font-size: 14px;--%>
<%--    }--%>

<%--    div.searchBelow a:hover {--%>
<%--        color: #999;--%>
<%--        text-decoration: underline;--%>
<%--    }--%>

<%--    .logo {--%>
<%--        position: absolute;--%>
<%--        margin-left: 15px;--%>
<%--        top: 75px;--%>
<%--        z-index: 99;--%>
<%--    }--%>

<%--    .logo img {--%>
<%--        height: 30px;--%>
<%--        width: 145px;--%>
<%--    }--%>
<%--</style>--%>

<%--<!-- 搜索栏 -->--%>
<%--<div class="workArea">--%>
<%--    <div class="headerCon">--%>
<%--        <div class="logo">--%>
<%--            <a href="/home">--%>
<%--                <img src="img/fore/tmallLogo.png" id="logo">--%>
<%--            </a>--%>
<%--        </div>--%>
<%--        <div class="fullSearchDiv">--%>
<%--            <form class="searchFrom" action="searchProduct">--%>
<%--                <input type="text" value="${param.keyword}" placeholder="搜索 商品/品牌/店铺" name="keyword">--%>
<%--                <button class="searchButton" type="submit">搜索</button>--%>
<%--            </form>--%>
<%--            <div>--%>
<%--                <button class="shopButton" type="button">搜店铺</button>--%>
<%--            </div>--%>
<%--            <div class="searchBelow">--%>
<%--				<span> <a href="#nowhere"> 手机 </a> <span>|</span>--%>
<%--				</span> <span> <a href="#nowhere"> 小米mix2s </a> <span>|</span>--%>
<%--				</span> <span> <a href="#nowhere"> 小米 </a> <span>|</span>--%>
<%--				</span> <span> <a href="#nowhere"> mix2s </a></span><span>|</span>--%>
<%--                </span> <span> <a href="#nowhere"> 小米6 </a></span><span>|</span>--%>
<%--                </span> <span> <a href="#nowhere"> 高通骁龙手机 </a></span><span>|</span>--%>
<%--                </span> <span> <a href="#nowhere"> 小米手机 </a></span>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>
<%--<div style="clear: both;"></div>--%>
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
        /*background: linear-gradient(to right, #00eeff 0, #00ffaa 100%);!*css3线性渐变*!*/
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
</style>
<div class="wrapper">
    <div class="search-wrap">
        <div class="search-con">
            <div class="logo-box">
                <a href="/home">
                    <img src="img/fore/logo4.png" class="logo-box">
                </a>
            </div>
            <div class="search-box">
                <div class="search-t">

                    <div class="search-panel">

                        <form action="">
                            <div class="btn">
                                <button class="btn">搜索</button>
                            </div>
                            <div class="search-inp-box">
                                <div class="search-inp">
                                    <!-- placeholder为灰色字体 -->
                                    <input type="text" value="${param.keyword}" name="keyword" placeholder="搜索商品">
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