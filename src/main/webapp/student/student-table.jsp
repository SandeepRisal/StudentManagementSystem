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
      <div class="student-table">
        <div class="d-flex justify-content-between align-items-center">
          <h2 class="section-head">Students</h2>
          <a href="${pageContext.request.contextPath}/students/add" class="btn btn-primary-light">Add</a>
        </div>
        <div class="card">
          <table class="table table-stripped text-center">
            <tbody>
            <tr>
              <th>ID</th>
              <th>Name</th>
              <th>Address</th>
              <th>Contact</th>
              <th>Email</th>
              <th>Fee Status</th>
              <th>Action</th>
            </tr>
            <c:forEach var="student" items="${students}">
              <tr>
                <td><c:out value="${student.student_id}"/></td>
                <td><c:out value="${student.student_name}"/></td>
                <td><c:out value="${student.student_address}"/></td>
                <td><c:out value="${student.student_contact}"/></td>
                <td><c:out value="${student.student_email}"/></td>
                <td>
<%--                  <c:out value="${student.fee_status}"/>--%>
                  <c:if test="${student.fee_status == false ? 'Unpaid' : 'Paid'}"></c:if>
                </td>
                <td>
                  <div>
                    <a href="${pageContext.request.contextPath}/students/<c:out value="${student.student_id}"/>" class="btn btn-success">View</a>
                    <a href="${pageContext.request.contextPath}/students/add?student_id=<c:out value="${student.student_id}"/>" class="btn btn-info">Edit</a>
                    <a href="${pageContext.request.contextPath}/students?student_id=<c:out value="${student.student_id}"/>" class="btn btn-danger">Delete</a>
                  </div>
                </td>
              </tr>
            </c:forEach>
            </tbody>
          </table>
        </div>
      </div>
    </section>
  </div>
</div>
<%@include file="../fragments/footer.jsp"%>

