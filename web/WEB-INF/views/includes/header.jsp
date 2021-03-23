
<html>
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&display=swap" rel="stylesheet">
    <style>

        *{
            font-family: 'Nanum Gothic', sans-serif;
        }


        #menu {
            height:20px;
            /*width: 800px;*/
        }

        #menu ul{
            list-style: none;
            overflow:hidden;
            background: #64aaff;
            margin : 0;
            padding: 0;
        }

        #menu ul li{
            float: left;
            line-height: 30px;
            vertical-align:middle;
            text-align: center;
            padding-left:45px;
        }
        #menu .menulist{
            text-decoration: none;
            display: block;
            padding: 14px 16px;
            color : #ffffff;
            font-weight : bold;
        }
        #menu .menulist:hover{
            background-color: #8bcbff;
        }

        #frm div {
            padding-bottom: 5px;
            padding-top: 5px;
        }

        input{
            width : 300px;
            height : 30px;
        }

        #btn_ins {
            height : 35px;
            border-radius: 5px;
            border: 1px solid #64aaff;
            color : #107aff;
            background-color: white;
        }

    </style>

    <nav id="menu">
        <div>
            <ul>
                <li><a class="menulist" href="/">조회</a></li>
                <li><a class="menulist" href="/insert">등록</a></li>
            </ul>
        </div>
    </nav>

</head>