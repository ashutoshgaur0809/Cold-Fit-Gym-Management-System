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
    select * from adminreg where id = #session.AdminID#
</cfquery>
  <!--- <cfdump var="#session#"><cfabort> --->
    <nav class="navbar bg-dark navbar-expand-lg sticky-top">
        <a href="main.src/index.cfm"><i class="fa fa-arrow-left m-4" style="color: white;"></i></a>

        <div class="container">
          <!-- Logo on the left -->
          <a class="navbar-brand text-light" href="##" id="fire_icon">
          
            <span style="font-family: Arial; font-size: 24px;">GYM <i class="fa-solid fa-dumbbell"></i> MS</span><br>
            <span style="font-family: Arial; font-size: 14px;">Gym Management System</span> <br>
            <span style="font-family: Arial; font-size: 14px;">Admin Profile</span>
        </a>
      
          <!-- Toggler button for small screens -->
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="##navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
      
          <!-- Navbar items on the right -->
         
             
              
              
            </ul>
            <div>
                <button class="btn btn-secondary " type="button" data-bs-toggle="dropdown" aria-expanded="false">
                  <p> #durationPack.fullname#</p>
                </button>
                
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
     
        
      <div class="col-12">
        <div class="card widget-card shadow-sm">
            <div class="card-body p-4">
                <!-- Tab Navigation -->
                <ul class="nav nav-tabs" id="profileTab" role="tablist">
                    <li class="nav-item" role="presentation">
                        <button class="nav-link active" id="overview-tab" data-bs-toggle="tab" data-bs-target="##overview-tab-pane" type="button" role="tab" aria-controls="overview-tab-pane" aria-selected="true">Overview</button>
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
    
                          
    
                            <!-- Email -->
                            <div class="col-5 col-md-3 bg-primary border-bottom border-white border-3 rounded-start">
                                <div class="p-4 fw-bold">
                                    <i class="fas fa-envelope"></i> Email
                                </div>
                            </div>
                            <div class="col-7 col-md-9 bg-secondary border-bottom border-white border-3 rounded-end">
                                <div class="p-4">#durationPack.email#</div>
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
                                              <td>*****<td>
                                             
                                                  <button type="button" class="btn btn-warning"> <a href="main/UpdateAdminProfile.cfm?id=#id#" style="color: white; text-decoration:none">Update</a> </button>
                                                 
                                              
                                          </tr>
                                      </cfloop>
                                  </tbody>
                              </table>
                          </div>
                          <!--- <cfdump var="#durationPack#"> --->
                  
                    </div>
    
                    <!-- Email Tab -->
                    <div class="tab-pane fade" id="email-tab-pane" role="tabpanel" aria-labelledby="email-tab" tabindex="0">
                        <form action="##">
                            <fieldset class="row gy-3 gy-md-0">
                                <legend class="col-form-label col-12 col-md-3 col-xl-2">Email Alerts</legend>
                                <div class="col-12 col-md-9 col-xl-10">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" id="emailChange">
                                        <label class="form-check-label" for="emailChange">
                                            Email Changed
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" id="passwordChange">
                                        <label class="form-check-label" for="passwordChange">
                                            Password Changed
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" id="weeklyNewsletter">
                                        <label class="form-check-label" for="weeklyNewsletter">
                                            Weekly Newsletter
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" id="productPromotions">
                                        <label class="form-check-label" for="productPromotions">
                                            Product Promotions
                                        </label>
                                    </div>
                                </div>
                            </fieldset>
                            <div class="row">
                                <div class="col-12">
                                    <button type="submit" class="btn btn-primary mt-4">Save Changes</button>
                                </div>
                            </div>
                        </form>
                    </div>
    
                    <!-- Password Tab -->
                    <div class="tab-pane fade" id="password-tab-pane" role="tabpanel" aria-labelledby="password-tab" tabindex="0">
                        <form action="##">
                            <div class="row gy-3 gy-xxl-4">
                                <div class="col-12">
                                    <label for="currentPassword" class="form-label">Current Password</label>
                                    <input type="password" class="form-control" id="currentPassword">
                                </div>
                                <div class="col-12">
                                    <label for="newPassword" class="form-label">New Password</label>
                                    <input type="password" class="form-control" id="newPassword">
                                </div>
                                <div class="col-12">
                                    <label for="confirmPassword" class="form-label">Confirm Password</label>
                                    <input type="password" class="form-control" id="confirmPassword">
                                </div>
                                <div class="col-12">
                                    <button type="submit" class="btn btn-primary">Change Password</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
  
  </section>
</cfoutput>
</body>
</html>