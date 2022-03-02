<%--<%@ page isELIgnored="false" %>--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="components/header.jsp"%>

<c:if test="${firstName==null}">
    <c:redirect url="/login" />
</c:if>

<div class="wrapper">
    <nav class="side-nav">
        <ul class="nav-menu">
            <div class="logo">
                <img src="https://iimscollege.edu.np/wp-content/uploads/2019/03/logo.png" alt="Logo" class="img-fluid">
            </div>
            <li class="nav-item active"><a href="#"><i class="fas fa-tachometer-alt"></i><span class="menu-text">Dashboard</span></a></li>
            <li class="nav-item"><a href="#"><i class="fas fa-user"></i><span class="menu-text">Users</span></a></li>
            <li class="nav-item"><a href="#"><i class="fas fa-file-alt"></i><span class="menu-text">Posts</span></a></li>
            <li class="nav-item"><a href="#"><i class="fas fa-play "></i><span class="menu-text">Media</span></a></li>
            <li class="nav-item"><a href="#"><i class="fas fa-sign-out-alt"></i><span class="menu-text">exit</span></a></li>
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
                    <div class="col-md-3">
                        <div class="programme">
                            <div class="programme-image">
                                <img src="https://iimscollege.edu.np/wp-content/uploads/2019/03/computing.jpg" alt="Programme" class="img-fluid">
                            </div>
                            <div class="programme-info">
                                <h4>B.Sc. (Hons) Computing</h4>
                                <div>
                                    <ul class="d-flex justify-content-between align-items-center">
                                        <li><i class="fa-regular fa-clock me-1"></i> 123 credit hours</li>
                                        <li><i class="fas fa-book me-1"></i> 39 subjects</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="programme">
                            <div class="programme-image">
                                <img src="https://iimscollege.edu.np/wp-content/uploads/2019/03/computing.jpg" alt="Programme" class="img-fluid">
                            </div>
                            <div class="programme-info">
                                <h4>B.Sc. (Hons) Computing</h4>
                                <div>
                                    <ul class="d-flex justify-content-between align-items-center">
                                        <li><i class="fa-regular fa-clock me-1"></i> 123 credit hours</li>
                                        <li><i class="fas fa-book me-1"></i> 39 subjects</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="programme">
                            <div class="programme-image">
                                <img src="https://iimscollege.edu.np/wp-content/uploads/2019/03/computing.jpg" alt="Programme" class="img-fluid">
                            </div>
                            <div class="programme-info">
                                <h4>B.Sc. (Hons) Computing</h4>
                                <div>
                                    <ul class="d-flex justify-content-between align-items-center">
                                        <li><i class="fa-regular fa-clock me-1"></i> 123 credit hours</li>
                                        <li><i class="fas fa-book me-1"></i> 39 subjects</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="programme">
                            <div class="programme-image">
                                <img src="https://iimscollege.edu.np/wp-content/uploads/2019/03/computing.jpg" alt="Programme" class="img-fluid">
                            </div>
                            <div class="programme-info">
                                <h4>B.Sc. (Hons) Computing</h4>
                                <div>
                                    <ul class="d-flex justify-content-between align-items-center">
                                        <li><i class="fa-regular fa-clock me-1"></i> 123 credit hours</li>
                                        <li><i class="fas fa-book me-1"></i> 39 subjects</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</div>

<%@include file="components/footer.jsp"%>
