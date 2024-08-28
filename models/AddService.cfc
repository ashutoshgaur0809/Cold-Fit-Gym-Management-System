/**
 * I am a new service
 */
component singleton {

	// DI

	/**
	 * Constructor
	 */
	AddService function init(){
		
		return this;
	};

	public any function updateProductRate(struct formdata){
		// writeDump(formdata);
	
		var q  = new query();
		q.addParam(name = "pRate", value = arguments.formdata.productRate, cfsqltype = "varchar");
		q.addParam(name = "pId", value = arguments.formdata.productId, cfsqltype="int");
		var sql = "update product set pRate=:pRate where pId = :pId";
		q.setSQL(sql);
		var r = q.execute().getPrefix();
		return r;
	};

	public any function insertAdmin(struct formData) {
        // writeDump(arguments);
		var q = new query();
		q.addParam(name="fullname",value=arguments.formData.fullname, cfsqltype="varchar");
		q.addParam(name="email",value=arguments.formData.email, cfsqltype="varchar");
		q.addParam(name="phone",value=arguments.formData.phone, cfsqltype="varchar");
		q.addParam(name="passkey",value=arguments.formData.passkey, cfsqltype="varchar");
		var sql = "insert into adminreg (fullname, email, phone, passkey) values (:fullname,:email,:phone,:passkey)"
		q.setSQL(sql);
		var r = q.execute().getPrefix();
		return r;
        // abort;
    }

	public any function insertUser (struct formData){
		writeDump(arguments);
        abort;
		// writeDump(formData);
		var q  = new query();
		q.addParam(name = "fullname", value = arguments.formdata.fullname, cfsqltype = "varchar");
		q.addParam(name = "email", value = arguments.formdata.email, cfsqltype = "varchar");
		q.addParam(name = "email", value = arguments.formdata.email, cfsqltype = "varchar");
		q.addParam(name = "salary", value = arguments.formdata.salary, cfsqltype = "decimal");
		var sql = "insert into emp_new (FIRST_NAME,LAST_NAME,EMAIL,SALARY) values (:fullname,:lname,:email,:salary)"
		q.setSQL(sql);
		var r = q.execute().getPrefix();
		return r;
		

	}

	public any function submitNewPackInDB ( struct formdata ){
		// writeDump(arguments);
		// abort;
		if(arguments.formdata.newproductId != "0"){
		var q  = new query();
		q.addParam(name = "npName", value = arguments.formdata.newproductName, cfsqltype = "varchar");
		q.addParam(name = "npCat", value = arguments.formdata.newproductCategory, cfsqltype = "varchar");
		q.addParam(name = "npRate", value = arguments.formdata.newproductRate, cfsqltype = "varchar");
		q.addParam(name = "npID", value = arguments.formdata.newproductId, cfsqltype="int");
		var sql = "update newpack set npName=:npName, npCat =:npCat,npRate= :npRate where npID = :npID";
		q.setSQL(sql);
		var r = q.execute().getPrefix();
		return r;
		}
		
		else{	
		var q  = new query();
		q.addParam(name = "npName", value = arguments.formdata.newproductName, cfsqltype = "varchar");
		q.addParam(name = "npCat", value = arguments.formdata.newproductCategory, cfsqltype = "varchar");
		q.addParam(name = "npRate", value = arguments.formdata.newproductRate, cfsqltype = "varchar");
		var sql = "insert into newpack (npName,npCat,npRate) values (:npName,:npCat,:npRate)"
		q.setSQL(sql);
		var r = q.execute().getPrefix();
		return r;
		}

		//crud
		<!--- writeDump(formdata);
		abort;
		return "hello ashutosh 3" --->
	}

	public any function deleteData (struct deliT){
		if (arguments.deliT.del > 0) {
			var q = new query();
			q.addParam(name = "npid", value = arguments.deliT.npid, cfsqltype="int");
			var sql = "delete from newpack where npid = :npid";
			q.setSQL(sql);
			var r = q.execute().getPrefix();
			return r;
			
		}
		else {
			// If no valid ID is provided, return an error message
			return "No valid ID provided for deletion.";
		}

	}

	public any function updatePaymentStatus(struct orderDetails) {
		// Check if oID is present and greater than 0
		if (arguments.orderDetails.oID GT 0) {
			// Initialize a new query object
			var q = new query();
			
			// Add parameters for the query
			q.addParam(name = "status", value = arguments.orderDetails.status, cfsqltype = "boolean");
			q.addParam(name = "oID", value = arguments.orderDetails.oID, cfsqltype = "int");
			
			// Define the SQL query
			var sql = "UPDATE `order` SET status = :status WHERE oID = :oID";
			
			// Set the SQL statement in the query object
			q.setSQL(sql);
			
			// Execute the query and return the result
			var result = q.execute().getPrefix();
			return result;
		} 
		else {
			// If no valid oID is provided, return an error message
			return "No valid oID provided for update.";
		}
	}
	


	/**
	 * getAll
	 */
	function getAll(){

	}


}