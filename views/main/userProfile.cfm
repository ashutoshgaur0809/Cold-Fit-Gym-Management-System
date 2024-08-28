<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link rel="stylesheet" href="https://unpkg.com/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://unpkg.com/bs-brain@2.0.4/components/registrations/registration-9/assets/css/registration-9.css">
<link rel="stylesheet" href="https://unpkg.com/bootstrap@5.3.3/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
</head>

<body class="bg-dark">
<cfoutput>
  <cfquery name="durationPack">
    select * from registration where id = #session.userID#
</cfquery>
  <!--- <cfdump var="#session#"><cfabort> --->
    <nav class="navbar bg-dark navbar-expand-lg sticky-top">
        <div class="container">
          <!-- Logo on the left -->
          <a class="navbar-brand text-light" href="##" id="fire_icon">
          
            <span style="font-family: Arial; font-size: 24px;">GYM <i class="fa-solid fa-dumbbell"></i> MS</span><br>
            <span style="font-family: Arial; font-size: 14px;">Gym Management System</span>
        </a>
      
          <!-- Toggler button for small screens -->
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="##navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
      
          <!-- Navbar items on the right -->
          <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent"  style="flex-grow: 0";>
            <ul class="navbar-nav">
              
              <li class="nav-item">
                <a class="nav-link text-light" href="main/afterLogin">
                  <h5>Home</h5>
                </a>
              </li>
              <li class="nav-item">
                <a href="main/newArrival" class="nav-link text-light">
                  <h5>New Arrivals</h5>
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link text-light" href="main/About">
                  <h5>About</h5>
                </a>
            </li>
           
              
              
            </ul>
            <div class="dropdown">
                <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                  <p> #durationPack.fullname#</p>
                </button>
                <ul class="dropdown-menu dropdown-menu-dark">
                  <li><a class="dropdown-item active" href="main/userProfile">Profile</a></li>
                
                  <li><hr class="dropdown-divider"></li>
                  <button id="logoutBtn" class="btn btn-info btn-lg">   <i class="fa-solid fa-arrow-right-from-bracket"></i> Logout</button>
                  <!--- <button class="btn btn-info btn-lg" id="logoutBtn" onclick="logoutalert()"> 
                    <i class="fa-solid fa-arrow-right-from-bracket"></i>Log out
                  </button>--->
                  <!--- Modal  --->
                  
                </div>
                </ul>
              </div>
      
          <!-- Search and buttons aligned to the right -->
        </div>
     
      </nav>
    <!-- Profile 1 - Bootstrap Brain Component -->
<section class="bg-dark py-3 py-md-5 py-xl-8">
    <div class="container">
      <div class="row justify-content-md-center">
        <div class="col-12 col-md-10 col-lg-8 col-xl-7 col-xxl-6">
            <hr class="w-100 mx-auto mb-5 mb-xl-9 border-dark-subtle">
            <h2 class="mb-4 display-7 text-center text-light">Welcome, #durationPack.fullname#</h2>
          <h2 class="mb-4 display-7 text-center text-light">Profile</h2>
          <hr class="w-100 mx-auto mb-5 mb-xl-9 border-dark-subtle">
        </div>
      </div>
    </div>
  
    <div class="container">

                <!-- Display error messages -->
            <cfif structKeyExists(rc, "error")>
                <div class="alert alert-danger alert-dismissible fade show mt-3" role="alert">
                    #rc.error#
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>
            </cfif>

            <!-- Display success messages -->
            <cfif structKeyExists(rc, "message")>
                <div class="alert alert-success alert-dismissible fade show mt-3" role="alert">
                    #rc.message#
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>
            </cfif>
    
        
     
        
      <div class="col-12">
        <div class="card widget-card shadow-sm">
            <div class="card-body p-4">
                <!-- Tab Navigation -->
                <ul class="nav nav-tabs" id="profileTab" role="tablist">
                    <li class="nav-item" role="presentation">
                        <button class="nav-link active" id="overview-tab" data-bs-toggle="tab" data-bs-target="##overview-tab-pane" type="button" role="tab" aria-controls="overview-tab-pane" aria-selected="true">Overview</button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link" id="history-tab" data-bs-toggle="tab" data-bs-target="##history-tab-pane" type="button" role="tab" aria-controls="history-tab-pane" aria-selected="false">History</button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link" id="update-tab" data-bs-toggle="tab" data-bs-target="##update-tab-pane" type="button" role="tab" aria-controls="update-tab-pane" aria-selected="false">Update</button>
                    </li>
                </ul>
    
                <!-- Tab Content -->
                <div class="tab-content pt-4" id="profileTabContent">
                    <!-- Overview Tab -->
                    <div class="tab-pane fade show active" id="overview-tab-pane" role="tabpanel" aria-labelledby="overview-tab" tabindex="0">
                        <h5 class="mb-3">About</h5>
                        <div class="row g-0 text-white">
                            <!-- Full Name -->
                            <div class="col-5 col-md-3 bg-primary border-bottom border-white border-3 rounded-start">
                                <div class="p-4 fw-bold">
                                    <i class="fas fa-user"></i> Full Name
                                </div>
                            </div>
                            <div class="col-7 col-md-9 bg-secondary border-bottom border-white border-3 rounded-end">
                                <div class="p-4">#durationPack.fullname#</div>
                            </div>
    
                            <!-- Phone -->
                            <div class="col-5 col-md-3 bg-primary border-bottom border-white border-3 rounded-start">
                                <div class="p-4 fw-bold">
                                    <i class="fas fa-phone"></i> Phone
                                </div>
                            </div>
                            <div class="col-7 col-md-9 bg-secondary border-bottom border-white border-3 rounded-end">
                                <div class="p-4">#durationPack.phone#</div>
                            </div>
    
                            <!-- Address -->
                            <div class="col-5 col-md-3 bg-primary border-bottom border-white border-3 rounded-start">
                                <div class="p-4 fw-bold">
                                    <i class="fas fa-map-marker-alt"></i> Address
                                </div>
                            </div>
                            <div class="col-7 col-md-9 bg-secondary border-bottom border-white border-3 rounded-end">
                                <div class="p-4">#durationPack.city#</div>
                            </div>
    
                            <!-- Email -->
                            <div class="col-5 col-md-3 bg-primary border-bottom border-white border-3 rounded-start">
                                <div class="p-4 fw-bold">
                                    <i class="fas fa-envelope"></i> Email
                                </div>
                            </div>
                            <div class="col-7 col-md-9 bg-secondary border-bottom border-white border-3 rounded-end">
                                <div class="p-4">#durationPack.email#</div>
                            </div>
    
                            <!-- Date of Registration -->
                            <div class="col-5 col-md-3 bg-primary border-bottom border-white border-3 rounded-start">
                                <div class="p-4 fw-bold">
                                    <i class="fas fa-calendar-alt"></i> Date of Registration
                                </div>
                            </div>
                            <div class="col-7 col-md-9 bg-secondary border-bottom border-white border-3 rounded-end">
                                <div class="p-4">#DateFormat(durationPack.date, "mm/dd/yyyy")#</div>
                            </div>
                        </div>
                    </div>
    
                    <!-- History Tab -->
                    <div class="tab-pane fade" id="history-tab-pane" role="tabpanel" aria-labelledby="history-tab" tabindex="0">
                        <h5 class="mb-3">History</h5>
                        <div class="row g-0 text-white">
                            <div class="col-12 bg-primary border-bottom border-white border-3 rounded">
                                <div class="p-4 fw-bold text-center">
                                    <i class="fas fa-calendar-alt"></i> Date of Registration
                                </div>
                            </div>
                            <div class="col-12 bg-secondary border-bottom border-white border-3 rounded">
                                <div class="p-4 text-center">
                                    <strong>#DateFormat(durationPack.date, "mm/dd/yyyy")#</strong>
                                </div>
                            </div>
                            <div class="col-12 bg-primary border-bottom border-white border-3 rounded mt-4">
                                <div class="p-4 fw-bold text-center">
                                    <i class="fas fa-calendar-alt"></i> Booking History
                                </div>
                            </div>
                    
                            <!-- Query to get the order information -->
                            <cfquery name="getInfoOfOrder">
                                SELECT * FROM `order` WHERE email = "#durationPack.email#";
                            </cfquery>
                    
                            <!-- Displaying Order History -->
                            <div class="table-responsive mt-3">
                                <table class="table table-striped table-hover table-bordered text-center">
                                    <thead class="bg-dark text-white">
                                        <tr>
                                            <th class="bg-secondary text-white">Full Name</th>
                                            <th class="bg-secondary text-white">Phone</th>
                                            <th class="bg-secondary text-white">City</th>
                                            <th class="bg-secondary text-white">Email</th>
                                            <th class="bg-secondary text-white">Product Name</th>
                                            <th class="bg-secondary text-white">Category Name</th>
                                            <th class="bg-secondary text-white">Product Rate</th>
                                            <th class="bg-secondary text-white">Order Placed Date</th>
                                            <th class="bg-secondary text-white">Payment Status</th>
                                        </tr>
                                    </thead>
                                    <tbody class="bg-light">
                                        <cfloop query="getInfoOfOrder">
                                            <tr>
                                                <td>#getInfoOfOrder.uName#</td>
                                                <td>#getInfoOfOrder.phone#</td>
                                                <td>#getInfoOfOrder.city#</td>
                                                <td>#getInfoOfOrder.email#</td>
                                                <td>#getInfoOfOrder.pName#</td>
                                                <td>#getInfoOfOrder.cName#</td>
                                                <td>$#NumberFormat(getInfoOfOrder.pRate, "9,999.00")#</td>
                                                <td>#DateFormat(getInfoOfOrder.Date, "mm/dd/yyyy")#</td>
                                                <td>
                                                    <cfif #getInfoOfOrder.status# eq 0>
                                                        <i class="fa fa-times" aria-hidden="true"></i>
                                                    <cfelse>
                                                        <i class="fa fa-check" aria-hidden="true"></i>
                                                    </cfif>

                                                </td>

                                            </tr>
                                        </cfloop>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    
    
                    <!-- Update Tab -->
                    <!--- <cfdump var="#session#"> <cfabort> --->
                    <div class="tab-pane fade" id="update-tab-pane" role="tabpanel" aria-labelledby="update-tab" tabindex="0">
                        <h5 class="mb-3">Update Profile</h5>
                

                          
                  
                  
                          <!--- table  --->
                          <div class="container mt-3">
                              
                              
                         
                              <table class="table table-bordered mt-2">
                                  <thead>
                                      <tr>
                                          <th>NAME</th>
                                          <th>PHONE</th>
                                          <th>CITY</th>
                                          <th>PASSWORD</th>
                                          
                                          <th>ACTIONS</th>
                                      </tr>
                                  </thead>
                                  <tbody>
                                      <!--- <cfdump var="#Get_Emp#"> <cfabort> --->
                                      <cfloop query="durationPack">
                                          <tr>
                                              <td>#fullname#</td>
                                              <td>#phone#</td>
                                              <td>#city#</td>
                                              <td>*****<td>
                                             
                                                  <button type="button" class="btn btn-warning"> <a href="main/updateUserProfile?id=#id#" style="color: white; text-decoration:none">Update</a> </button>
                                                 
                                              
                                          </tr>
                                      </cfloop>
                                  </tbody>
                              </table>
                          </div>
                          <!--- <cfdump var="#durationPack#"> --->
                  
                    </div>
    

                  
                </div>
            </div>
        </div>
    </div>
    
  
  </section>
   
</cfoutput>
</body>
</html>