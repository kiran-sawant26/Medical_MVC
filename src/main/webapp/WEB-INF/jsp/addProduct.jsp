<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Product</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            display: flex;
            min-height: 100vh;
            margin: 0;
        }
        /* Sidebar */
        .sidebar {
            width: 220px;
            background-color: #343a40;
            padding-top: 20px;
            min-height: 100vh;
        }
        .sidebar a {
            display: block;
            padding: 12px 20px;
            color: #fff;
            text-decoration: none;
            font-weight: 500;
        }
        .sidebar a:hover {
            background-color: #495057;
        }
        /* Main content */
        .main-content {
            flex-grow: 1;
            padding: 20px;
            background-color: #f8f9fa;
        }
        /* Form container */
        .form-container {
            max-width: 600px;
            margin: auto;
            background: white;
            padding: 25px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgb(0 0 0 / 0.1);
        }
    </style>
</head>
<body>

    <!-- Sidebar -->
   <!--  <div class="sidebar">
        <a href="dashboard.jsp">Dashboard</a>
        <a href="addProduct.jsp">Add Product</a>
        <a href="viewProducts.jsp">View Products</a>
        <a href="manageBrands.jsp">Manage Brands</a>
        <a href="logout">Logout</a>
    </div> -->

    <!-- Main Content -->
    <div class="main-content">

        <!-- Header include -->
        <jsp:include page="module/header.jsp" />

        <div class="form-container mt-4">
            <h3 class="mb-4 text-center">Add New Product</h3>
            <form action="AddMedicine" method="post">

                <div class="mb-3">
    <label for="name" class="form-label">Product Name</label>
    <input type="text" class="form-control" id="name" name="name" required
           pattern="[A-Za-z\s]+" 
           title="Please enter only letters and spaces" />
</div>


                <div class="mb-3">
                    <label for="brand" class="form-label">Brand</label>
                    <select class="form-select" id="brand" name="brand" required>
                        <option value="" disabled selected>-- Select Brand --</option>
                        <c:forEach var="b" items="${brands}">
                            <option value="${b.id}">${b.brandName}</option>
                        </c:forEach>
                    </select>
                </div>

                <div class="mb-3">
                    <label for="category" class="form-label">Category</label>
                    <select class="form-select" id="category" name="category" required>
                        <option value="" disabled selected>-- Select Category --</option>
                        <c:forEach var="c" items="${categories}">
                            <option value="${c.id}">${c.name}</option>
                        </c:forEach>
                    </select>
                </div>

                <div class="mb-3">
                    <label for="batchNo" class="form-label">Batch No</label>
                    <input type="text" class="form-control" id="batchNo" name="batchNo" required />
                </div>

                <div class="row g-3">
                    <div class="col-md-6">
                        <label for="mfgDate" class="form-label">MFG Date</label>
                        <input type="date" class="form-control" id="mfgDate" name="mfgDate" required />
                    </div>
                    <div class="col-md-6">
                        <label for="expDate" class="form-label">EXP Date</label>
                        <input type="date" class="form-control" id="expDate" name="expDate" required />
                    </div>
                </div>

                <div class="row g-3 mt-3">
                    <div class="col-md-6">
                        <label for="purchaseRate" class="form-label">Purchase Rate</label>
                        <input type="number" step="0.01" class="form-control" id="purchaseRate" name="purchaseRate" required />
                    </div>
                    <div class="col-md-6">
                        <label for="sellingRate" class="form-label">Selling Rate</label>
                        <input type="number" step="0.01" class="form-control" id="sellingRate" name="sellingRate" required />
                    </div>
                </div>

                <div class="row g-3 mt-3">
                    <div class="col-md-6">
                        <label for="quantity" class="form-label">Quantity</label>
                        <input type="number" class="form-control" id="quantity" name="quantity" required />
                    </div>
                    <div class="col-md-6">
                        <label for="gst" class="form-label">GST (%)</label>
                        <input type="number" step="0.01" class="form-control" id="gst" name="gst" required />
                    </div>
                </div>

                <div class="mb-3 mt-3">
                    <label for="rackNo" class="form-label">Rack No</label>
                    <input type="text" class="form-control" id="rackNo" name="rackNo" required />
                </div>

                <button type="submit" class="btn btn-primary w-100">Save Product</button>
            </form>
        </div>

    </div>

    <!-- Bootstrap JS Bundle -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
