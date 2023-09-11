<%-- 
    Document   : test
    Created on : Jul 3, 2023, 8:01:26 PM
    Author     : Quang Huy
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Teacher,model.Subject,java.util.ArrayList"%>
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

            .listFb{
                margin-left: 100px;
            }

            h2{
                font-family: sans-serif;
            }

            table.tableName {
                background-color: transparent;
                border-spacing: 0;
                border-collapse: collapse;
                width: 90%;
            }
            th {
                text-align: left;
                padding: 2px;
                font-family: sans-serif;
                font-size: 15px;
            }
            th {
                border-right: 1px solid #fff;
                text-transform: uppercase;
                height: 23px;
                background-color: #6b90da;
                font-weight: normal;

            }

            tr {
                background-color: #fff;
                border-bottom: 1px solid #f0f0f0;
            }


            .support1{
                margin-top: 100px;
                margin-left: 200px;
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
                        <span id="ctl00_lblLogIn" class="label label-success"> ${account_name} </span> 
                    </a>
                    <span id="ctl00_lblCampusName" class="label label-success"> Campus: ${department} </span>
                </div>

                <div style="float: left" class="backToHome"><a href="login?acc=${account_name}&dep=${department}&mod=1" >
                        Home</a>|<b>Student feedback</b>
                </div>
            </div>

            <div class="listFb">
                <h2> List of feedbacks for ${account.getStudent_name()} (${account.getAccount_name()})</h2>  
                <table class="tableName" >                   
                    <tbody>
                        <tr>
                            <th>GroupName</th>
                            <th>OpenDay</th>
                            <th>Lecturer</th>
                            <th>Subjects</th>
                            <th>ClosingDate</th>
                            <th>Do Feedback</th>
                        </tr>
                    </tbody>

                    <tbody>
                        <c:forEach items="${teacherList}" var="t">
                            <c:forEach items="${subjectList}" var="s">
                                <c:choose>
                                    <c:when test="${t.getSubject_id() eq s.getSubject_id()}">
                                        <tr>
                                            <td>IS1703</td>
                                            <td>Today</td>
                                            <td>  ${t.getLecturer()}</td>
                                            <td> ${s.getSubject_name()} </td>
                                            <td> </td>
                                            <td><a href="updateFed?teacher_id=${t.getTeacher_id()}&account_name=${account.getAccount_name()}&department=${department}">Edit Comment</a> |
                                                <a href="feedback?subject_id=${s.getSubject_id()}&teacher_id=${t.getTeacher_id()}&account_name=${account.getAccount_name()}&department=${department}">
                                                    Take
                                                </a>
                                            </td>
                                        </tr>
                                    </c:when>
                                </c:choose> 
                            </c:forEach>
                        </c:forEach> 
                    </tbody>  
                </table>

            </div>

            <div class="support1">
                <b>Mọi góp ý, thắc mắc xin liên hệ:</b>
                Phòng dịch vụ sinh viên: Email: 
                <a href="#">dichvusinhvien@fe.edu.vn</a>
                Điện thoại: <b>(024)7308.13.13</b>
            </div>

    </body>
</html>
