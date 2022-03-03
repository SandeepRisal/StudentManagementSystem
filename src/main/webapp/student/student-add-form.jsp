<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="../fragments/header.jsp"%>

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
            <li class="nav-item"><a href="${pageContext.request.contextPath}/dashboard"><i class="fas fa-tachometer-alt"></i><span class="menu-text">Dashboard</span></a></li>
            <li class="nav-item active"><a href="${pageContext.request.contextPath}/students"><i class="fas fa-user"></i><span class="menu-text">Students</span></a></li>
            <li class="nav-item"><a href="#"><i class="fas fa-file-alt"></i><span class="menu-text">Programme</span></a></li>
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
                    <div class="card">
                        <h3 class="form-head"><%=request.getAttribute("form-heading")%></h3>
                        <form class="form" action="${pageContext.request.contextPath}/students/add" method="post">
                            <%-- for id--%>
                            <input type="hidden" class="form-control" placeholder="Enter student's id" name="student_id" value="${student.student_id}">
                            <%-- for id--%>
                            <div class="mb-4">
                                <label class="form-label">Name</label>
                                <input type="text" class="form-control" placeholder="Enter student's name" name="student_name" value="${student.student_name}">
                            </div>
                            <div class="mb-4">
                                <label class="form-label">Address</label>
                                <input type="text" class="form-control" placeholder="Enter student's address" name="student_address" value="${student.student_address}">
                            </div>
                            <div class="mb-4">
                                <label class="form-label">Contact</label>
                                <input type="text" class="form-control" placeholder="Enter student's contact" name="student_contact" value="${student.student_contact}">
                            </div>
                            <div class="mb-4">
                                <label class="form-label">Email address</label>
                                <input type="email" class="form-control" id="" placeholder="Enter student's email" name="student_email" value="${student.student_email}">
                            </div>
<%--                            <div class="mb-4">--%>
<%--                                <label class="form-label">Bill Number</label>--%>
<%--                                <select class="form-select" aria-label="Default select example">--%>
<%--                                    <option selected disabled>Select bill</option>--%>
<%--                                    <option value="1">50000</option>--%>
<%--                                    <option value="2">80000</option>--%>
<%--                                </select>--%>
<%--                            </div>--%>
<%--                            <div class="mb-5">--%>
<%--                                <label class="form-label">Bill Status</label>--%>
<%--                                <select class="form-select" aria-label="Default select example">--%>
<%--                                    <option selected disabled>Select bill Status</option>--%>
<%--                                    <option value="1">Paid</option>--%>
<%--                                    <option value="2">Unpaid</option>--%>
<%--                                </select>--%>
<%--                            </div>--%>
                            <button type="submit" class="btn btn-primary float-end"><%=request.getAttribute("action")%></button>
                        </form>
                    </div>
                </div>
            </div>
        </section>
    </div>
</div>
<%@include file="../fragments/footer.jsp"%>

