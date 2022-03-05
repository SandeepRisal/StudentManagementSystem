<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="fragments/header.jsp"%>

<%--<c:if test="${firstName!=null}">--%>
<%--    <c:redirect url="/dashboard" />--%>
<%--</c:if>--%>
<%--<div class="login-body" style="background-image: linear-gradient(to right, #c7c5f4, #b2aeeb, #9e98e1, #8a81d7, #776bcc);">--%>
<%--    <div class="container">--%>
<%--        <div class="screen">--%>
<%--            <h2>Login</h2>--%>
<%--            <div class="screen__content">--%>
<%--                <form action="login" method="POST" class="login">--%>
<%--                    <div class="login__field">--%>
<%--                        <i class="login__icon fas fa-user"></i>--%>
<%--                        <input type="text" class="login__input" name="userName" placeholder="Enter Username">--%>
<%--                    </div>--%>
<%--                    <div class="login__field">--%>
<%--                        <i class="login__icon fas fa-lock"></i>--%>
<%--                        <input type="password" class="login__input" name="password" placeholder="Enter Password">--%>
<%--                    </div>--%>
<%--                    <button type="submit" class="button login__submit">--%>
<%--                        <span class="button__text">Log In Now</span>--%>
<%--                        <i class="button__icon fas fa-chevron-right"></i>--%>
<%--                    </button>--%>
<%--                </form>--%>
<%--                <span class="<%=request.getAttribute("error-message") !=null ? "error-msg" : ""%>">--%>
<%--                    <%=request.getAttribute("error-message") != null ? request.getAttribute("error-message") : ""%>--%>
<%--                </span>--%>
<%--            </div>--%>
<%--            <div class="screen__background">--%>
<%--                <span class="screen__background__shape screen__background__shape4"></span>--%>
<%--                <span class="screen__background__shape screen__background__shape3"></span>--%>
<%--                <span class="screen__background__shape screen__background__shape2"></span>--%>
<%--                <span class="screen__background__shape screen__background__shape1"></span>--%>
<%--            </div>--%>

<%--        </div>--%>
<%--        <!--for error message !-->--%>
<%--    </div>--%>
<%--</div>--%>


<div class="container-wrap">
    <div class="forms-container">
        <div class="signin-signup">
            <form action="login" method="POST" class="sign-in-form">
                <span class="<%=request.getAttribute("error-message") !=null ? "error-msg" : ""%>">
                    <%=request.getAttribute("error-message") != null ? request.getAttribute("error-message") : ""%>
                </span>
                <h2 class="title">Login</h2>
                <div class="input-field">
                    <i class="fas fa-user"></i>
                    <input type="text" class="login__input" name="userName" placeholder="Enter Username">
                </div>
                <div class="input-field">
                    <i class="fas fa-lock"></i>
                    <input type="password" class="login__input" name="password" placeholder="Enter Password">
                    <i class="far fa-eye" id="togglePassword" style="cursor: pointer;"></i>
                </div>

                <button type="submit" class="btn btn-primary">Login </button>
            </form>
        </div>
    </div>
    <div class="panels-container">
        <div class="panel left-panel">
            <img src="https://iimscollege.edu.np/wp-content/uploads/2019/03/logo.png" class="image" alt="">
        </div>
    </div>
</div>

<%@include file="fragments/footer.jsp"%>