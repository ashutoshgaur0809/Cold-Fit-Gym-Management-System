
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
    <cfoutput>
 
    <cfset npID = 0> 
    <cfset npName=""> 
    <cfset npCat=""> 
    <cfset npRate=""> 
 
    <cfif structKeyExists(url,"npid") and url.npid GT 0 >
        <cfquery name="Get_pack_By_Id">
             SELECT npid,npName,npCat,npRate FROM newpack
             where npid = #url.npid#;
        </cfquery>
        

        <!--- Query ka output ho tab yani Query kuch return --->
        <cfif Get_pack_By_Id.recordCount GT 0>
            <cfset npName=#Get_pack_By_Id.npName#> 
            <cfset npCat=#Get_pack_By_Id.npCat#> 
            <cfset npRate=#Get_pack_By_Id.npRate#> 
            <cfset npID = #Get_pack_By_Id.npid#> 
        </cfif>
    </cfif>
    
    <div class="container">
    <div class="modal-header">
        <h class="modal-title p-5 text-light" id="exampleModalLabel">Insert in Table</h                                                                                                             5>
        
    </div>
    <div class="modal-body">
        <div class="container mt-3 text-light">
            <cfform name="insertPack" action="Main/submitNewPackInDB">
                <cfinput type="hidden" name="npID" class="form-control " value="#npID#"> 
                Full Name : 
                <cfinput type="text" name="npName" class="form-control" value="#npName#"> <br> <br>
                npCat :
                <cfinput type="text" name="npCat" class="form-control" value="#npCat#"> <br> <br>
                npRate :
                <cfinput type="text" name="npRate" class="form-control" value="#npRate#"> <br> <br> 
            
                
                
            
                <cfinput type="submit" name="btnSubmit" value="Submit" class="btn btn-primary">
            </cfform>
        
        </div>
    </div>

    </div>
    </div>
</cfoutput>

</body>
</html>