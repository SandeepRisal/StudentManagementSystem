<%--<%@ page isELIgnored="false" %>--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="components/header.jsp"%>

<c:if test="${firstName==null}">
    <c:redirect url="/login" />
</c:if>

<div class="display-body" style="background-image: linear-gradient(to right, #c7c5f4, #b2aeeb, #9e98e1, #8a81d7, #776bcc);">
    <div class="container">
        <div class="screen">
            <h2>Welcome!</h2>
            <div class="screen__content">
                <div class="login">
                    <p class="display_name"><c:out value="${firstName}"/></p>
                    <p class="display_name"><c:out value="${lastName}"/></p>
                    <a href="${pageContext.request.contextPath}/logout" class="button login__submit" >
                        <span class="button__text">Log Out</span>
                        <i class="button__icon fas fa-chevron-right"></i>
                    </a>
                </div>

            </div>
            <div class="screen__background">
                <span class="screen__background__shape screen__background__shape4"></span>
                <span class="screen__background__shape screen__background__shape3"></span>
                <span class="screen__background__shape screen__background__shape2"></span>
                <span class="screen__background__shape screen__background__shape1"></span>
            </div>
        </div>
    </div>
</div>


<%@include file="components/footer.jsp"%>
