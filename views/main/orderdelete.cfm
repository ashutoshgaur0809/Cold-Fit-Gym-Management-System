<cfif structKeyExists(url, "oid") and url.oid GT 0 and url.del EQ 1>
    <!--- Fetch the category of the package to be deleted --->
    <cfquery name="getPackageCategory">
        SELECT oid 
        FROM `order` 
        WHERE oid = <cfqueryparam value="#url.oid#" cfsqltype="cf_sql_integer">
    </cfquery>

    <!--- Delete the package --->
    <cfquery name="delEmp">
        DELETE FROM `order` 
        WHERE oid = <cfqueryparam value="#url.oid#" cfsqltype="cf_sql_integer">;
    </cfquery>

    <!--- Decrement the cPack value based on the category of the deleted package --->
   

    <!--- Redirect to the addPack.cfm page --->
    <cflocation url="booking.cfm?id=#url.id#">
</cfif>
