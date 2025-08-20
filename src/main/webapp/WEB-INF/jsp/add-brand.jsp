<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Add Brand</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f2f5;
            padding: 40px;
        }

        .form-container {
            background-color: #fff;
            padding: 25px 30px;
            max-width: 450px;
            margin: 0 auto;
            border: 1px solid #ddd;
            border-radius: 8px;
            box-shadow: 0 2px 6px rgba(0,0,0,0.1);
        }

        h3 {
            text-align: center;
            margin-bottom: 20px;
        }

        .form-label {
            display: block;
            margin-bottom: 6px;
            font-weight: bold;
        }

        .form-control {
            width: 100%;
            padding: 8px 10px;
            font-size: 14px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .btn {
            padding: 8px 16px;
            border: none;
            font-size: 14px;
            border-radius: 4px;
            cursor: pointer;
        }

        .btn-success {
            background-color: #28a745;
            color: white;
        }

        .btn-secondary {
            background-color: #6c757d;
            color: white;
            margin-left: 10px;
            text-decoration: none;
            display: inline-block;
        }

        .alert {
            padding: 10px;
            margin-bottom: 15px;
            border-radius: 4px;
        }

        .alert-success {
            background-color: #d4edda;
            border: 1px solid #c3e6cb;
            color: #155724;
        }

        .alert-danger {
            background-color: #f8d7da;
            border: 1px solid #f5c6cb;
            color: #721c24;
        }
    </style>
</head>
<body>

<jsp:include page="module/header.jsp"></jsp:include>

<!-- ✅ Main Page Content -->
<div class="page-wrapper">
    <div class="page-content">
        <div class="container-fluid">

            <div class="form-container">
                <h3>Add Brand</h3>

                <c:if test="${not empty message}">
                    <div class="alert ${message.contains('successfully') ? 'alert-success' : 'alert-danger'}">
                        <strong>${message}</strong>
                    </div>
                </c:if>

                <form action="/brands/save" method="post">
                    <label for="name" class="form-label">Brand Name</label>
                    <input type="text" id="name" name="brandName" class="form-control" required />

                    <button type="submit" class="btn btn-success">Save</button>
                    <a href="${pageContext.request.contextPath}/brands" class="btn btn-secondary">Cancel</a>
                </form>
            </div>

        </div>
    </div>
</div>

</body>
</html>
