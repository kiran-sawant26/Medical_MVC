<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Brand</title>
    <meta charset="UTF-8" />

    <link rel="icon" href="${pageContext.request.contextPath}/resources/assets/images/favicon-32x32.png" type="image/png" />
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <link href="${pageContext.request.contextPath}/resources/assets/css/app.css" rel="stylesheet" />
</head>
<body>

<jsp:include page="module/header.jsp"></jsp:include>

<div class="page-wrapper">
    <div class="page-content">
        <div class="container mt-5">
            <div class="card shadow">
                <div class="card-body">
                    <h4 class="mb-4">Edit Brand</h4>

                    <form action="${pageContext.request.contextPath}/brands/update" method="post">
                        <!-- Hidden input for brand ID -->
                        <input type="hidden" name="id" value="${brand.id}" />

                        <div class="mb-3">
                            <label for="brandName" class="form-label">Brand Name</label>
                            <input type="text" class="form-control" id="brandName" name="brandName"
                                   value="${brand.brandName}" required />
                        </div>

                        <div class="d-flex justify-content-end">
                            <a href="${pageContext.request.contextPath}/brands" class="btn btn-secondary me-2">Cancel</a>
                            <button type="submit" class="btn btn-success">Update Brand</button>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
