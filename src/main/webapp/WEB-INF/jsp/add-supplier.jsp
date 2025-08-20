<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Supplier</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            min-height: 100vh;
            margin: 0;
            background-color: #f8f9fa;
        }
        .main-content {
            flex-grow: 1;
            padding: 75px;
        }
        .form-container {
            max-width: 600px;
            margin: auto;
            background: white;
            padding: 25px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgb(0 0 0 / 0.1);
            display: flex;
            flex-direction: column;
            justify-content: center;
            min-height: calc(100vh - 100px); /* adjust for header/footer if needed */
        }
    </style>
</head>
<body>

    <!-- Header include -->
    <jsp:include page="module/header.jsp" />

    <!-- Main Content -->
    <div class="main-content">
        <div class="form-container">
            <h3 class="mb-4 text-center">Add New Supplier</h3>
            <form action="saveSupplier" method="post">

                <div class="mb-3">
                    <label for="name" class="form-label">Supplier Name</label>
                    <input type="text" name="name" id="name" class="form-control" 
                           placeholder="Enter supplier name" required
                           pattern="[A-Za-z\s]+" title="Please enter only letters and spaces" />
                </div>

                <div class="mb-3">
                    <label for="contact" class="form-label">Contact</label>
                    <input type="text" name="contact" id="contact" class="form-control" 
                           placeholder="Enter contact number" required
                           pattern="[0-9]{10}" title="Enter a 10-digit mobile number" />
                </div>

                <div class="mb-3">
                    <label for="address" class="form-label">Address</label>
                    <textarea name="address" id="address" class="form-control" 
                              placeholder="Enter address" rows="3" required></textarea>
                </div>

                <div class="mb-3">
                    <label for="email" class="form-label">Email</label>
                    <input type="email" name="email" id="email" class="form-control" 
                           placeholder="Enter email" required />
                </div>

                <div class="d-grid">
                    <button type="submit" class="btn btn-success">Save Supplier</button>
                </div>

            </form>
        </div>
    </div>

    <!-- Bootstrap JS Bundle -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
