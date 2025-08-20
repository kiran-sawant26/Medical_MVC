<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Product</title>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet">
</head>
<body>

<!-- ✅ Header Include -->
<jsp:include page="module/header.jsp" />

<!-- ✅ Main Page Layout -->
<div class="page-wrapper">
    <div class="page-content">
        <div class="container-fluid">

            <!-- ✅ Update Product Card -->
            <div class="container mt-4">
                <div class="card shadow">
                    <div class="card-body p-4">
                        <h5 class="mb-4">Update Product</h5>

                        <!-- ✅ Update Product Form -->
                        <form action="updateProduct" method="post">
                        
                        
                            <input type="hidden" name="id" value="${product.id}" />

                            <!-- Name -->
                            <div class="row mb-3">
                                <label class="col-sm-3 col-form-label">Name</label>
                                <div class="col-sm-9">
                                    <div class="input-group">
                                        <span class="input-group-text"><i class='bx bx-package'></i></span>
                                        <input type="text" class="form-control" name="name" value="${product.name}" required>
                                    </div>
                                </div>
                            </div>

                            <!-- Brand -->
                            <div class="row mb-3">
                                <label class="col-sm-3 col-form-label">Brand</label>
                                <div class="col-sm-9">
                                    <div class="input-group">
                                        <span class="input-group-text"><i class='bx bx-buildings'></i></span>
                                        <input type="text" class="form-control" name="brand" value="${product.brand}">
                                    </div>
                                </div>
                            </div>

                            <!-- Category -->
                            <div class="row mb-3">
                                <label class="col-sm-3 col-form-label">Category</label>
                                <div class="col-sm-9">
                                    <div class="input-group">
                                        <span class="input-group-text"><i class='bx bx-category'></i></span>
                                        <input type="text" class="form-control" name="category" value="${product.category}">
                                    </div>
                                </div>
                            </div>

                            <!-- Batch No -->
                            <div class="row mb-3">
                                <label class="col-sm-3 col-form-label">Batch No</label>
                                <div class="col-sm-9">
                                    <div class="input-group">
                                        <span class="input-group-text"><i class='bx bx-barcode'></i></span>
                                        <input type="text" class="form-control" name="batchNo" value="${product.batchNo}">
                                    </div>
                                </div>
                            </div>

                            <!-- MFG Date -->
                            <div class="row mb-3">
                                <label class = "col-sm-3 col-form-label">MFG Date</label>
                                <div class="col-sm-9">
                                    <div class="input-group">
                                        <span class="input-group-text"><i class='bx bx-calendar'></i></span>
                                        <input type="date" class="form-control" name="mfgDate" value="${product.mfgDate}">
                                    </div>
                                </div>
                            </div>

                            <!-- EXP Date -->
                            <div class="row mb-3">
                                <label class="col-sm-3 col-form-label">EXP Date</label>
                                <div class="col-sm-9">
                                    <div class="input-group">
                                        <span class="input-group-text"><i class='bx bx-calendar'></i></span>
                                        <input type="date" class="form-control" name="expDate" value="${product.expDate}">
                                    </div>
                                </div>
                            </div>
                            
                            

                            <!-- Purchase Rate -->
                            <div class="row mb-3">
                                <label class="col-sm-3 col-form-label">Purchase Rate</label>
                                <div class="col-sm-9">
                                    <div class="input-group">
                                        <span class="input-group-text">₹</span>
                                        <input type="number" step="0.01" class="form-control" name="purchaseRate" value="${product.purchaseRate}">
                                    </div>
                                </div>
                            </div>

                            <!-- Selling Rate -->
                            <div class="row mb-3">
                                <label class="col-sm-3 col-form-label">Selling Rate</label>
                                <div class="col-sm-9">
                                    <div class="input-group">
                                        <span class="input-group-text">₹</span>
                                        <input type="number" step="0.01" class="form-control" name="sellingRate" value="${product.sellingRate}">
                                    </div>
                                </div>
                            </div>

                            <!-- Quantity -->
                            <div class="row mb-3">
                                <label class="col-sm-3 col-form-label">Quantity</label>
                                <div class="col-sm-9">
                                    <div class="input-group">
                                        <span class="input-group-text"><i class='bx bx-sort'></i></span>
                                        <input type="number" class="form-control" name="quantity" value="${product.quantity}">
                                    </div>
                                </div>
                            </div>

                            <!-- GST -->
                            <div class="row mb-3">
                                <label class="col-sm-3 col-form-label">GST %</label>
                                <div class="col-sm-9">
                                    <div class="input-group">
                                        <span class="input-group-text">%</span>
                                        <input type="number" step="0.01" class="form-control" name="gst" value="${product.gst}">
                                    </div>
                                </div>
                            </div>

                            <!-- Rack No -->
                            <div class="row mb-4">
                                <label class="col-sm-3 col-form-label">Rack No</label>
                                <div class="col-sm-9">
                                    <div class="input-group">
                                        <span class="input-group-text"><i class='bx bx-grid'></i></span>
                                        <input type="text" class="form-control" name="rackNo" value="${product.rackNo}">
                                    </div>
                                </div>
                            </div>

                            <!-- Buttons -->
                            <div class="row">
                                <label class="col-sm-3 col-form-label"></label>
                                <div class="col-sm-9">
                                    <div class="d-md-flex d-grid align-items-center gap-3">
                                        <button type="submit" class="btn btn-primary px-4">Update</button>
                                        <a href="allProducts" class="btn btn-light px-4">Cancel</a>
                                    </div>
                                </div>
                            </div>

                        </form>
                    </div> <!-- card-body -->
                </div> <!-- card -->
            </div> <!-- container -->

        </div> <!-- container-fluid -->
    </div> <!-- page-content -->
</div> <!-- page-wrapper -->

</body>
</html>
