<%@ Page Title="" Language="C#" MasterPageFile="~/FormAdmin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="indexAdmin.aspx.cs" Inherits="AutoCarOne.FormAdmin.indexAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Custom fonts for this template-->
    <link href="../Acsset/Bootschap/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" />

    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="../Acsset/Bootschap/css/sb-admin-2.min.css" rel="stylesheet">
    <style>
        /* RESET STYLES
–––––––––––––––––––––––––––––––––––––––––––––––––– */

        .chart-skills {
            margin: 40px auto;
            padding: 0;
            list-style-type: none;
        }

            .chart-skills *,
            .chart-skills::before {
                box-sizing: border-box;
            }


        /* CHART-SKILLS STYLES
–––––––––––––––––––––––––––––––––––––––––––––––––– */

        .chart-skills {
            position: relative;
            width: 100%;
            height: 150px;
            overflow: hidden;
        }

            .chart-skills::before,
            .chart-skills::after {
                position: absolute;
            }

            .chart-skills::before {
                content: '';
                width: inherit;
                height: inherit;
                border: 45px solid rgba(211, 211, 211, .3);
                border-bottom: none;
                border-top-left-radius: 175px;
                border-top-right-radius: 175px;
            }

            .chart-skills::after {
               
                left: 50%;
                bottom: 10px;
                transform: translateX(-50%);
                font-size: 1.1rem;
                font-weight: bold;
                color: cadetblue;
            }

            .chart-skills li {
                position: absolute;
                top: 100%;
                left: 0;
                width: inherit;
                height: inherit;
                border: 45px solid;
                border-top: none;
                border-bottom-left-radius: 175px;
                border-bottom-right-radius: 175px;
                transform-origin: 50% 0;
                animation-fill-mode: forwards;
                animation-duration: .4s;
                animation-timing-function: linear;
                transform-style: preserve-3d;
                backface-visibility: hidden;
            }

                .chart-skills li:nth-child(1) {
                    z-index: 4;
                    border-color: #1cc88a;
                    animation-name: rotate-one;
                }

                .chart-skills li:nth-child(2) {
                    z-index: 3;
                    border-color: #4e73df;
                    animation-name: rotate-two;
                    animation-delay: .4s;
                }

               


        /* ANIMATIONS
–––––––––––––––––––––––––––––––––––––––––––––––––– */

        @keyframes rotate-one {
            100% {
                transform: rotate(70deg);
                /**
     * 12% => 21.6deg
     */
            }
        }

        @keyframes rotate-two {
            0% {
                transform: rotate(70deg);
            }

            100% {
                transform: rotate(180deg);
                /**
     * 32% => 57.6deg 
     * 57.6 + 21.6 => 79.2deg
     */
            }
        }

     
    </style>
    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Xin chào:
            <asp:Label runat="server" ID="lbHello"></asp:Label></h1>
        <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
            class="fas fa-download fa-sm text-white-50"></i>Generate Report</a>
    </div>

    <!-- Content Row -->
    <div class="row">

        <!-- Earnings (Monthly) Card Example -->
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                Earnings (Monthly)
                            </div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">$40,000</div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-calendar fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Earnings (Monthly) Card Example -->
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-left-success shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                Earnings (Annual)
                            </div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">$215,000</div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Earnings (Monthly) Card Example -->
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-left-info shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-info text-uppercase mb-1">
                                Tasks
                            </div>
                            <div class="row no-gutters align-items-center">
                                <div class="col-auto">
                                    <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">50%</div>
                                </div>
                                <div class="col">
                                    <div class="progress progress-sm mr-2">
                                        <div class="progress-bar bg-info" role="progressbar"
                                            style="width: 50%" aria-valuenow="50" aria-valuemin="0"
                                            aria-valuemax="100">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Pending Requests Card Example -->
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-left-warning shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                                Pending Requests
                            </div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">18</div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-comments fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Content Row -->

    <div class="row">

        <!-- Area Chart -->
        <div class="col-xl-8 col-lg-7">
            <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div
                    class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                    <h6 class="m-0 font-weight-bold text-primary">Earnings Overview</h6>
                    <div class="dropdown no-arrow">
                        <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
                            aria-labelledby="dropdownMenuLink">
                            <div class="dropdown-header">Dropdown Header:</div>
                            <a class="dropdown-item" href="#">Action</a>
                            <a class="dropdown-item" href="#">Another action</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Something else here</a>
                        </div>
                    </div>
                </div>
                <!-- Card Body -->
                <div class="card-body">
                    <div class="chart-area">
                        <canvas id="myAreaChart"></canvas>
                    </div>
                </div>
            </div>
        </div>

        <!-- Pie Chart -->
        <div class="col-xl-4 col-lg-5">
            <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div
                    class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                    <h6 class="m-0 font-weight-bold text-primary">Revenue Sources</h6>
                    <div class="dropdown no-arrow">
                        <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
                            aria-labelledby="dropdownMenuLink">
                            <div class="dropdown-header">Dropdown Header:</div>
                            <a class="dropdown-item" href="#">Action</a>
                            <a class="dropdown-item" href="#">Another action</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Something else here</a>
                        </div>
                    </div>
                </div>
                <!-- Card Body -->
                <div class="card-body">
                    <div class="chart-pie pt-4 pb-2">
                        <%--<canvas id="myPieChart"></canvas>--%>
                        <ul class="chart-skills">
                            <li>
                                <span></span>
                            </li>
                            <li>
                                <span></span>
                            </li>
                            
                        </ul>
                    </div>
                    <div class="mt-4 text-center small">
                        <span class="mr-2">
                            <i class="fas fa-circle text-primary"></i>Xe cũ
                        </span>
                        <span class="mr-2">
                            <i class="fas fa-circle text-success"></i>Xe mới
                        </span>
                       
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->

    <script src="../Acsset/Bootschap/vendor/jquery/jquery.min.js"></script>
    <script src="../Acsset/Bootschap/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="../Acsset/Bootschap/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="../Acsset/Bootschap/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="../Acsset/Bootschap/vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="../Acsset/Bootschap/js/demo/chart-area-demo.js"></script>
    <script src="../Acsset/Bootschap/js/demo/chart-pie-demo.js"></script>

</asp:Content>
