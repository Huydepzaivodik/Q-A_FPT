<%-- 
    Document   : QnaAdmin
    Created on : Jul 10, 2023, 9:58:12 PM
    Author     : Quang Huy
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <style>
            h1{
                font-family: sans-serif;
                font-weight: 500;
                line-height: 1.1;
                color: inherit;
            }
            div.row{
                display: flex;
                margin-left: 100px;
                width: 1000px;
            }
            .col-md-8{
                margin-right: 300px;
            }
            .auto-style1{
                font-size: 13px;
            }
            img.gg{

            }
            hr.line {
                border: 8px solid gainsboro;
                border-radius: 5px;
                margin-left: 100px;
                width: 1000px;
            }




            div {
                display: block;
            }
            a {
                color: #337ab7;
                text-decoration: none;
            }
            a {
                background-color: transparent;
            }

            .label-success {
                background-color: #5cb85c;
            }
            .label {
                margin-left: 8px;
                display: inline;
                padding: 0.2em 0.6em 0.3em;
                font-size: 60%;
                font-weight: 700;
                line-height: 1;
                color: #fff;
                text-align: center;
                white-space: nowrap;
                vertical-align: baseline;
                border-radius: 0.25em;
            }
            div.sticky {
                position: -webkit-sticky;
                position: sticky;
                top: 0;
                padding-bottom: 22px;
                background-color: gainsboro;
                margin-left: 100px;
                margin-right: 100px;

            }

            table {
                background-color: transparent;
                border-spacing: 0;
                border-collapse: collapse;
                font-size: 13px;
                width: 80%;
                margin-left: 100px;
            }
            tr {
                background-color: #fff;
                border-bottom: 1px solid #f0f0f0;
            }
            tbody th {
                text-align: left;
                padding: 2px;
            }

            th {
                border-right: 1px solid #fff;
                text-transform: uppercase;
                height: 23px;
                background-color: #6b90da;
                font-weight: normal;
            }
            input {
                border: none;
                background: transparent;
            }


            .button {
                margin-top: 20px;
                margin-left: 450px;
                position: relative;
                display: block;
                width: 200px;
                height: 36px;
                border-radius: 18px;
                background-color: orange;
                border: solid 1px transparent;
                color: #fff;
                font-size: 18px;
                font-weight: 300;
                cursor: pointer;
                transition: all .1s ease-in-out;
                &:hover {
                    background-color: transparent;
                    border-color: #fff;
                    transition: all .1s ease-in-out;
                }

            }
        </style>
    </head>


    <body>
        <div class="container">

            <div class="row">
                <div class="col-md-8">
                    <h1>
                        <span>FPT University Academic Portal</span>
                    </h1>
                </div>
                <div class="col-md-4">
                    <table>
                        <tbody>
                            <tr>
                                <td colspan="2" class="auto-style1">
                                    <strong>FAP mobile app(myFAP) is ready at</strong>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="https://apps.apple.com/app/id1527723314">
                                        <img class="oip" src="apple.jpg" style="width: 120px; height: 40px" alt="apple store">
                                    </a>
                                </td>
                                <td>
                                    <a href="https://play.google.com/store/apps/details?id=com.fuct">
                                        <img class="gg" src="gg.jpg" style="width: 120px; height: 40px" alt="google store">
                                    </a>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>


            <div  class="sticky">
                <div  id="ctl00_divUser" style="float: right; margin-right: 5px;">
                    <a href="#"> 
                        <span id="ctl00_lblLogIn" class="label label-success"> ${admin_name}  </span> 
                    </a>
                </div>
                <div style="float: left" class="backToHome">
                    <a href="loginAd?admin_name=${admin_name}&mod=1">
                        <font style="font-family: sans-serif; font-size: 12px; color: black">Back &nbsp;|<b>Q&A</b></font>
                    </a>
                </div>
            </div>
        </div>
        <h2 style="font-family: sans-serif; margin-left: 450px">Answer Question From Student</h2>     
        <h4 style="color: red; margin-left: 100px;">${mess}</h4>

        <table>
            <tbody>
                <tr>
                    <th>Student name</th>
                    <th>Account_name</th>
                    <th>Question</th>
                    <th>Answer</th>
                </tr>
            </tbody>
            <tbody>
                <c:forEach items="${accountList}" var="a">
                    <c:forEach items="${qnaList}" var="q">
                        <c:choose>
                            <c:when test="${a.getAccount_id() eq q.getAccount_id()}">
                                <tr>
                                    <td>${a.getStudent_name()}</td>
                                    <td>${a.getAccount_name()}</td>
                                    <td>${q.getQuestion()}</td>
                                    <td> 
                                        <form method="post" action="qnaAd">
                                            <input type="hidden" name="question" value="${q.getQuestion()}"> 
                                            <input type="text" name="answer" value="${q.getAnswer()}"> 
                                            <input type="hidden" name="admin_name" value="${admin_name}" >
                                            <c:if test="${q.getAnswer()==null}">
                                                <button>Send</button>
                                            </c:if>
                                        </form>
                                    </td> 
                                </tr>
                            </c:when>
                        </c:choose>
                    </c:forEach>
                </c:forEach>              
            </tbody>              
        </table>






    </body>
</html>
