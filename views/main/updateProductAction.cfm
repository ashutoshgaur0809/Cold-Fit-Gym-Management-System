<cfif structKeyExists(form, "pId") and structKeyExists(form, "pRate")>
    <!--- Update the product rate in the database --->
    <cfquery>
        UPDATE product 
        SET pRate = <cfqueryparam value="#form.pRate#" cfsqltype="cf_sql_decimal">
        WHERE pId = <cfqueryparam value="#form.pId#" cfsqltype="cf_sql_integer">
    </cfquery>

    <!-- Redirect to the product listing page -->
    <cflocation url="packAdmin.cfm?id=#url.id#" addtoken="false">
</cfif>