<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Category</title>
    <meta charset="UTF-8">
    <!-- ✅ Bootstrap and Boxicons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet">
</head>
<body>

<!-- ✅ Header Include -->
<jsp:include page="module/header.jsp" />

<!-- ✅ Main Layout -->
<div class="page-wrapper">
    <div class="page-content">
        <div class="container-fluid">

            <!-- ✅ Update Category Card -->
            <div class="container mt-4">
                <div class="card shadow">
                    <div class="card-body p-4">
                        <h5 class="mb-4">Update Category</h5>

                        <!-- ✅ Alert -->
                        <c:if test="${not empty message}">
                            <div class="alert ${message.contains('successfully') ? 'alert-success' : 'alert-danger'}">
                                <strong>${message}</strong>
                            </div>
                        </c:if>

                        <!-- ✅ Update Form -->
                        <form action="${pageContext.request.contextPath}/categories/update" method="post">
                            
                            <!-- Hidden ID -->
                            <input type="hidden" name="id" value="${category.id}" />

                            <!-- Category Name -->
                            <div class="row mb-3">
                                <label class="col-sm-3 col-form-label">Category Name</label>
                                <div class="col-sm-9">
                                    <div class="input-group">
                                        <span class="input-group-text"><i class='bx bx-edit'></i></span>
                                        <input type="text" class="form-control" name="name" value="${category.name}" required />
                                    </div>
                                </div>
                            </div>

                            <!-- Buttons -->
                            <div class="row">
                                <label class="col-sm-3 col-form-label"></label>
                                <div class="col-sm-9">
                                    <div class="d-md-flex d-grid align-items-center gap-3">
                                        <button type="submit" class="btn btn-primary px-4">Update</button>
                                        <a href="${pageContext.request.contextPath}/categories" class="btn btn-light px-4">Cancel</a>
                                    </div>
                                </div>
                            </div>

                        </form>
                        <!-- ✅ End Form -->

                    </div> <!-- card-body -->
                </div> <!-- card -->
            </div> <!-- container -->

        </div>
    </div>
</div>

</body>
</html>
