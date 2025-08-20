<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Brand List</title>
    <meta charset="UTF-8" />

    <link rel="icon" href="${pageContext.request.contextPath}/resources/assets/images/favicon-32x32.png" type="image/png" />
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <link href="${pageContext.request.contextPath}/resources/assets/plugins/notifications/css/lobibox.min.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/resources/assets/css/bootstrap-extended.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/resources/assets/css/app.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/resources/assets/css/icons.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/resources/assets/css/dark-theme.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/resources/assets/css/semi-dark.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/resources/assets/css/header-colors.css" rel="stylesheet" />
</head>
<body>

<!-- ✅ Header -->
<jsp:include page="module/header.jsp"></jsp:include>

<!-- ✅ Main Layout -->
<div class="page-wrapper">
    <div class="page-content">
        <div class="container mt-5">
            <div class="card shadow">
                <div class="card-body">
                    <div class="d-lg-flex align-items-center mb-4 gap-3">
                        <h4 class="mb-0">Brand List</h4>
                        <div class="ms-auto">
                            <a href="${pageContext.request.contextPath}/brands/new" class="btn btn-primary">
                                <i class='bx bxs-plus-square'></i> Add Brand
                            </a>
                        </div>
                    </div>

                    <div class="table-responsive">
                        <table class="table table-bordered table-striped mb-0">
                            <thead class="table-dark">
                                <tr>
                                    <th>ID</th>
                                    <th>Brand Name</th>
                                    <th style="width: 160px;">Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="brand" items="${allbrand}">
                                    <tr>
                                        <td>${brand.id}</td>
                                        <td>${brand.brandName}</td>
                                        <td>
                                            <a href="${pageContext.request.contextPath}/brands/edit/${brand.id}" class="btn btn-sm btn-warning">
                                                <i class='bx bx-edit'></i> Edit
                                            </a>
                                            <a href="${pageContext.request.contextPath}/brands/delete/${brand.id}" class="btn btn-sm btn-danger"
                                               onclick="return confirm('Are you sure you want to delete this brand?');">
                                                <i class='bx bx-trash'></i> Delete
                                            </a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>

                </div> <!-- card-body -->
            </div> <!-- card -->
        </div> <!-- container -->
    </div> <!-- page-content -->
</div> <!-- page-wrapper -->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
