component extends="coldbox.system.EventHandler" {
	property name="aush" inject="AddService";

	/**
	 * Default Action
	 */
	function index( event, rc, prc ){
		prc.welcomeMessage = "ColdFit:GYM MS!";
		event.setView( "main/index" );
	}


	function AdminRegister(event, rc, prc) {
		// Get values from the form or event
		var fullname = event.getValue('fullname');
		var nemail = event.getValue('email');
		var phone = event.getValue('phone');
		var passkey = event.getValue("passkey");
		
		// Correct syntax for struct creation
		var formData = {
			fullname: fullname,
			email: nemail,
			phone: phone,
			passkey: passkey
		};
		
		// writeDump(formData);
	
		// Execute a query to check if the email exists
		var checkEmail = queryExecute(
			"SELECT * FROM adminreg WHERE email = :email",
			{
				email: nemail
			}
		);
	
		// If email not present, check if passkey = "xyz" then add to the database
		if (checkEmail.recordCount == 0) {
			if (formData.passkey == "xyz") {
				var addService = new models.AddService();
				var res = addService.insertAdmin(formData);
				event.setView("main/AdminLogin");
			} else {
				// If passkey is incorrect, redirect to the registration page
				event.setView("main/AdminRegistraion");
			}
		} else {
			// If email exists, check if the provided passkey matches
			var checkEmailPasskey = queryExecute(
				"SELECT * FROM adminreg WHERE email = :email AND passkey = :passkey",
				{
					email: nemail,
					passkey: passkey
				}
			);
	
			if (checkEmailPasskey.recordCount > 0) {
				// If passkey matches, redirect to the login page
				event.setView("main/AdminLogin");
			} else {
				// If passkey does not match, show an error page or message
				event.setView("main/AdminRegistraion");
			}
		}
	
		// Abort execution for debugging purposes
		// abort;
	}



	function CheckAdmin(event, rc, prc) {
    // Get the email and passkey from the form data
				var email = trim(event.getValue('email'));
				var passkey = trim(event.getValue('passkey'));

				// Execute the SQL query to check for matching email and passkey
				var getAdmin = queryExecute(
					"SELECT id, fullname, email FROM adminreg WHERE email = :email AND passkey = :passkey",
					{
						email: { value: email, cfsqltype: "cf_sql_varchar", maxlength: 100 },
						passkey: { value: passkey, cfsqltype: "cf_sql_varchar", maxlength: 100 }
					}
				);


				
				// If a matching record is found, set session variables and redirect
				if (getAdmin.recordCount gt 0) {



					session.AdminID = getAdmin.id;
					session.Adminname = getAdmin.fullname;
					session.Adminemail = getAdmin.email;
				

					//event.setView("main/src/index");
					
					event.setView("main/src/index");
					/* writeDump("ken");
					abort; */
				
				} else {
					// Show an alert if authentication fails
					var script = "
						<script>
							alert('Invalid email or password. Please try again.');
							history.back();
						</script>
					";
					writeOutput(script);
				}

				
			}

	
	
	


	

	// User Registration after email duplication check
	function register(event, rc, prc) {
		// Dump the rc object for debugging
		// writeDump(rc);
		// abort;
	
		// Retrieve individual form fields
		var fullname = event.getValue('fullname');
		var nemail = event.getValue('email');
		var phone = event.getValue('phone');
		var city = event.getValue('city');
		var password = event.getValue('password');
		var currentDateTime = DateFormat(now(), "yyyy-mm-dd") & " " & TimeFormat(now(), "HH:mm:ss");
		
		// Initialize the image path variable
		var profileImgPath = "";
	
		// Check if an image was uploaded
		if (structKeyExists(form, "image") AND len(trim(form.image))) {
			try {
				cffile(
					action = "upload",
					filefield = "image",
					destination = expandPath('/includes/j/assets/img/profile'),
					nameconflict = "MakeUnique",
					result = "profileResult"
				);
	
				// Capture the uploaded file's path
				profileImgPath = '/includes/j/assets/img/profile/' & profileResult.serverFile;
				// writeDump(profileResult);
	
			} catch (any e) {
				// Handle upload errors gracefully
				writeOutput("File upload failed: " & e.message);
				abort;
			}
		} else {
			writeOutput("No file uploaded.");
		}
	
		// Query to check if the email already exists
		var checkEmail = queryExecute("
			SELECT email 
			FROM registration 
			WHERE email = :email", 
			{email: nemail});
	
		// If the email does not exist, insert the new user
		if (checkEmail.recordCount EQ 0) {
			queryExecute("
				INSERT INTO registration (fullname, email, phone, city, password, date, profile_img) 
				VALUES (:fullname, :email, :phone, :city, :password, :date, :profile_img)",
				{ fullname=fullname,
				  email=nemail,
				  phone=phone,
				  city=city,
				  password=password,
				  date=currentDateTime,
				  profile_img=profileImgPath }
			);
	
			// Redirect to the sign-in page
			event.setView("main/sign_in");
		} else {
			// Set a flag in rc to indicate the email already exists
			rc.emailExists = true;
			rc.email = nemail;
	
			// Render the registration page again
			event.setView("main/index");
		}
	}
	
	
	

	

	// User Sign In after check email and password 
	function CheckUser(event, rc, prc) {
		// writeDump(rc);
	
		var nemail = event.getValue("email");
		var password = event.getValue("password");
	
		var checkEmailWithPass = queryExecute("
			SELECT *
			FROM registration
			WHERE email = :email AND password = :password",
			{email: nemail, password: password}
		);
		// writeDump(checkEmailWithPass);
		// abort;
	
		if (checkEmailWithPass.recordCount EQ 1) {
			// Access the result set using column names
			var getUser = checkEmailWithPass; // Get the first row of the result set
			// writeDump(getUser);
		
	
			// Set session variables
			SESSION.userID = getUser.ID;
			SESSION.name = getUser.FULLNAME;
			SESSION.email = getUser.EMAIL;
			SESSION.phone = getUser.PHONE;
			SESSION.city = getUser.CITY;
			SESSION.password = getUser.PASSWORD;
			SESSION.date = getUser.DATE;
			prc.profile_img = getUser.profile_img;
			// writeDump(prc);
			// abort;

	
			// Redirect to the afterLogin page
			event.setView("main/afterLogin");
		} else {
			// Handle the case where the user is not found
			rc.loginError = true; // Set an error flag
			event.setView("main/index"); // Redirect back to login
		}
	
		// Debugging information
		
	}

	// Update User
	function updateUser(event, rc, prc) {
        // Default values
        rc.id = 0;
        rc.fullname = "";
        rc.phone = "";
        rc.city = "";
        rc.password = "";
        rc.showNewPassword = false;

        // Check if an ID is provided in the URL
        if (event.paramValue("id", 0) GT 0) {
            var userId = event.paramValue("id");
            
            // Query to get user data
            var getUserById = queryExecute("
                SELECT id, fullname, phone, city, password 
                FROM registration
                WHERE id = :id",
                {id: userId}
            );
            
            if (getUserById.recordCount > 0) {
                // Assign data to the request context (rc)
                rc.id = getUserById.id;
                rc.fullname = getUserById.fullname;
                rc.phone = getUserById.phone;
                rc.city = getUserById.city;
                rc.password = getUserById.password;
            }
        }

        // Render the update form view
        event.setView("user/updateForm");
    }

	

    /**
     * Process the form submission to update user information
     */
    function updateUserProcess(event, rc, prc) {
		// writeDump(rc);
		// abort;
        var form = populateModel(rc); // Collect form data
		// writeDump(form);
		// abort;


        // Load existing user data for password comparison
        var userId = form.ID;
        var getUserById = queryExecute("
            SELECT password 
            FROM registration
            WHERE id = :id",
            {id: userId}
        );
        
        if (getUserById.recordCount > 0 && form.current_password EQ getUserById.password) {
            if (len(trim(form.new_password))) {
                // Update with a new password
                queryExecute("
                    UPDATE registration 
                    SET fullname = :fullname, phone = :phone, city = :city, password = :new_password
                    WHERE id = :id",
                    {
                        fullname: form.fullname,
                        phone: form.phone,
                        city: form.city,
                        new_password: form.new_password,
                        id: userId
                    }
                );
            } else {
                // Update without changing the password
                queryExecute("
                    UPDATE registration 
                    SET fullname = :fullname, phone = :phone, city = :city
                    WHERE id = :id",
                    {
                        fullname: form.fullname,
                        phone: form.phone,
                        city: form.city,
                        id: userId
                    }
                );
            }
            
            // Set a success message and redirect to the profile page
            event.setValue("message", "Info updated successfully!");
            
			event.setView("main/userProfile")
        } else {
            // Handle incorrect password
            event.setValue("error", "Current password is incorrect. Please try again.");
            event.setView("main/userProfile", {id: userId});
        }
    }


	// Admin Handling
	function updateProduct(event,rc,prc){
		// writeDump(rc);abort;
		var productName = event.getValue('pName');
		var productRate = event.getValue('pRate');
		var productId = event.getValue('pId');

		formData ={
			productName : productName,
			productRate : productRate,
			productId : productId
		};


		// writeDump(formData.productRate);
		// abort;


		var addService = new models.AddService();
		var res = addService.updateProductRate(formData);

		event.setView("main/packAdmin");




		// writedump(rc);
		// abort;

	}

	function submitNewPackInDB(event,rc,prc){
		// writeDump(rc);
		// abort;
		var newproductId = event.getValue("npid");
		var newproductName = event.getValue("npName");
		var newproductCategory = event.getValue("npCat");
		var newproductRate = event.getValue("npRate");

		formData = {
			newproductId : newproductId,
			newproductName : newproductName,
			newproductCategory : newproductCategory,
			newproductRate : newproductRate
			};

			var addService = new models.AddService();
			var res = addService.submitNewPackInDB(formData);

			event.setView("main/addpack")


	}

	function DelData(event,rc,prc){
		var del = trim(rc.del);
		var npid = trim(rc.npid);
		var deliT = {
			del = del,
			npid = npid
		}

		var addService = new models.AddService();
		var res = addService.deleteData(deliT);
		event.setView( "main/addpack");
	} 

	function orderStatus(event,rc,prc){
		// writedump(rc);
		// abort;
		var paymentState = rc.status;
		var oID = rc.OID;
		if(rc.status == "Reject Payment"){
			var status = "0";
		}
		else if(rc.status == "Confirm Payment"){
			var status = "1";
		}

		formdata = {
			status : status,
			oID : oID
		}

		var addService = new models.AddService();
		var res = addService.updatePaymentStatus(formdata)
		event.setView("main/booking")

		// writeDump(status);
		// writeDump(oID);
		// abort;
	}
	function updateAdminProcess(event, rc, prc){
		var form = populateModel(rc); // Collect form data
	
		// Load existing user data for password comparison
		var AdminId = form.ID;
		var getAdminById = queryExecute("
			SELECT passkey 
			FROM adminreg
			WHERE id = :id",
			{id: AdminId}
		);
	
		if (getAdminById.recordCount > 0 && form.current_passkey EQ getAdminById.passkey) {
			
			if (len(trim(form.new_passkey))) {
				// Update with a new password
				queryExecute("
					UPDATE adminreg 
					SET fullname = :fullname, phone = :phone, passkey = :new_passkey
					WHERE id = :id",
					{
						fullname: form.fullname,
						phone: form.phone,
						new_passkey: form.new_passkey,
						id: AdminId
					}
				);
			} else {
				// Update without changing the password
				queryExecute("
					UPDATE adminreg 
					SET fullname = :fullname, phone = :phone
					WHERE id = :id",
					{
						fullname: form.fullname,
						phone: form.phone,
						id: AdminId
					}
				);
			}
			
			// Set a success message and redirect to the profile page
			event.setValue("message", "Info updated successfully!");
            
			event.setView("main/AdminProfile")
        } else {
            // Handle incorrect password
            event.setValue("error", "Current password is incorrect. Please try again.");
            event.setView("main/AdminProfile", {id: AdminId});
        }
	}

	
	

	
	
	


	
  
	
	  

	/**
	 * Produce some restfulf data
	 */
	function data( event, rc, prc ){
		return [
			{ "id" : createUUID(), "name" : "Luis" },
			{ "id" : createUUID(), "name" : "Joe" },
			{ "id" : createUUID(), "name" : "Bob" },
			{ "id" : createUUID(), "name" : "Darth" }
		];
	}

	/**
	 * Relocation example
	 */
	function doSomething( event, rc, prc ){
		relocate( "main.index" );
	}

	/**
	 * --------------------------------------------------------------------------
	 * Implicit Actions
	 * --------------------------------------------------------------------------
	 * All the implicit actions below MUST be declared in the config/Coldbox.cfc in order to fire.
	 * https://coldbox.ortusbooks.com/getting-started/configuration/coldbox.cfc/configuration-directives/coldbox#implicit-event-settings
	 */

	function onAppInit( event, rc, prc ){
	}

	function onRequestStart( event, rc, prc ){
	}

	function onRequestEnd( event, rc, prc ){
	}

	function onSessionStart( event, rc, prc ){
	}

	function onSessionEnd( event, rc, prc ){
		var sessionScope     = event.getValue( "sessionReference" );
		var applicationScope = event.getValue( "applicationReference" );
	}

	function onException( event, rc, prc ){
		event.setHTTPHeader( statusCode = 500 );
		// Grab Exception From private request collection, placed by ColdBox Exception Handling
		var exception = prc.exception;
		// Place exception handler below:
	}
		}

