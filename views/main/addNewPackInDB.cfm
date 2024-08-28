

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

    <!--- Increment in Category table according to category  --->
    
<cfif structKeyExists(form,"npID") and form.npID GT 0>
    <cfquery name="UpdateEmp">
        UPDATE newpack SET
        npName = <cfqueryparam value="#npName#" cfsqltype="cf_sql_varchar">,
     
        npRate = <cfqueryparam value="#npRate#" cfsqltype="cf_sql_integer">
    WHERE npID = <cfqueryparam value="#npid#" cfsqltype="cf_sql_integer">
   
    </cfquery>
<cfelse>
    <cfquery name="insertEmp">
        INSERT INTO newpack(npName,npCat,npRate) VALUE ("#form.npName#","#form.npCat#","#form.npRate#");
    </cfquery>


</cfif>
<cfif structKeyExists(form, "npCat")>
        <cfset categoryName = form.npCat>
        
        <cfif categoryName EQ "Duration" OR categoryName EQ "Access" OR categoryName EQ "Service">
            <cfquery name="incCategoryPack">
                UPDATE category 
                SET cPack = cPack + 1
                WHERE cName = <cfqueryparam value="#categoryName#" cfsqltype="cf_sql_varchar">
            </cfquery>
        </cfif>
</cfif>

<cflocation url = "addPack.cfm?&id=#url.id#" >
</body>
