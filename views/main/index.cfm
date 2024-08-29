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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<link rel="stylesheet" href="https://unpkg.com/bs-brain@2.0.4/components/registrations/registration-9/assets/css/registration-9.css">
</head>


<cfoutput>



<body class="bg-dark">
  <cfset fullname= "">
  <cfset email= "">
  <cfset phone= "">
  <cfset city= "">
  <cfset image= "">
  <cfset password= "">
  <cfset dateTime= "">

    <!-- Registration 9 - Bootstrap Brain Component -->
<section class="bg-dark py-3 py-md-5 py-xl-8">
    <div class="container">
      <div class="row gy-4 align-items-center">
        <div class="col-12 col-md-6 col-xl-7">
          <div class="d-flex justify-content-center text-bg-dark">
            
            
            <div class="col-12 col-xl-9">
              <!--- <i class="fa-solid fa-arrow-left-long"></i> <br><br> --->
              <img class="img-fluid rounded mb-4" loading="lazy" src="../../layouts/img/logo.png" width="245" height="80" alt="GYM MS">
              <hr class="border-dark-subtle mb-4">
              <h2 class="h1 mb-4">GYM MS</h2>
              <p class="lead mb-5">Gym management involves overseeing memberships, scheduling, equipment, staff, finances, and customer service to ensure a smooth, efficient fitness experience.</p>
              <a href="#event.buildLink('main/sign_in')#"><i class="fa-solid fa-arrow-left-long"></i></a>
            </div>
          </div>
        </div>
        <div class="col-12 col-md-6 col-xl-5">
          <div class="card border-0 rounded-4">
            <div class="card-body p-3 p-md-4 p-xl-5">
              <div class="row">
                <div class="col-12">
                  <div class="mb-4">
                    <h2 class="h3">Registration</h2>
                    <h3 class="fs-6 fw-normal text-secondary m-0">Enter your details to register</h3>
                  </div>
                </div>
              </div>
              <form action="#event.buildLink("Main/register")#" name="insertUser" method="post" enctype="multipart/form-data">
                <div class="row gy-3 overflow-hidden">
                  <div class="col-12">
                    <div class="form-floating mb-3">
                      <input type="text" class="form-control" name="fullname" id="firstName" placeholder="First Name" value="#fullname#" required>
                      <label for="firstName" class="form-label">Full Name</label>
                    </div>
                  </div>
                  
                  <div class="col-12">
                    <div class="form-floating mb-3">
                      <input type="email" class="form-control" name="email" id="email" placeholder="name@example.com" value="#email#" required>
                      <label for="email" class="form-label">Email</label>
                    </div>
                  </div>
                  <div class="col-12">
                    <div class="form-floating mb-3">
                      <input type="phone" class="form-control" name="phone" id="phone" placeholder="Phone" value="#phone#" required>
                      <label for="phone" class="form-label">Phone</label>
                    </div>
                  </div>
                  <div class="col-12">
                    <div class="form-floating mb-3">
                      <input type="text" class="form-control" name="city" id="city" placeholder="city" value="#city#" required>
                      <label for="city" class="form-label">City</label>
                    </div>
                  </div>
                  <div class="col-12">
                    <div class="form-floating mb-3">
                      <input type="file" class="form-control"  name="image" id="image" placeholder="image" value="#image#" required>
                      <label for="image" class="form-label">Upload Image</label>
                    </div>
                  </div>
                  <div class="col-12">
                    <div class="form-floating mb-3">
                      <input type="password" class="form-control" name="password" id="password" value="" placeholder="Password" value="#password#" required>
                      <label for="password" class="form-label">Password</label>
                    </div>
                  </div>
                  <div class="col-12">
                    <div class="form-check">
                      <input class="form-check-input" type="checkbox" value="" name="iAgree" id="iAgree" required>
                      <label class="form-check-label text-secondary" for="iAgree">
                        I agree to the <a href="##" class="link-dark text-decoration-none">terms and conditions</a>
                      </label>
                    </div>
                  </div>
                  <div class="col-12">
                    <div class="d-grid">
                      <button class="btn btn-dark btn-lg" type="submit">Sign up</button>
                    </div>
                  </div>
                </div>
              </form>
              <div class="row">
                <div class="col-12">
                  <div class="d-flex gap-2 gap-md-4 flex-column flex-md-row justify-content-md-end mt-4">
                    <p class="m-0 text-secondary text-center">Already have an account? <a href="#event.buildLink('main/sign_in')#" class="link-dark text-decoration-none">Sign in</a></p>
                    <p class="m-0 text-secondary text-center">Want to register as Admin? <a href="main/AdminRegistraion/cfm" class="link-dark text-decoration-none">Admin</a></p>
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-12">
                  <p class="mt-4 mb-4">Or continue with</p>
                  <div class="d-flex gap-2 gap-sm-3 justify-content-centerX">
                    <a href="##" class="btn btn-outline-danger bsb-btn-circle bsb-btn-circle-2xl">
                      <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-google" viewBox="0 0 16 16">
                        <path d="M15.545 6.558a9.42 9.42 0 0 1 .139 1.626c0 2.434-.87 4.492-2.384 5.885h.002C11.978 15.292 10.158 16 8 16A8 8 0 1 1 8 0a7.689 7.689 0 0 1 5.352 2.082l-2.284 2.284A4.347 4.347 0 0 0 8 3.166c-2.087 0-3.86 1.408-4.492 3.304a4.792 4.792 0 0 0 0 3.063h.003c.635 1.893 2.405 3.301 4.492 3.301 1.078 0 2.004-.276 2.722-.764h-.003a3.702 3.702 0 0 0 1.599-2.431H8v-3.08h7.545z" />
                      </svg>
                    </a>
                    <a href="##" class="btn btn-outline-dark bsb-btn-circle bsb-btn-circle-2xl">
                      <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-facebook" viewBox="0 0 16 16">
                        <path d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z" />
                      </svg>
                    </a>
                    <a href="##" class="btn btn-outline-dark bsb-btn-circle bsb-btn-circle-2xl">
                      <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-apple" viewBox="0 0 16 16">
                        <path d="M11.182.008C11.148-.03 9.923.023 8.857 1.18c-1.066 1.156-.902 2.482-.878 2.516.024.034 1.52.087 2.475-1.258.955-1.345.762-2.391.728-2.43Zm3.314 11.733c-.048-.096-2.325-1.234-2.113-3.422.212-2.189 1.675-2.789 1.698-2.854.023-.065-.597-.79-1.254-1.157a3.692 3.692 0 0 0-1.563-.434c-.108-.003-.483-.095-1.254.116-.508.139-1.653.589-1.968.607-.316.018-1.256-.522-2.267-.665-.647-.125-1.333.131-1.824.328-.49.196-1.422.754-2.074 2.237-.652 1.482-.311 3.83-.067 4.56.244.729.625 1.924 1.273 2.796.576.984 1.34 1.667 1.659 1.899.319.232 1.219.386 1.843.067.502-.308 1.408-.485 1.766-.472.357.013 1.061.154 1.782.539.571.197 1.111.115 1.652-.105.541-.221 1.324-1.059 2.238-2.758.347-.79.505-1.217.473-1.282Z" />
                        <path d="M11.182.008C11.148-.03 9.923.023 8.857 1.18c-1.066 1.156-.902 2.482-.878 2.516.024.034 1.52.087 2.475-1.258.955-1.345.762-2.391.728-2.43Zm3.314 11.733c-.048-.096-2.325-1.234-2.113-3.422.212-2.189 1.675-2.789 1.698-2.854.023-.065-.597-.79-1.254-1.157a3.692 3.692 0 0 0-1.563-.434c-.108-.003-.483-.095-1.254.116-.508.139-1.653.589-1.968.607-.316.018-1.256-.522-2.267-.665-.647-.125-1.333.131-1.824.328-.49.196-1.422.754-2.074 2.237-.652 1.482-.311 3.83-.067 4.56.244.729.625 1.924 1.273 2.796.576.984 1.34 1.667 1.659 1.899.319.232 1.219.386 1.843.067.502-.308 1.408-.485 1.766-.472.357.013 1.061.154 1.782.539.571.197 1.111.115 1.652-.105.541-.221 1.324-1.059 2.238-2.758.347-.79.505-1.217.473-1.282Z" />
                      </svg>
                    </a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!--- <cfif rc.emailExists>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            var email = '<cfoutput>#rc.email#</cfoutput>';
            alert('The email ' + email + ' already exists. Please use a different email address.');
        });
    </script>
  
    </cfif> --->
    

  <!-- Modal HTML -->

  <!-- Modal HTML -->
<!--- <div class="modal fade" id="emailExistsModal" tabindex="-1" aria-labelledby="emailExistsModalLabel" aria-hidden="true">
	<div class="modal-dialog">
	  <div class="modal-content">
		<div class="modal-header">
		  <h5 class="modal-title" id="emailExistsModalLabel">Email Already Exists</h5>
		  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		</div>
		<div class="modal-body">
		  The email '<cfoutput>#rc.email#</cfoutput>' already exists. Please use a different email address.
		</div>
		<div class="modal-footer">
		  <button type="button" class="btn btn-primary" onclick="window.location.href='register.cfm';">OK</button>
		</div>
	  </div>
	</div>
  </div>
  
  <cfif rc.emailExists>
  <script>
	document.addEventListener('DOMContentLoaded', function() {
	  var emailExistsModal = new bootstrap.Modal(document.getElementById('emailExistsModal'));
	  emailExistsModal.show();
	});
  </script>
  </cfif> --->
    
</body>
</cfoutput>>
</html>