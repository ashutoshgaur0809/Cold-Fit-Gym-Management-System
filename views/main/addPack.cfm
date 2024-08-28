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
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

<style>

</style>
</head>
<body class="bg-dark text-light">
    <cfoutput>
        <cfquery name="newPack">
            SELECT npid,npName,npCat,npRate FROM newpack;
        </cfquery>
        <!--- <cfdump var="#newPack#"><cfabort> --->
    
        <div class="container mt-3">
            <h2>New Arrivals</h2>
            <a href="main.src/index.cfm"><i class="fa fa-arrow-left m-4" style="color: white;"></i></a>
            
        <div class="container mt-3">
            
            <!-- Button triggers modal using JavaScript -->
            <button type="button" class="btn btn-primary open-modal">
                <!--- <a href="#event.buildLink("main/updateProductRate.cfm?pId=#pId#&id=#session.AdminID#")#" style="color: white; text-decoration:none">Update</a>  --->
               <a href="#event.buildLink("main/newpackform.cfm?npid=0&del=0&id=#session.AdminID#")#" style="color: white; text-decoration:none">Add</a> 
            </button>
        </div>
            <table class="table table-bordered mt-2 ">
                <thead>
                    <tr>
                     
                        <th class="bg-dark text-light ">Package Name</th>
                        <th class="bg-dark text-light ">Package Category</th>
                        <th class="bg-dark text-light ">Package Rate</th>
                        <th class="bg-dark text-light ">Action</th>
                    </tr>
                </thead>
                <tbody>
                    <!--- <cfdump var="#Get_Emp#"> <cfabort> --->
                    <cfloop query="newPack">
                        <tr>
                          
                            <td>#npName#</td>
                            <td>#npCat#</td>
                            <td>#npRate#</td>
                            <td>
                                <button type="button" class="btn btn-warning"> <a href="#event.buildLink("main/newpackform?npid=#npid#&del=0&id=#session.AdminID#")#" style="color: white; text-decoration:none">Update</a> </button>
                                <button type="button" class="btn btn-danger"><a href="#event.buildLink("main/delete?npid=#npid#&del=1&id=#session.AdminID#")#" style="color: white; text-decoration:none">Delete</a></button>
                            </td>
                        </tr>
                    </cfloop>
                </tbody>
            </table>
        </div>
    
        <div class="modal fade myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
        </div>
    
    </cfoutput>


</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
  // jQuery event listener for back button
  $("#back-button").click(function() {
      history.back();  // Go back to the previous page in history
  });
</script>
</html>