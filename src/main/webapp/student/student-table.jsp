<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="../fragments/header.jsp"%>

<div class="wrapper">
  <nav class="side-nav">
    <ul class="nav-menu">
      <div class="logo">
        <img src="https://iimscollege.edu.np/wp-content/uploads/2019/03/logo.png" alt="Logo" class="img-fluid">
      </div>
      <li class="nav-item"><a href="${pageContext.request.contextPath}/dashboard"><i class="fas fa-tachometer-alt"></i><span class="menu-text">Dashboard</span></a></li>
      <li class="nav-item active"><a href="${pageContext.request.contextPath}/students"><i class="fas fa-user"></i><span class="menu-text">Students</span></a></li>
      <li class="nav-item"><a href="${pageContext.request.contextPath}/programmes"><i class="fas fa-file-alt"></i><span class="menu-text">Programme</span></a></li>
      <li class="nav-item"><a href="#"><i class="fas fa-play "></i><span class="menu-text">Courses</span></a></li>
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
          <a href="${pageContext.request.contextPath}/add" class="btn btn-primary-light">Add</a>
        </div>
        <div class="card">
          <table class="table table-stripped">
            <tbody>
            <tr>
              <th>ID</th>
              <th>Name</th>
              <th>Address</th>
              <th>Contact</th>
              <th>Email</th>
              <th>Action</th>
            </tr>
            <tr>
              <td>1</td>
              <td>Liza Maharjan</td>
              <td>Pulchowk</td>
              <td>9889988998</td>
              <td>liza@mail.com</td>
              <td>
                <div>
                  <a href="" class="btn btn-info">Edit</a>
                  <a href="" class="btn btn-danger">Delete</a>
                </div>
              </td>
            </tr>
            <tr>
              <td>1</td>
              <td>Liza Maharjan</td>
              <td>Pulchowk</td>
              <td>9889988998</td>
              <td>liza@mail.com</td>
              <td>
                <div>
                  <a href="" class="btn btn-info">Edit</a>
                  <a href="" class="btn btn-danger">Delete</a>
                </div>
              </td>
            </tr>
            <tr>
              <td>1</td>
              <td>Liza Maharjan</td>
              <td>Pulchowk</td>
              <td>9889988998</td>
              <td>liza@mail.com</td>
              <td>
                <div>
                  <a href="" class="btn btn-info">Edit</a>
                  <a href="" class="btn btn-danger">Delete</a>
                </div>
              </td>
            </tr>
            <tr>
              <td>1</td>
              <td>Liza Maharjan</td>
              <td>Pulchowk</td>
              <td>9889988998</td>
              <td>liza@mail.com</td>
              <td>
                <div>
                  <a href="" class="btn btn-info">Edit</a>
                  <a href="" class="btn btn-danger">Delete</a>
                </div>
              </td>
            </tr>
            </tbody>
          </table>
        </div>
      </div>
    </section>
  </div>
</div>
<%@include file="../fragments/footer.jsp"%>

