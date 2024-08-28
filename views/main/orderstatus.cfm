<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- Latest compiled and minified CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

</head>

<body class="bg-dark text-light">
    <!--- Increment in Category table according to category --->

    <cfif structKeyExists(form, "oID") and form.oID GT 0>
        <!-- Update existing record -->
        <cfquery name="updateorderstatus">
            UPDATE `order`
            SET
                status = <cfqueryparam value="#form.status#" cfsqltype="cf_sql_boolean">
            WHERE oID = <cfqueryparam value="#form.oID#" cfsqltype="cf_sql_integer">
        </cfquery>
        
    
        
    </cfif>

    <!-- Redirect back to addPack.cfm after processing -->
    <cflocation url="booking.cfm?id=#url.id#">
</body>

</html>
