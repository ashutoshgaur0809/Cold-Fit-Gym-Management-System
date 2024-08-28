<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Form</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

    <!-- Dark Theme Custom Styles -->
    <style>
        body {
            background-color: #121212;
            color: #ffffff;
        }

        .form-control,
        .btn-primary {
            background-color: #333;
            color: #fff;
            border: none;
        }

        .form-control:focus {
            background-color: #444;
            color: #fff;
            border: 1px solid #555;
            box-shadow: none;
        }

        .btn-primary {
            background-color: #1a73e8;
            border-color: #1a73e8;
        }

        .btn-primary:hover {
            background-color: #135ab6;
            border-color: #135ab6;
        }

        .modal-header,
        .modal-body {
            background-color: #1f1f1f;
            border: none;
        }

        .container {
            background-color: #1f1f1f;
            padding: 20px;
            border-radius: 10px;
        }
    </style>
</head>

<body>
    <cfoutput>
        <cfset ID = 0> 
        <cfset fullname=""> 
        <cfset phone=""> 
        <cfset city=""> 
        <cfset password=""> 
        <!--- <cfdump var="#url#"> --->
        <cfif structKeyExists(url,"id") and url.id GT 0>
            <cfquery name="Get_Emp_By_Id">
                SELECT id, fullname, phone, city, password
                FROM registration
                where id = #url.id#;
            </cfquery>
            <!--- <cfdump var="#Get_Emp_By_Id#"><cfabort> --->

            <!--- Query ka output ho tab yani Query kuch return --->
            <cfif Get_Emp_By_Id.recordCount GT 0>
                <cfset fullname=#Get_Emp_By_Id.fullname#>    
                <cfset phone=#Get_Emp_By_Id.phone#> 
                <cfset city=#Get_Emp_By_Id.city#> 
                <cfset password=#Get_Emp_By_Id.password#> 
                <cfset id = #Get_Emp_By_Id.id#>

            </cfif>
        </cfif>
    
    <div class="container">
        <div class="modal-header">
            <h5 class="modal-title p-5" id="exampleModalLabel">Update User Information</h5>
        </div>
        <div class="modal-body">
            <div class="container mt-3">
                <form name="insertEmp" method="post" action="#event.buildLink('Main/updateUserProcess')#">
                    <input type="hidden" name="ID" class="form-control" value="#rc.id#">

                    Full Name:
                    <input type="text" name="fullname" class="form-control" value="#fullname#">
                    <br><br>

                    Phone:
                    <input type="text" name="phone" class="form-control" value="#phone#">
                    <br><br>

                    City:
                    <input type="text" name="city" class="form-control" value="#city#">
                    <br><br>

                    Enter Current Password:
                    <input type="password" name="current_password" class="form-control">
                    <br><br>

                    New Password:
                    <input type="password" name="new_password" class="form-control">
                    <br><br>

                    <input type="submit" name="btnSubmit" value="Submit" class="btn btn-primary">
                </form>

               
            </div>
        </div>
    </div>

    <cfif structKeyExists(rc, "error")>
        <div class="alert alert-danger mt-3">
            #rc.error#
        </div>
    </cfif>

    <!-- Display success messages -->
    <cfif structKeyExists(rc, "message")>
        <div class="alert alert-success mt-3">
            #rc.message#
        </div>
    </cfif>
</cfoutput>
</body>

</html>
