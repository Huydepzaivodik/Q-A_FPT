

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>

            .mb-3 {
                margin-bottom: 1rem!important;
            }

            .form-floating {
                position: relative;
            }
            div {
                display: block;
            }

            .text-center {
                text-align: center!important;
            }
            form {
                display: block;
                margin-top: 0em;
            }
            .text-center {
                text-align: center!important;
            }

            .form-floating>.form-control:not(:placeholder-shown) {
                padding-top: 1.625rem;
                padding-bottom: 0.625rem;
            }
            .form-floating>.form-control, .form-floating>.form-control-plaintext {
                padding: 1rem 0.75rem;
            }
           
            .form-control, .form-control:focus {
                transition: all .1s linear;
                box-shadow: none;
                min-height: auto;
                display: block;
                width: 700px;
                margin-left: 250px;
                font-size: 1rem;
                font-weight: 400;
                color: #4f4f4f;
                background-color: #fff;
                background-clip: padding-box;
                border: 1px solid #bdbdbd;
                appearance: none;
                border-radius: 0.25rem;
            }



            .form-floating>.form-control:not(:placeholder-shown)~label, .form-floating>.form-select~label {
                opacity: .65;
                transform: scale(.85) translateY(-0.5rem) translateX(0.15rem);
            }

            .form-floating>label {
                margin-left: 250px;
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                padding: 1rem 0.75rem;
                overflow: hidden;
                text-align: start;
                text-overflow: ellipsis;
                white-space: nowrap;
                pointer-events: none;
                border: 1px solid transparent;
                transform-origin: 0 0;
                transition: opacity .1s ease-in-out,transform .1s ease-in-out;
            }

            label {
                display: inline-block;
            }
            label {
                margin-bottom: 0.5rem;
            }
            label {
                cursor: default;
            }

            .col {
                margin-top: 8px;
                margin-left: 200px;
                flex: 1 0 0%;
                position: relative;
                min-height: 1px;
                font-size: 13px;
            }
            a{
                text-decoration: none;
            }

            .btn:not(:disabled):not(.disabled) {
                cursor: pointer;
            }
            .btn-block {
                --mdb-btn-margin-top: 0.5rem;
                display: block;
                width: 100%;
            }
            .btn-primary {
                --mdb-btn-bg: #3b71ca;
                --mdb-btn-color: #fff;
                --mdb-btn-box-shadow: 0 4px 9px -4px #3b71ca;
                --mdb-btn-hover-bg: #386bc0;
                --mdb-btn-hover-color: #fff;
                --mdb-btn-focus-bg: #386bc0;
                --mdb-btn-focus-color: #fff;
                --mdb-btn-active-bg: #3566b6;
                --mdb-btn-active-color: #fff;
            }

            .btn {
                margin-left: 220px;
                width: 800px;
                --mdb-btn-padding-top: 0.625rem;
                --mdb-btn-padding-bottom: 0.5rem;
                --mdb-btn-border-width: 0;
                --mdb-btn-border-color: none;
                --mdb-btn-border-radius: 0.25rem;
                --mdb-btn-box-shadow: 0 4px 9px -4px rgba(0,0,0,0.35);
                --mdb-btn-hover-box-shadow: 0 8px 9px -4px rgba(0,0,0,0.15),0 4px 18px 0 rgba(0,0,0,0.1);
                --mdb-btn-focus-box-shadow: 0 8px 9px -4px rgba(0,0,0,0.15),0 4px 18px 0 rgba(0,0,0,0.1);
                --mdb-btn-active-box-shadow: 0 8px 9px -4px rgba(0,0,0,0.15),0 4px 18px 0 rgba(0,0,0,0.1);
                padding-top: var(--mdb-btn-padding-top);
                padding-bottom: var(--mdb-btn-padding-bottom);
                text-transform: uppercase;
                vertical-align: bottom;
                border: 0;
                border-radius: var(--mdb-btn-border-radius);
                box-shadow: var(--mdb-btn-box-shadow);
            }

            .mb-4 {
                margin-bottom: 1.5rem!important;
            }

            .facebook{
                width: 1.6%;
                margin-right: 20px;
            }
            .twitter{
                width: 2%;

            }
            h4{
                margin-left: 200px;
            }
            .backToHome{
                margin-left: 100px;
            }

        </style>

    </head>
    <body>

        <%@include file="topBar.jsp" %>
        
        <div class="container" style="margin-top: 40px">
            <form action="loginAd" method="post" >
                <div class="text-center">
                    <h1>Admin SignIn</h1>
                </div>

                <div class="form-floating mb-3">
                    <input type="email" name="email" class="form-control" id="floatingInput">
                    <label for="floatingInput"> Email address</label>
                </div>

                <div class="form-floating mb-4">
                    <input type="password" name="password" minlength="6" class="form-control" id="floatingPassword">
                    <label for="floatingPassword">Password</label>
                </div>
                <h4 style="color: red; font-family: sans-serif">${mess} </h4>

                <div class="row mb-4">
                    <div class="col">
                        <a href="signIn.jsp">Back</a>
                    </div>
                    <div class="col">
                        <a href="#">Forgot password</a>
                    </div>
                </div>
                <button type="submit" class="btn btn-block mb-4">Sign In</button>

                <div class="text-center">
                    <p>Or sign up with:</p>

                    <a href="#"> <img class="facebook" src="fb.png" alt="alt"/></a>
                    <a href="#" ><img  class="twitter" src="twitter-removebg-preview.png" alt="alt"/></a>                 
                </div>
            </form>
        </div>




    </body>
</html>
