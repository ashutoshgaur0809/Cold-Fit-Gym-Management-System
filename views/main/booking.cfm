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
<link rel="stylesheet" href="https://unpkg.com/bs-brain@2.0.4/components/registrations/registration-9/assets/css/registration-9.css"
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    
  </head>
  <body class="bg-dark text-light">
  <cfoutput>
    <a href="main.src/index.cfm"><i class="fa fa-arrow-left m-4" style="color: white;"></i></a>
    <div class="col-12 bg-primary border-bottom border-white border-3 rounded mt-4">
      <div class="p-4 fw-bold text-center text-light">
        <i class="fas fa-calendar-alt"></i> Booking History
      </div>
    </div>
    
    
  <!-- Query to get the order information -->
  <cfquery name="getInfoOfOrder">
      SELECT * FROM `order`;
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
                  <th class="bg-secondary text-white">Actions</th>
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
                      <td>#NumberFormat(getInfoOfOrder.pRate, "9,999.00")# INR</td>
                      <td>#DateFormat(getInfoOfOrder.Date, "mm/dd/yyyy")#</td>
                      <td>
                          <cfif #getInfoOfOrder.status# eq 0>
                              <i class="fa fa-times" aria-hidden="true"></i>
                          <cfelse>
                              <i class="fa fa-check" aria-hidden="true"></i>
                          </cfif>

                      </td>
                      <td>
                        <button type="button" class="btn btn-warning"> <a href="#event.buildLink("main/orderform?oid=#oid#&del=0&id=#session.AdminID#")#" style="color: white; text-decoration:none">Update</a> </button>
                        <button type="button" class="btn btn-danger"><a href="#event.buildLink("main/orderdelete?oid=#oid#&del=1&id=#session.AdminID#")#" style="color: white; text-decoration:none">Delete</a></button>
                    </td>

                  </tr>
              </cfloop>
          </tbody>
      </table>
  </div>
</div>
</div>


    
  </cfoutput>
</body>
</html>