<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Payment Status Update</title>
    <!-- Latest compiled and minified CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

</head>

<body class="bg-dark text-light">
    <cfoutput>

        <cfset oID = 0>
        <cfset status = 0>

        <cfif structKeyExists(url, "oid") and url.oid GT 0>
            <cfquery name="Get_pack_By_Id">
                SELECT oid, status FROM `order`
                WHERE oid = #url.oid#;
            </cfquery>

            <!--- Query returns a record --->
            <cfif Get_pack_By_Id.recordCount GT 0>
                <cfset status = #Get_pack_By_Id.status#>
                <cfset oID = #Get_pack_By_Id.oid#>
            </cfif>
        </cfif>

        <div class="container mt-5">
            <div class="card bg-secondary shadow-lg">
                <div class="card-header bg-dark text-light">
                    <h5 class="card-title">Payment Status Update</h5>
                </div>
                <div class="card-body bg-light">
                    <div class="container mt-3">
                        <!-- Form to update order status -->
                        <cfform name="updateStatusForm" action="Main/orderStatus" method="post">
                            <cfinput type="hidden" name="oID" value="#oID#">
                            
                            <div class="mb-4">
                                <label for="status" class="form-label ">Update Status</label>
                                <div class="d-flex justify-content-center gap-3">
                                    <!-- Yes button sets status to 1 -->
                                    <cfinput type="submit" name="status" value="Confirm Payment" class="btn btn-success px-4 py-2" onclick="this.form.status.value='1'">
                                    <!-- No button sets status to 0 -->
                                    <cfinput type="submit" name="status" value="Reject Payment" class="btn btn-danger px-4 py-2" onclick="this.form.status.value='0'">
                                </div>
                            </div>
                        </cfform>
                    </div>
                </div>
            </div>
        </div>
    </cfoutput>
</body>

</html>
