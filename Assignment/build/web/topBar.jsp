<%-- 
    Document   : topBar
    Created on : Jul 2, 2023, 10:06:32 AM
    Author     : Quang Huy
--%>

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
                margin-left: 7px;
            }
            a{
                text-decoration: none;
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
            
            <div class="sticky">
                <div style="float: left" class="backToHome">
                    <a  href="listAddress" style="font-family: sans-serif; font-size: 12px" >Home</a>
                </div>
            </div>
        </div>
        <br>



    </body>
</html>
