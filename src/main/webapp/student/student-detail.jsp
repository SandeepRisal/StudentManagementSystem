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
            <li class="nav-item active"><a href="${pageContext.request.contextPath}/students"><i class="fas fa-user"></i><span class="menu-text">Students</span></a></li>
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
            <div class="d-flex justify-content-between align-items-center">
                <h2 class="section-head">Student Info</h2>
                <a href="${pageContext.request.contextPath}/students/edit" class="btn btn-primary-light">Edit</a>
            </div>
            <div class="card">
                <div class="row">
                    <div class="col-md-8">
                        <div class="row">
                            <div class="col-md-4">
                                <img src="https://cdn-icons-png.flaticon.com/512/219/219986.png" alt="Icon" class="img-fluid">
                            </div>
                            <div class="col-md-8">
                                <h3>Liza Maharjan</h3>
                                <ul class="pl-0">
                                    <li>Address: Pulchowk</li>
                                    <li>Contact: 98989898989</li>
                                    <li>Email: liza@mail.com</li>
                                    <li>Bill Amount: 50,000</li>
                                    <li>Bill Status: Paid</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</div>
<%@include file="../fragments/footer.jsp"%>

