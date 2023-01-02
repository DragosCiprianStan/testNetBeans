<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemplate pageTitle="Login">
    <c:if test="${message != null}">
        <div class="alert alert-warning" role="alert">
            ${message}
        </div>
    </c:if>
    <form class="form-signin d-flex justify-content-center flex-column" method="POST" action="j_security_check">
        <h1 class="h3 mb-3 font-weight-normal d-flex justify-content-center mt-5 mb-5">Sign in</h1>

        <div class="row d-flex justify-content-center">    
            <div class="col-md-6 mb-3">
                <label for="username" class="sr-only">Username</label>
                <input type="text" id="username" name="j_username" class="form-control w-100" placeholder="Username" required autofocus>
                <label for="password" class="sr-only">Password</label>
                <input type="password" id="password" name="j_password" class="form-control w-100" placeholder="Password" required>        
            </div>
        </div>
    </div>

    <div class="row d-flex justify-content-center">
        <button class="w-50 btn btn-primary btn-lg" type="submit">Sign in</button>
    </div>
</form>
</t:pageTemplate>
