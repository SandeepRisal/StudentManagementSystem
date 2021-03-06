<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="../fragments/header.jsp"%>

<%--Authentication--%>
<c:if test="${firstName==null}">
    <c:redirect url="/login" />
</c:if>

<div class="wrapper">
    <nav class="side-nav">
        <ul class="nav-menu">
            <div class="logo">
                <img src="https://iimscollege.edu.np/wp-content/uploads/2019/03/logo.png" alt="Logo" class="img-fluid">
            </div>
            <li class="nav-item"><a href="${pageContext.request.contextPath}/dashboard"><i class="fas fa-tachometer-alt"></i><span class="menu-text">Dashboard</span></a></li>
            <li class="nav-item"><a href="${pageContext.request.contextPath}/students"><i class="fas fa-user"></i><span class="menu-text">Students</span></a></li>
            <li class="nav-item active"><a href="${pageContext.request.contextPath}/programmes"><i class="fas fa-file-alt"></i><span class="menu-text">Programme</span></a></li>
            <li class="nav-item"><a href="${pageContext.request.contextPath}/courses"><i class="fas fa-play "></i><span class="menu-text">Courses</span></a></li>
        </ul>
    </nav>
    <div class="main">
        <header>
            <p>Welcome to Admin Dashboard!</p>
            <div class="dropdown">
                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                    <span>Hello, <c:out value="${firstName}"/></span><i class="fa-regular fa-user"></i>
                </button>
                <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                    <li><a class="dropdown-item" href="${pageContext.request.contextPath}/logout">Logout</a></li>
                </ul>
            </div>
        </header>
        <section>
            <div class="row">
                <div class="col-md-8">
                    <div class="student-table">
                        <div class="d-flex justify-content-between align-items-center">
                            <h2 class="section-head">Programmes</h2>
                        </div>
                        <div class="card">
                            <table class="table table-stripped">
                                <tbody>
                                    <tr>
                                        <th>ID</th>
                                        <th>Programme</th>
                                    </tr>
                                    <c:forEach var="programme" items="${programmes}">
                                    <tr>
                                        <td><c:out value="${programme.programme_id}"/></td>
                                        <td>
                                            <c:if test="${programme.programme_name == 'BIT'}">
                                               BIT - BSC. Hons(Computing)
                                            </c:if>
                                            <c:if test="${programme.programme_name == 'BHM'}">
                                               BHM - Bachelor's in Hotel Management
                                            </c:if>
                                            <c:if test="${programme.programme_name == 'BBA'}">
                                               BBA - Bachelor's in Business Administration
                                            </c:if>
                                            <c:if test="${programme.programme_name == 'MBA'}">
                                               MBA - Master's in Business Administration
                                            </c:if>
                                        </td>
                                    </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</div>
<%@include file="../fragments/footer.jsp"%>

