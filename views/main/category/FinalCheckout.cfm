<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Checkout Form</title>
    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
        rel="stylesheet"
    />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <link
        rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
        integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
        crossorigin="anonymous"
        referrerpolicy="no-referrer"
    />
    <style>
        body {
            background-color: #f8f9fa;
        }
        .card-custom {
            background-color: #ffffff;
            border: none;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .btn-custom {
            background-color: #28a745;
            color: white;
            border-radius: 50px;
            transition: background-color 0.3s ease;
        }
        .btn-custom:hover {
            background-color: #218838;
        }
        .text-muted-custom {
            color: #6c757d;
        }
        .thank-you-card {
            background-color: #ffffff;
            border-radius: 10px;
            padding: 40px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
    <cfoutput>
        <!--- <cfdump var="#btnid#"> --->

      <!-- Fetch user and package information -->
            <cfquery name="userInfo">
            SELECT * 
            FROM registration 
            WHERE id = <cfqueryparam value="#session.userID#" cfsqltype="cf_sql_integer">
            </cfquery>
            <cfif structKeyExists(url, "btnid")>
            <cfquery name="fixpackInfo">
                SELECT * 
                FROM product
                WHERE pId = <cfqueryparam value="#url.btnid#" cfsqltype="cf_sql_integer">
            </cfquery>
                <cfquery name="insertOrder">
                    INSERT INTO `order` (
                        uName,
                        phone,
                        city,
                        email,
                        pName,
                        cName,
                        pRate,
                        Date
                    ) VALUES (
                        <cfqueryparam value="#userInfo.fullname#" cfsqltype="cf_sql_varchar">,
                        <cfqueryparam value="#userInfo.phone#" cfsqltype="cf_sql_varchar">,
                        <cfqueryparam value="#userInfo.city#" cfsqltype="cf_sql_varchar">,
                        <cfqueryparam value="#userInfo.email#" cfsqltype="cf_sql_varchar">,
                        <cfqueryparam value="#fixpackInfo.pName#" cfsqltype="cf_sql_varchar">,
                        <cfqueryparam value="#fixpackInfo.cName#" cfsqltype="cf_sql_varchar">,
                        <cfqueryparam value="#fixpackInfo.pRate#" cfsqltype="cf_sql_numeric">,
                        <cfqueryparam value="#NOW()#" cfsqltype="cf_sql_timestamp">
                    )
                </cfquery>
    </cfif>

    
   
        <!-- Check if form has been submitted -->
       

        <cfif structKeyExists(url, "npID")>
            <cfquery name="packInfo">
                SELECT * 
                FROM newpack
                WHERE npId = <cfqueryparam value="#npID#" cfsqltype="cf_sql_integer">
            </cfquery>
            <cfquery name="insertOrder">
                INSERT INTO `order` (
                    uName,
                    phone,
                    city,
                    email,
                    pName,
                    cName,
                    pRate,
                    Date
                ) VALUES (
                    <cfqueryparam value="#userInfo.fullname#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#userInfo.phone#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#userInfo.city#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#userInfo.email#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#packInfo.npName#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#packInfo.npCat#" cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value="#packInfo.npRate#" cfsqltype="cf_sql_numeric">,
                    <cfqueryparam value="#NOW()#" cfsqltype="cf_sql_timestamp">
                )
            </cfquery>
            </cfif>

        <div class="vh-100 d-flex justify-content-center align-items-center">
            <div class="col-md-6">
                <div class="thank-you-card">
                    <div class="mb-4 text-center">
                        <svg xmlns="http://www.w3.org/2000/svg" class="text-success" width="75" height="75"
                            fill="currentColor" class="bi bi-check-circle" viewBox="0 0 16 16">
                            <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" />
                            <path
                                d="M10.97 4.97a.235.235 0 0 0-.02.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-1.071-1.05z" />
                        </svg>
                    </div>
                    <div class="text-center">
                        <h1 class="mb-3">Thank You!</h1>
                        <p class="mb-4">Your order has been successfully placed. We have sent a confirmation email to your inbox.</p>
                        <a href="../main/afterLogin/cfm" class="btn btn-custom">Back to Home</a>
                    </div>
                </div>
            </div>
        </div>
    </cfoutput>
</body>
</html>
