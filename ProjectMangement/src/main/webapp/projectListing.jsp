<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
	integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/projectListing.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>



<title>Online Project Management</title>
</head>
<body>
	<!-- 	<main class="table" id="customers_table">
		<section class="table__header">
			<h1>Project Listing</h1>
			<!--<form action="/search" method="get">
				<div class="input-group">
					<input type="search" name="keyword" placeholder="Search Data...">
					<button type="submit">Search</button>

				</div>
			</form>-->
	<!--  	<div class="input-group">
				<input type="search" name="keyword" placeholder="Search Data...">
				<button type="submit">Search</button>

			</div>
			

			<!-- <div class="sorting-dropdown">
				<label for="sort-by">Sort by:</label> <select id="sort-by"
					onchange="sortProjects()">
					<option value="priority">Priority</option>
					<option value="category">Category</option>
					<option value="reason">Reason</option>
					<option value="department">Department</option>
					<option value="location">Location</option>
					
				</select>
			</div> -->

	<!--	</section>
		<section class="table__body">
			<table>
				<thead>
					<tr>
						<th>Project Name</th>
						<th>Reason</th>
						<th>Type</th>
						<th>Division</th>
						<th>Category</th>
						<th>Priority</th>
						<th>Dept.</th>
						<th>Location</th>
						<th>Status</th>
						<th></th>
						<th></th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="std" items="${projects}">
						<tr>
							<td>${std.projectName}</td>
							<td>${std.reason}</td>
							<td>${std.type}</td>
							<td>${std.division}</td>
							<td>${std.category}</td>
							<td>${std.priority}</td>
							<td>${std.department}</td>
							<td>${std.location}</td>
							<td>${std.status}</td>
							<td><a href="<c:url value='/start/${std.projectId}'/>"
								id="start" class="btn">Start</a></td>
							<td><a href="<c:url value='/close/${std.projectId}'/>"
								id="close" class="btn">Close</a></td>
							<td><a href="<c:url value='/cancel/${std.projectId}'/>"
								id="cancel" class="btn">Cancel</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</section>
	</main>-->

	<div class="main">
		<div class="left-nav">
			<div class="svg-div">
				<div class="svg-img ">
					<div class="svg-active "></div>
					<a href="dashboard"><img src="../images/Dashboard.svg" /></a>
					<!--<img src="../images/Dashboard.svg"/>-->
				</div>
				<div class="svg-img active">
					<div class="svg-active "></div>
					<!--<img src="../images/Project-list.svg"/>-->
					<a href="projectListing"><img
						src="../images/Project-list-active.svg" /></a>
				</div>
				<div class="dash"></div>

				<div class="svg-img">
					<div class="svg-active"></div>
					<a href="createProjectForm"><img
						src="../images/create-project.svg" /></a>
					<!--<img src="../images/create-project-active.svg"/>-->
				</div>
			</div>
			<div class="logout-btn-div">
				<a href="/"><img src="../images/Logout.svg" /></a>

			</div>
		</div>
		<div class="right-section">
			<div class="top-bar">
				<div class="create-project-sec">
					<img src="../images/back arrow.svg">
					<h1>Project Listing</h1>
				</div>
				<div class="logo">
					<img src="../images/Logo.svg">
				</div>
			</div>
			<div class="table-container">
				<div class="search-area">
					<form id="searchForm" action="/projectListingSearch" method="get">
						<div class="search-box">
							<i class="fa-solid fa-magnifying-glass"></i> 
							<input type="search" 
								name="keyword" placeholder="Search" id="searchInput">
							<!-- <button type="submit" >Search</button> -->
						</div>
					</form>
					<div class="sorting-dropdown">
						<label for="sort-by">Sort by :</label> <select id="sort-by"
							onchange="sortProjects()">
							<option value="priority">Priority</option>
							<option value="category">Category</option>
							<option value="reason">Reason</option>
							<option value="department">Department</option>
							<option value="location">Location</option>

						</select>
					</div>
				</div>
				<section class="table__body">
					<table>
						<thead>
							<tr>
								<th class="p-name">Project Name</th>
								<th>Reason</th>
								<th>Type</th>
								<th>Division</th>
								<th>Category</th>
								<th>Priority</th>
								<th>Dept.</th>
								<th>Location</th>
								<th>Status</th>
								<th></th>

							</tr>
						</thead>
						<tbody>
							<c:forEach var="std" items="${projects}">
								<tr>
									<td class="p-name">
										<h6>${std.projectName}</h6>
										<h6 class="date">${std.startDate} to ${std.endDate}</h6>
									</td>
									<td>${std.reason}</td>
									<td>${std.type}</td>
									<td>${std.division}</td>
									<td>${std.category}</td>
									<td>${std.priority}</td>
									<td>${std.department}</td>
									<td>${std.location}</td>
									<td>${std.status}</td>
									<td class="btnn">
										<div class="table-btn">
											<a href="<c:url value='/start/${std.projectId}'/>" id="start"
												class="btn">Start</a> <a
												href="<c:url value='/close/${std.projectId}'/>" id="close"
												class="btn">Close</a> <a
												href="<c:url value='/cancel/${std.projectId}'/>" id="cancel"
												class="btn">Cancel</a>
										</div>

									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</section>
			</div>

			<div class="pagination-box">
				<c:if test="${totalPages > 1}">
					<nav aria-label="Page navigation example">
						<ul class="pagination">
							<li
								class="page-item manual <c:if test="${currentPage eq 0}">disabled</c:if>">
								<a class="page-link"
								href="/projectListing?pageNo=${currentPage - 1}"
								aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
							</a>
							</li>
							<c:forEach var="pageNum" begin="0" end="${totalPages - 1}">
								<li
									class="page-item <c:if test="${currentPage eq pageNum}">active</c:if>">
									<a class="page-link"
									href="/projectListing?pageNo=${pageNum}&pageSize=${pageSize}">${pageNum + 1}</a>
								</li>
							</c:forEach>
							<li
								class="page-item <c:if test="${currentPage eq totalPages - 1}">disabled</c:if>">
								<a class="page-link"
								href="/projectListing?pageNo=${currentPage + 1}"
								aria-label="Next"> <span aria-hidden="true">&raquo;</span>
							</a>
							</li>
						</ul>
					</nav>
				</c:if>
			</div>
		</div>
	</div>


	<script>
		function sortProjects() {
			var selectedColumn = document.getElementById("sort-by").value;
			var searchKeyword = document.getElementById("searchInput").value;
			window.location.href = "/sort?sortBy=" + selectedColumn;
		}
		
		document.getElementById('searchInput').addEventListener('keypress', function(event) {

	        if (event.keyCode === 13) {

	            event.preventDefault();
	
	            document.getElementById('searchForm').submit();
	        }
	    });
	</script>
</body>
</html>