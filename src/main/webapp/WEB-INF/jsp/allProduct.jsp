<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <!-- ✅ Include Header (fixed header assumed) -->
    <jsp:include page="module/header.jsp" />
    
    
    
    
<!-- ✅ Main Page Content -->
	<div class="page-wrapper">
		<div class="page-content">
			<div class="container-fluid">

            <div class="card-body">
                <h5 class="card-title mb-3">All Product Information</h5>

                <!-- Success/Error Message -->
                <c:if test="${not empty successMsg}">
                    <div class="alert alert-success">${successMsg}</div>
                </c:if>
                <c:if test="${not empty errorMsg}">
                    <div class="alert alert-danger">${errorMsg}</div>
                </c:if>

                <!-- Table -->
                <div class="table-responsive">
                    <table class="table table-bordered table-striped align-middle">
                        <thead class="table-light">
                            <tr>
                                <th class="col-id">ID</th>
                                <th class="col-name">Name</th>
                                <th class="col-brand">Brand</th>
                                <th class="col-category">Category</th>
                                <th class="col-batch">Batch No.</th>
                                <th class="col-mfg">MFG</th>
                                <th class="col-exp">EXP</th>
                                <th class="col-buy">Buy</th>
                                <th class="col-sell">Sell</th>
                                <th class="col-qty">Qty</th>
                                <th class="col-gst">GST</th>
                                <th class="col-rack">Rack</th>
                                <th class="col-action">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="p" items="${productList}">
                                <tr>
                                    <td class="col-id">${p.id}</td>
                                    <td class="col-name">${p.name}</td>
                                    <td class="col-brand">${p.brand}</td>
                                    <td class="col-category">${p.category}</td>
                                    <td class="col-batch">${p.batchNo}</td>
                                    <td class="col-mfg">${p.mfgDate}</td>
                                    <td class="col-exp">${p.expDate}</td>
                                    <td class="col-buy">${p.purchaseRate}</td>
                                    <td class="col-sell">${p.sellingRate}</td>
                                    <td class="col-qty">${p.quantity}</td>
                                    <td class="col-gst">${p.gst}</td>
                                    <td class="col-rack">${p.rackNo}</td>
                                    <td class="col-action">
                                        <a href="editProduct?id=${p.id}" class="btn btn-sm btn-warning">Update</a>
                                        <a href="deleteProduct?id=${p.id}" class="btn btn-sm btn-danger"
                                           onclick="return confirm('Are you sure?')">Delete</a>
                                    </td>
                                </tr>
                            </c:forEach>
                            
                            
                            
                        </tbody>
                        
                    </table>
                    
                    
         <!-- Add this in the section where you want pagination controls to appear -->
<div class="d-flex justify-content-center mt-4">
    <nav aria-label="Page navigation">
        <ul class="pagination">
            <c:if test="${currentPage > 0}">
                <li class="page-item">
                    <a class="page-link" href="?page=${currentPage - 1}&size=${pageSize}">Previous</a>
                </li>
            </c:if>

            <!-- Current Page -->
            <li class="page-item active">
                <a class="page-link" href="#">Page ${currentPage + 1}</a>
            </li>

            <!-- Next Page -->
            <li class="page-item">
                <a class="page-link" href="?page=${currentPage + 1}&size=${pageSize}">Next</a>
            </li>
        </ul>
    </nav>
</div>

                    
                    
                </div>

            </div>
        </div>
    </div>
 </div>

</body>
</html>
