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

<style></style>

<body class="bg-dark text-light">
    <!--- <cfdump var="#URL.pId#"> --->
    <div class="container mt-5">
        <h2 class="text-center bg-light text-dark">Update Product Rate</h2>

        <cfoutput>
            <!-- Fetch the product details based on the passed pId -->
            <cfquery name="getProductDetails">
                SELECT * FROM product WHERE pId = #URL.pId#
            </cfquery>
            <!--- <cfdump var="#getProductDetails#">  --->

            <!-- Update Form -->
    
            <form action="#event.buildLink("Main/updateProduct")#">
                <!--- <input type="hidden" name="pId" class="form-control" value="#getProductDetails.pId#">  --->
                <div class="mb-3">
                    <label for="pName" class="form-label text-light">Product Name</label>
                    <input type="text" class="form-control" id="pName" name="pName" value="#getProductDetails.pName#" readonly>
                </div>
                <div class="mb-3">
                    <label for="pRate" class="form-label text-light">Product Rate (INR)</label>
                    <input type="text" class="form-control" id="pRate" name="pRate" value="#getProductDetails.pRate#" required>
                </div>
                <input type="hidden" name="pId" value="#getProductDetails.pId#">
                <button type="submit" class="btn btn-primary">Update Rate</button>
            </form>
        </cfoutput>
    </div>
</body>
</html>
