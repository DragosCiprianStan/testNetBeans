<%-- 
    Document   : menu
    Created on : Dec 30, 2022, 6:48:34 PM
    Author     : Retro
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-expand-md navbar-dark bg-primary">
    <div class="container-fluid">
        <a class="navbar-brand" href="${pageContext.request.contextPath}">NextGen POS</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav me-auto mb-2 mb-md-0">
                <c:if test="${pageContext.request.isUserInRole('AdminRole')||pageContext.request.isUserInRole('DirectorRole')}">
                    <li class="nav-item ${activePage eq 'Categories' ? ' active' : ''}">
                        <a class="nav-link " href="${pageContext.request.contextPath}/Category">Categories</a>
                    </li>
                    <li class="nav-item ${activePage eq 'Products' ? ' active' : ''}">
                        <a class="nav-link " href="${pageContext.request.contextPath}/Products">Products</a>
                    </li>
                </c:if>
                <c:if test="${pageContext.request.isUserInRole('AdminRole')}">
                    <li class="nav-item ${activePage eq 'Users' ? ' active' : ''}">
                        <a class="nav-link " href="${pageContext.request.contextPath}/Users">Users</a>
                    </li>
                </c:if>
                <c:if test="${pageContext.request.isUserInRole('DirectorRole')}">
                    <li class="nav-item ${activePage eq 'UsersValidation' ? ' active' : ''}">
                        <a class="nav-link " href="${pageContext.request.contextPath}/UsersValidation">Users Validation</a>
                    </li>
                    <li class="nav-item ${activePage eq 'Sales Report' ? ' active' : ''}">
                        <a class="nav-link " href="${pageContext.request.contextPath}/SalesReport">Sales Report</a>
                    </li>
                </c:if>
                <c:if test="${pageContext.request.isUserInRole('CasierRole')}">
                    <li class="nav-item ${activePage eq 'Work' ? ' active' : ''}">
                        <a class="nav-link " href="${pageContext.request.contextPath}/Work">Work</a>
                    </li>
                </c:if>
                <c:if test="${!pageContext.request.isUserInRole('AdminRole')&&!pageContext.request.isUserInRole('DirectorRole')}">
                    <li class="nav-item ${activePage eq 'ViewProducts' ? ' active' : ''}">
                        <a class="nav-link " href="${pageContext.request.contextPath}/Products">Products</a>
                    </li>
                </c:if>
            </ul>
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <c:choose>
                        <c:when test="${pageContext.request.getRemoteUser() == null}">
                            <a class="nav-link" href="${pageContext.request.contextPath}/Login">Login</a>
                        </c:when>
                        <c:otherwise>
                            <a class="nav-link" href="${pageContext.request.contextPath}/Logout">Logout</a>
                        </c:otherwise>
                    </c:choose>
                </li>
            </ul>

        </div>
    </div>
</nav>
