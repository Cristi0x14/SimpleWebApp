<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tables.aspx.cs" Inherits="WebApplication1.tables" %>


<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Google tag (gtag.js) -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-65L4MMJX8W"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'G-65L4MMJX8W');
</script>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>website piug</title>

    <!-- Custom fonts for this template-->
    <link href="css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top">

    <form id="form1" runat="server">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.aspx">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-laugh-wink"></i>
                </div>
                <div class="sidebar-brand-text mx-3">CRS<sup> SWD</sup></div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            

            <!-- Nav Item - Pages Collapse Menu -->
            

            <!-- Nav Item - Utilities Collapse Menu -->
            
            <!-- Divider -->
            

            <!-- Heading -->
            

            <!-- Nav Item - Pages Collapse Menu -->
            

            <!-- Nav Item - Charts -->
            

            <!-- Nav Item - Tables -->
            <li class="nav-item">
                <a class="nav-link" href="index.aspx">
                    <i class="fas fa-fw fa-table"></i>
                    <span>Home Page</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="tables.aspx">
                    <i class="fas fa-fw fa-table"></i>
                    <span>Employees</span></a>
            </li>
             <li class="nav-item">
                <a class="nav-link" href="portfolio.aspx">
                    <i class="fas fa-fw fa-table"></i>
                    <span>Portfolio</span></a>
            </li>
            

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

            <!-- Sidebar Message -->
           

        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                    <!-- Topbar Search -->
                        <div class="input-group">
                            <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..."
                                aria-label="Search" aria-describedby="basic-addon2">
                            <div class="input-group-append">
                                <button class="btn btn-primary" type="button">
                                    <i class="fas fa-search fa-sm"></i>
                                </button>
                            </div>
                        </div>

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                        <li class="nav-item dropdown no-arrow d-sm-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                                aria-labelledby="searchDropdown">
                                    <div class="input-group">
                                        <input type="text" class="form-control bg-light border-0 small"
                                            placeholder="Search for..." aria-label="Search"
                                            aria-describedby="basic-addon2">
                                        <div class="input-group-append">
                                            <button class="btn btn-primary" type="button">
                                                <i class="fas fa-search fa-sm"></i>
                                            </button>
                                        </div>
                                    </div>
                            </div>
                        </li>

                        

                        

                        <div class="topbar-divider d-none d-sm-block"></div>

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Settings</span>
                                <img class="img-profile rounded-circle"
                                    src="img/undraw_profile.svg">
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="profile.aspx">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Profile
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Logout
                                </a>
                            </div>
                        </li>

                    </ul>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Employees
                           
                            
                           
                            
                           
                            
                           
                            
                           
                            
                           
                            
                           
                            
                           
                            
                           
                            
                           
                            
                           
                            
                           
                            
                           
                            
                           
                            
                           
                            
                           
                            
                           
                            
                           
                            
                           
                            
                           
                            
                           
                            
                           
                            
                           
                            
                           
                            
                           
                            
                           
                            
                           
                            
                           
                            
                           
                            
                           
                            
                           
                            
                           
                        </h1>
                        
                    </div>

                    <!-- Content Row -->
                    <div class="row">
                        <div class="card-body">
                            <div class="row">
                        <div class="card-body">
                            


                            <div class="table-responsive">
                                <div id="dataTable_wrapper" class="dataTables_wrapper dt-bootstrap4"><div class="row"><div class="col-sm-12 col-md-6"><div class="dataTables_length" id="dataTable_length"></div></div><div class="col-sm-12 col-md-6"><div id="dataTable_filter" class="dataTables_filter"></div></div></div><div class="row"><div class="col-sm-12"><table class="table table-bordered dataTable" id="dataTable" width="100%" cellspacing="0" role="grid" aria-describedby="dataTable_info" style="width: 100%;">
                                    <asp:Label ID="Label1" runat="server" Text="Search : "></asp:Label>
                                    <asp:TextBox ID="TextBox4" runat="server" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
                                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Search" />
                                    <tbody>
                                        <style>
                                            .custom-gridview {
                                                width: 100%;
                                                border-collapse: collapse;
                                            }
                                            .custom-gridview th, .custom-gridview td {
                                                padding: 8px;
                                                text-align: left;
                                                border: 1px solid #ddd;
                                            }
                                            .custom-gridview th {
                                                background-color: #f2f2f2;
                                            }
                                        </style>
                                        <style>
                                            .custom-button-form{
                                                margin-top: 5px;
                                                text-align: center;
                                                width: 100%;
                                                border-collapse:collapse;
                                                padding: 8px;
                                                text-align: center;
                                                
                                                background-color: #f2f2f2;
                                            }
                                            .custom-button-form .custom-button {
                                                width: 100%;
                                                
                                            }
                                            .custom-button-form .custom-button:hover{
                                                background-color: #45a049;
                                            }

                                        </style>
                                        <br>
                                            <asp:GridView ID="GridView1" runat="server" CssClass="custom-gridview" >
                                                <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                   
                                            </asp:GridView>
                                        
                                            
                                        <br />
                                        <style>
                                            .add-button-form .customtextbox {
                                                width: 200px;
                                                text-align:center;
                                                padding: 8px;
                                                border: 3px solid #ccc;
                                                border-radius: 4px;
                                                box-sizing: border-box;
                                                margin-bottom: 10px;
                                                font-size: 14px;
                                            }

                                           
                                        </style>
                                        <div class="card-body">
                                            <asp:Button ID="Button6" runat="server" OnClick="Button4_Click" Text="Next" />
                                            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Prev" />  
                                            <br />
                                            <br />
                                            <label> Nume : </label>
                                            <asp:TextBox ID="TextBox1" runat="server" CssClass="customtextbox"></asp:TextBox>
                                            <label>Job : </label>
                                            <asp:TextBox ID="TextBox2" runat="server" CssClass="customtextbox"></asp:TextBox>
                                            <label>Salary : </label>
                                            <asp:TextBox ID="TextBox3" runat="server" CssClass="customtextbox"></asp:TextBox>
                                                <div class="custom-button-form">
                                                     <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" CssClass="custom-button"/>
                                                </div>
                                            <label>Delete by id (type id of row needed to delete) </label>
                                            <asp:TextBox ID="TextBox5" runat="server"  CssClass="customtextbox" OnTextChanged="TextBox5_TextChanged"></asp:TextBox>
                                            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Delete" OnClientClick="return confirm('Are you sure you want to delete this row?');" />
                                        </div>
                                         
                                        
                                        
                                    </tbody>
                                   </div>
                        </div>
                        </div>
                        


                    <!-- Content Row -->

                    <div class="row">

                        <!-- Area Chart -->
                        <div class="col-xl-8 col-lg-7">
                            <div class="card shadow mb-4">
                                <!-- Card Header - Dropdown -->
                                
                                <!-- Card Body -->
                                
                            </div>
                        </div>

                        <!-- Pie Chart -->
                        <div class="col-xl-4 col-lg-5">
                            <div class="card shadow mb-4">
                                <!-- Card Header - Dropdown -->
                                
                                <!-- Card Body -->
                                
                            </div>
                        </div>
                    </div>

                    <!-- Content Row -->
                    <div class="row">

                        <!-- Content Column -->
                        
                    </div>

                </div> -->
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.aspx">Logout</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/demo/chart-area-demo.js"></script>
    <script src="js/demo/chart-pie-demo.js"></script>

    </form>

</body>

</html>





















