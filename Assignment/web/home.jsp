<%-- 
    Document   : home
    Created on : Jul 2, 2023, 8:18:41 AM
    Author     : Quang Huy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Address,java.util.ArrayList"  %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>


        <style>
            fieldset {
                min-width: 0;
                padding: 0;
                margin: 0;
                border: 0;
            }
            legend {
                display: block;
                width: 100%;
                padding: 0;
                margin-bottom: 20px;
                font-size: 21px;
                line-height: inherit;
                color: #333;
                border: 0;
                border-bottom: 1px solid #e5e5e5;
            }



            .btn-warning{
                font-family: sans-serif;
                background-image: linear-gradient(to bottom,#f0ad4e 0,#eb9316 100%);
                background-repeat: repeat-x;
                border-color: #e38d13;
                text-shadow: 0 -1px 0 rgba(0,0,0,.2);
                box-shadow: inset 0 1px 0 rgba(255,255,255,.15), 0 1px 1px rgba(0,0,0,.075);
            }

            .label-default {
                background-color: #777;
            }

            .label {
                display: inline;
                padding: 0.2em 0.6em 0.3em;
                font-size: 75%;
                font-weight: 700;
                line-height: 1;
                color: #fff;
                text-align: center;
                white-space: nowrap;
                vertical-align: baseline;
                border-radius: 0.25em;
            }
            .row{
                display: flex;
                width: 1000px;
            }
            .left{

                margin-right: 40px;
            }

            h3 {
                font-size: 24px;
            }
            h3{
                margin-top: 20px;
                margin-bottom: 10px;
            }

            .btn-primary{
                font-family: sans-serif;

                background-image: linear-gradient(to bottom,#337ab7 0,#265a88 100%);
                background-repeat: repeat-x;
                border-color: #245580;
                text-shadow: 0 -1px 0 rgba(0,0,0,.2);
                box-shadow: inset 0 1px 0 rgba(255,255,255,.15), 0 1px 1px rgba(0,0,0,.075);
                color: #fff;
                background-color: #337ab7;
            }
            .btn{
                font-family: sans-serif;

                display: inline-block;
                padding: 6px 12px;
                margin-bottom: 0;
                font-size: 14px;
                font-weight: 400;
                line-height: 1.42857143;
                text-align: center;
                white-space: nowrap;
                vertical-align: middle;
                touch-action: manipulation;
                cursor: pointer

            }
            h3{
                margin-left:200px;
                font-size: 10px;
                font-family: sans-serif;
            }

            div.loginStudent{

                display: flex;
                margin-left: 10px;

            }

            .loginImg{
                width: 45%;
            }

            .FU-address{
                margin-right: 50px;
            }
            .hr1,.hr2{
                margin-left: 100px;
                width: 990px;
                opacity: 0.5;

            }

            .support{
                margin-top: -8px;
                margin-left: 450px;
                font-size: 13px;
                font-family: sans-serif;
            } 
            a{
                text-decoration: none;
            }

        </style>



    </head>
    <body>

        <%
             ArrayList<Address> addressList = new ArrayList<>();
         if (request.getAttribute("addressList")!= null){
            addressList = (ArrayList<Address>)request.getAttribute("addressList");
            }
        %>




        <%@include file="topBar.jsp" %>
        <div class="row">
            <div class="left"  >
                <div style="border: solid 1px #ccc ; height:120px; width: 470px " >
                    <fieldset>
                        <legend class="label label-default  btn-warning">
                            <span>Phụ Huynh</span>
                        </legend>
                        <div style="margin-top: -15px">
                            <a href="#"> <!--  input PHHS -->
                                <h3>
                                    <span class="btn btn-primary">
                                        <b>Đăng Nhập</b>
                                    </span>
                                </h3>
                            </a>
                        </div>
                    </fieldset>

                </div>
            </div>
            <div class="right">
                <div style="border: solid 1px #ccc ; height:120px; width: 470px " >
                    <fieldset>
                        <legend class="label label-default  btn-warning">
                            <span>Sinh viên, Giảng viên, Cán bộ ĐH-FPT</span>
                        </legend>
                        <div style="margin-top: 8px" class="loginStudent">
                            <div class="FU-address">

                                <select name="ctl00$mainContent$ddlCampus" class="btn btn-default">
                                    <option value="Select">Select Campus</option>   
                                    <%
                                        for(Address a : addressList){
                                    %>     
                                    <option value="<%=a.getAddress_id()%>"> <%=a.getDepartment_name()%> </option>
                                    <%
                                        }
                                    %>
                                </select>

                            </div>

                            <div class="login"> 
                                <a href="signIn.jsp"> <!-- Đăng nhập tài khoản -->
                                    <img class="loginImg" src="login.png" alt="alt"/> 
                                </a>
                            </div>
                        </div>
                    </fieldset>
                </div>
            </div>
        </div>
        <br>
        <hr class="hr1">
        <div class="support">
            <table>
                <tr>
                    <th>© Powered by</th>
                    <th><a href="https://fpt.edu.vn/"> FPT University</a></th>
                    <td>|</td>
                    <th><a href="https://cmshn.fpt.edu.vn/">CMS</a></th>
                    <td>|</td>
                    <th><a href="https://library.fpt.edu.vn/">library</a></th>
                    <td>|</td> 
                    <th><a href="https://library.books24x7.com/login.asp?ic=0">book24x7</a></th>
                </tr>

            </table>
        </div>
        <hr class="hr2">
    </body>
</html>
