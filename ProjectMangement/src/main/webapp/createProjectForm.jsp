<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/createProjectForm.css">
<title>Online Project Management</title>
</head>
<body>
    <!--<div class="container">
    <h2>Project Details</h2>
    <form action="addstudent" method="post">
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="projectName">Project Name</label>
                <input type="text" class="form-control" id="projectName" name="projectName" placeholder="Project Name">
            </div>
            <div class="form-group col-md-6">
                <label for="reason">Reason</label>
                <select id="reason" name ="reason" class="form-control">
                    <option selected>Choose...</option>
                    <option>Business</option>
                    <option>Dealership</option>
                    <option>Transport</option>
                </select>
            </div>
            <div class="form-group col-md-6">
                <label for="type">Type</label>
                <select id="type" name ="type" class="form-control">
                    <option selected>Choose...</option>
                    <option>Internal</option>
                    <option>External</option>
                    <option>Vendor</option>
                </select>
            </div>
            <div class="form-group col-md-6">
                <label for="division">Division</label>
                <select id="division" name ="division" class="form-control">
                    <option selected>Choose...</option>
                    <option>Compressor</option>
                    <option>Filter</option>
                    <option>Pumps</option>
                    <option>Glass</option>
                    <option>Water Heater</option>
                </select>
            </div>
            <div class="form-group col-md-6">
                <label for="category">Category</label>
                <select id="category" name ="category" class="form-control">
                    <option selected>Choose...</option>
                    <option>Quality A</option>
                    <option>Quality B</option>
                    <option>Quality C</option>
                </select>
            </div>
            <div class="form-group col-md-6">
                <label for="priority">Priority</label>
                <select id="priority" name ="priority" class="form-control">
                    <option selected>Choose...</option>
                    <option>High</option>
                    <option>Low</option>
                    <option>Medium</option>
                </select>
            </div>
            <div class="form-group col-md-6">
                <label for="department">Department</label>
                <select id="department" name ="department" class="form-control">
                    <option selected>Choose...</option>
                    <option>Finance</option>
                    <option>Strategy</option>
                    <option>Quality</option>
                </select>
            </div>
            <div class="form-group col-md-6">
                <label for="startDate">Start Date</label>
                <input type="date" class="form-control" name ="startDate" id="startDate">
            </div>
            <div class="form-group col-md-6">
                <label for="endDate">End Date</label>
                <input type="date" class="form-control" name ="endDate" id="endDate">
            </div>
            <div class="form-group col-md-6">
                <label for="location">Location</label>
                <select id="location" name ="location" class="form-control">
                    <option selected>Choose...</option>
                    <option>Pune</option>
                    <option>Delhi</option>
                    <option>Mumbai</option>
                </select>
            </div>
            <div>
            	<p id="status">Status:<span>Registered</span></p>
            </div>
        </div>
        <button type="submit" class="btn btn-primary">Save Project</button>
    </form>
</div>
	
-->
    <div class="main">
        <div class="left-nav">
            <div class="svg-div">
                <div class="svg-img ">
                    <div class="svg-active "></div>
                    <a href="dashboard"><img src="../images/Dashboard.svg" /></a>
                    <!--<img src="../images/Dashboard.svg"/>-->
                </div>
                <div class="svg-img ">
                    <div class="svg-active "></div>
                    <a href="projectListing"><img src="../images/Project-list.svg"/></a>
                    <!--<img src="../images/Project-list-active.svg" />-->
                </div>    
                <div class="dash"></div>

                <div class="svg-img active">
                    <div class="svg-active"></div>
                    <!--<img src="../images/create-project.svg" />-->
                    <a href="createProjectform"><img src="../images/create-project-active.svg"/></a>
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
                    <h1>Create Project</h1>
                </div>
                <div class="logo">
                    <img src="../images/Logo.svg">
                </div>
            </div>
            <div class="form-container">
                <form action="infoAdded" method="post">
                    <div class="top-section">
                        <input type="text" id="projectName" name="projectName" placeholder="Enter Project Theme"></input>
                        <button class="form-submit-btn" type="submit">Save Project</button>
                    </div>
                    <div class="lower-section">
                        <div class="input-div">
                            <label for="reason">Reason</label>
                            <select id="reason" name="reason" class="form-control">
                                <option selected>Business</option>
                                <option>Dealership</option>
                                <option>Transport</option>
                            </select>
                        </div>

                        <div class="input-div">
                            <label for="type">Type</label>
                            <select id="type" name="type" class="form-control">
                                <option selected>Internal</option>
                                <option>Internal</option>
                                <option>External</option>
                                <option>Vendor</option>
                            </select>
                        </div>

                        <div class="input-div">
                            <label for="division">Division</label>
                            <select id="division" name="division" class="form-control">
                                <option selected>Filter</option>
                                <option>Compressor</option>
                                <option>Filter</option>
                                <option>Pumps</option>
                                <option>Glass</option>
                                <option>Water Heater</option>
                            </select>
                        </div>
                        <div class="input-div">
                            <label for="category">Category</label>
                            <select id="category" name="category" class="form-control">
                                <option selected>Quality A</option>
                                <option>Quality A</option>
                                <option>Quality B</option>
                                <option>Quality C</option>
                                <option>Quality D</option>
                            </select>
                        </div>
                        <div class="input-div">
                            <label for="priority">Priority</label>
                            <select id="priority" name="priority" class="form-control">
                                <option selected>High</option>
                                <option>High</option>
                                <option>Low</option>
                                <option>Medium</option>
                            </select>
                        </div>
                        <div class="input-div">
                            <label for="department">Department</label>
                            <select id="department" name="department" class="form-control">
                                <option selected>Strategy</option>
                                <option>Finance</option>
                                <option>Quality</option>
                                <option>Maintenance</option>
                                <option>Stores</option>
                            </select>
                        </div>
                        <div class="input-div">
                            <label for="startDate">Start Date</label>
                            <input type="date" class="form-control" name="startDate" id="startDate">
                        </div>
                        <div class="input-div">
                            <label for="endDate">End Date</label>
                            <input type="date" class="form-control" name="endDate" id="endDate">
                            <p id="dateError" style="color: red; display: none;">End date is smaller than the start date</p>
                        </div>
                        <div class="input-div">
                            <label for="location">Location</label>
                            <select id="location" name="location" class="form-control">
                                <option selected>Pune</option>
                                <option>Delhi</option>
                                <option>Mumbai</option>
                                <option>Nagpur</option>
                                <option>Nashik</option>
                            </select>
                        </div>



                    </div>
                    <div class="status">
                        <h5>Status:</h5>
                        <h4>Registered</h4>
                    </div>


                </form>

            </div>
        </div>
    </div>
<script>
document.getElementById('endDate').addEventListener('change', function() {
    var startDate = document.getElementById('startDate').value;
    var endDate = this.value;

    if (startDate && endDate && startDate > endDate) {
        document.getElementById('dateError').style.display = 'block';
        document.getElementById('endDate').style.borderColor = 'red';
    } else {
        document.getElementById('dateError').style.display = 'none';
        document.getElementById('endDate').style.borderColor = '';
    }
});

</script>
</body>
</html>