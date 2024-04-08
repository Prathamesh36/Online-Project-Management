<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Project Management</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/dashboard.css">
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>
<script src="https://code.highcharts.com/modules/accessibility.js"></script>
</head>
<body>
    <!-- <style>
        .card {
            margin-bottom: 20px;
        }

        .card-header {
            background-color: #007bff;
            color: #fff;
        }

        .card-body {
            text-align: center;
        }

        .highcharts-figure,
        .highcharts-data-table table {
            min-width: 310px;
            max-width: 800px;
            margin: 1em auto;
        }

        #container {
            height: 400px;
            border: 1px solid gray;
            padding: 7px;
            border-radius: 10px;
        }

        .highcharts-data-table table {
            font-family: Verdana, sans-serif;
            border-collapse: collapse;
            border: 1px solid #ebebeb;
            margin: 10px auto;
            text-align: center;
            width: 100%;
            max-width: 500px;
        }

        .highcharts-data-table caption {
            padding: 1em 0;
            font-size: 1.2em;
            color: #555;
        }

        .highcharts-data-table th {
            font-weight: 600;
            padding: 0.5em;
        }

        .highcharts-data-table td,
        .highcharts-data-table th,
        .highcharts-data-table caption {
            padding: 0.5em;
        }

        .highcharts-data-table thead tr,
        .highcharts-data-table tr:nth-child(even) {
            background: #f8f8f8;
        }

        .highcharts-data-table tr:hover {
            background: #f1f7ff;
        }

        .highcharts-credits {
            display: none;
        }

        .highcharts-a11y-proxy-element .highcharts-no-tooltip {
            display: none;
        }

        .highcharts-grid-line {
            display: none;
        }
    </style>

    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <div class="card">
                    <div class="card-header">Total Projects</div>
                    <div class="card-body">
                        <h3>${projectCount}</h3>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card">
                    <div class="card-header">Closed Projects</div>
                    <div class="card-body">
                        <h3>${closedprojects}</h3>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card">
                    <div class="card-header">Running Projects</div>
                    <div class="card-body">
                        <h3>${runningprojects}</h3>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card">
                    <div class="card-header">Closure Delay</div>
                    <div class="card-body">
                        <h3>${runningBeforeToday}</h3>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card">
                    <div class="card-header">Cancelled Projects</div>
                    <div class="card-body">
                        <h3>${cancelledprojects }</h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <figure class="highcharts-figure">
        <div id="container"></div>

    </figure>
    <script>
        Highcharts.chart('container', {
            chart: {
                type: 'column'
            },
            title: {
                text: 'Department wise - Total Vs Closed',
                align: 'left'
            },
            subtitle: {
                text: '',

                align: 'left'
            },
            xAxis: {
                categories: ['STR', 'FIN', 'QLT', 'MAN', 'STO', 'HR'],
                crosshair: true,
                accessibility: {
                    description: 'Countries'
                }
            },
            yAxis: {
                min: 0,
                title: {
                    text: ''
                },
                stackLabels: {
                    enabled: true,
                    style: {
                        fontWeight: 'bold',
                        color: ( // theme
                            Highcharts.defaultOptions.title.style &&
                            Highcharts.defaultOptions.title.style.color
                        ) || 'gray'
                    }
                }


            },
            tooltip: {
                valueSuffix: ' (1000 MT)'
            },
            plotOptions: {
                column: {
                    pointPadding: 0.35,
                    borderWidth: 0
                }
            },
            series: [
                {
                    name: 'Total',
                    data: [
                        <c:forEach items="${totalProjects}" var="data" varStatus="loop">
                            ${data}<c:if test="${!loop.last}">, </c:if>
                        </c:forEach>
                    ]
                },
                {
                    name: 'Closed',
                    data: [
                        <c:forEach items="${totalCloseProjects}" var="data" varStatus="loop">
                            ${data}<c:if test="${!loop.last}">, </c:if>
                        </c:forEach>
                    ]
                }
            ]
        });

    </script>-->

    <div class="main">
        <div class="left-nav">
            <div class="svg-div">
                <div class="svg-img active ">
                    <div class="svg-active "></div>
                    <!--<a href="./dashboard.html"><img src="../images/Dashboard.svg" /></a>-->
                    <img src="../images/Dashboard-active.svg"/>
                </div>
                <div class="svg-img ">
                    <div class="svg-active "></div>
                    <a href="projectListing"><img src="../images/Project-list.svg" /></a>
                    <!--<img src="../images/Project-list-active.svg" />-->
                </div>
                <div class="dash"></div>

                <div class="svg-img">
                    <div class="svg-active"></div>
                    <!--<img src="../images/create-project.svg" />-->
                    <a href="createProjectForm"><img src="../images/create-project.svg" /></a>
                </div>
            </div>
            <div class="logout-btn-div">
                <a href="/"><img src="../images/Logout.svg" /></a>
            </div>
        </div>
        <div class="right-section">
            <div class="top-bar">
                <div class="create-project-sec">
                    
                    <h1>Dashboard</h1>
                </div>
                <div class="logo">
                    <img src="../images/Logo.svg">
                </div>
            </div>
            <div class="right-bottom-container">
                <div class="card-container">
                    <div class="card">
                        <div class="card-title">
                            <h5>Total Project</h5>
                        </div>
                        <div class="card-digit">
                            <h5>${projectCount}</h5>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-title">
                            <h5>Closed Projects</h5>
                        </div>
                        <div class="card-digit">
                            <h5>${closedprojects}</h5>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-title">
                            <h5>Running Projects</h5>
                        </div>
                        <div class="card-digit">
                            <h5>${runningprojects}</h5>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-title">
                            <h5>Closure Delay</h5>
                        </div>
                        <div class="card-digit">
                            <h5>${runningBeforeToday}</h5>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-title">
                            <h5>Cancelled Projects</h5>
                        </div>
                        <div class="card-digit">
                            <h5>${cancelledprojects }</h5>
                        </div>
                    </div>
                </div>

                <div class="chart-title">
                    <h1>Department wize - Total Vs Closed</h1>
                </div>

                <div class="chart-div">
                    <figure class="highcharts-figure">
                        <div id="container"></div>

                    </figure>
                </div>


            </div>

        </div>
    </div>
    <script>
        Highcharts.chart('container', {
            chart: {
                type: 'column'
            },
            title: {
                text: 'Department wise - Total Vs Closed',
                align: 'left'
            },
            subtitle: {
                text: '',

                align: 'left'
            },
            xAxis: {
                categories: ['STR', 'FIN', 'QLT', 'MAN', 'STO', 'HR'],
                crosshair: true,
                accessibility: {
                    description: 'Countries'
                }
            },
            yAxis: {
                min: 0,
                title: {
                    text: ''
                },
                stackLabels: {
                    enabled: true,
                    style: {
                        fontWeight: 'bold',
                        color: ( // theme
                            Highcharts.defaultOptions.title.style &&
                            Highcharts.defaultOptions.title.style.color
                        ) || 'gray'
                    }
                }


            },
            tooltip: {
                valueSuffix: ' (1000 MT)'
            },
            plotOptions: {
                column: {
                    pointPadding: 0.35,
                    borderWidth: 0
                }
            },
            series: [
                {
                    name: 'Total',
                    data: [
                        <c:forEach items="${totalProjects}" var="data" varStatus="loop">
                            ${data}<c:if test="${!loop.last}">, </c:if>
                        </c:forEach>
                    ]
                },
                {
                    name: 'Closed',
                    data: [
                        <c:forEach items="${totalCloseProjects}" var="data" varStatus="loop">
                            ${data}<c:if test="${!loop.last}">, </c:if>
                        </c:forEach>
                    ]
                }
            ]
        });

    </script>

</body>
</html>