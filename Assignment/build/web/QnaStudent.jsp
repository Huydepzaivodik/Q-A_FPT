<%-- 
    Document   : QnaStudent
    Created on : Jul 10, 2023, 4:28:21 PM
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

            .backToHome{
                padding-top: 4px;
                padding-left: 8px;
                font-family: sans-serif;
                font-size: 11px;
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
                height: 30px;
                background-color: #6b90da;
                font-weight: normal;
            }

            textarea {
                border: none;
                overflow: auto;
                outline: none;
                font-family: sans-serif;
                -webkit-box-shadow: none;
                -moz-box-shadow: none;
                box-shadow: none;
            }

            * {
                box-sizing: border-box;
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
            input{
                border: none;
                margin-top: 0.5rem;

            }
            .ask{
                margin-left: 450px;
            }


            input.ask::placeholder {
                font-weight: bold;
                opacity: 0.5;
                color: black;
                border: solid 1px;            
            }



        </style>


    </head>
    <body>
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
                                    <img class="oip" src="apple.jpg" style="width: 120px;
                                         height: 40px" alt="apple store">
                                </a>
                            </td>
                            <td>
                                <a href="https://play.google.com/store/apps/details?id=com.fuct">
                                    <img class="gg" src="gg.jpg" style="width: 120px;
                                         height: 40px" alt="google store">
                                </a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <div  class="sticky">
            <div  id="ctl00_divUser" style="float: right;
                  margin-right: 5px;">
                <a href="#"> 
                    <span id="ctl00_lblLogIn" class="label label-success">${account_name} </span> 
                </a>
                <span id="ctl00_lblCampusName" class="label label-success"> Campus:${department} </span>
            </div>

            <div style="float: left" class="backToHome"><a href="login?acc=${account_name}&dep=${department}&mod=1" >
                    Back</a>&nbsp;|&nbsp;<b>Q&N</b>
            </div>
        </div>

        <h1 style="margin-left: 380px">Send Question To Administrator</h1>         


        <h3 style="color: red; margin-left: 100px" >${mess}</h3>
        <form action="qnaStu" method="post">
            <table>
                <tbody>
                    <tr>
                        <th>Last question</th>
                        <th>Answer from Administrator</th>
                    </tr>
                </tbody>
                <tbody>
                    <c:forEach items="${qnaList}" var="q">                      
                        <c:choose>
                            <c:when test="${q.getAccount_id() eq account.getAccount_id()}">
                                <tr>
                                    <td>${q.getQuestion()}</td>
                                    <td>${q.getAnswer()}</td>
                                </tr>
                            </c:when>
                        </c:choose>
                    </c:forEach>

                </tbody>             
            </table>
            <br>

            <input class="ask" type="text" name="question" placeholder="Your question?">

            <button class="button">Send</button> 
            <input type="hidden" name="account_name" value="${account_name}">
        </form>





    </body>
</html>
