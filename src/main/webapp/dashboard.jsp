<%--<%@ page isELIgnored="false" %>--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="fragments/header.jsp"%>

<%--Authentication--%>
<%--<c:if test="${firstName==null}">--%>
<%--    <c:redirect url="/login" />--%>
<%--</c:if>--%>

<div class="wrapper">
    <nav class="side-nav">
        <ul class="nav-menu">
            <div class="logo">
                <img src="https://iimscollege.edu.np/wp-content/uploads/2019/03/logo.png" alt="Logo" class="img-fluid">
            </div>
            <li class="nav-item active"><a href="${pageContext.request.contextPath}/dashboard"><i class="fas fa-tachometer-alt"></i><span class="menu-text">Dashboard</span></a></li>
            <li class="nav-item"><a href="${pageContext.request.contextPath}/students"><i class="fas fa-user"></i><span class="menu-text">Students</span></a></li>
            <li class="nav-item"><a href="${pageContext.request.contextPath}/programmes"><i class="fas fa-file-alt"></i><span class="menu-text">Programme</span></a></li>
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
                <div class="col-lg-8">
                    <div class="student-table">
                        <h2 class="section-head">Students</h2>
                        <div class="card">
                            <table class="table table-stripped">
                                <tbody>
                                <tr>
                                    <th>ID</th>
                                    <th>Name</th>
                                    <th>Address</th>
                                    <th>Contact</th>
                                    <th>Email</th>
                                </tr>
                                <c:forEach var="student" items="${students}">
                                    <tr>
                                        <td><c:out value="${student.student_id}"/></td>
                                        <td><c:out value="${student.student_name}"/></td>
                                        <td><c:out value="${student.student_address}"/></td>
                                        <td><c:out value="${student.student_contact}"/></td>
                                        <td><c:out value="${student.student_email}"/></td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <h2 class="section-head">Programmes</h2>
                    <div class="card">

                        <div>asdasdadasdasd</div>
                    </div>
                </div>
            </div>
            <div class="mt-5">
                <h2 class="section-head mb-3">Programme</h2>
                <div class="row mt-5">
                    <c:forEach var="progeamme" items="${programmes}">
                        <div class="col-md-3">
                            <div class="programme">
                                <div class="programme-image">
                                    <img src="https://iimscollege.edu.np/wp-content/uploads/2019/03/computing.jpg" alt="Programme" class="img-fluid">
                                </div>
                                <div class="programme-info">
                                    <h4><c:out value="${progeamme.programme_name}" /></h4>
                                    <div>
                                        <ul class="d-flex justify-content-between align-items-center">
                                            <li><i class="fa-regular fa-clock me-1"></i> 123 credit hours</li>
                                            <li><i class="fas fa-book me-1"></i> 39 subjects</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </section>
    </div>
</div>

<%@include file="fragments/footer.jsp"%>
