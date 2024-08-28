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

<style>
   .card {
            transition: transform 0.4s ease, box-shadow 0.5s ease;
        }

        .card:hover {
          border: 5px solid hsl(58, 100%, 50%);
          box-shadow: 0 0 10px rgba(0, 123, 255, 0.5); 
          transform: scale(1.05);
          /* filter: brightness(1.3) contrast(2); */
          cursor: pointer;
                }

        .card-title {
            transition: color 0.3s ease;
        }

        .card:hover .card-title {
            color: #f1556c;
        }

        .card-text span {
            transition: color 0.3s ease;
        }

        .card:hover .card-text span {
            color: #f1556c;
        }


</style>

</head>
<body class="bg-dark">

<cfoutput>
    <h1 class="text-center mb-4 mt-5 text-light">Categories</h1>
    
        <div class="container">
          <a href="main.src/index.cfm"><i class="fa fa-arrow-left m-4" style="color: white;"></i></a>
            <div class="album mt-5 mx-auto">
              <div class="container-fluid">
                <!-- Your card content -->
                <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
                  <!-- Card 1 -->
                  <a href="main/catDurationAdmin.cfm?id=#url.id#" style="text-decoration: none;">
                  <div class="col">
                    <div class="card shadow-sm ">
                      <img src="../../layouts/img/cat1.png" class="card-img-top" alt="">
                      
                    </div>
                  </div>
                </a>
                  <!-- Card 2 -->
                  <a  href="main/catAccessAdmin.cfm?id=#url.id#" style="text-decoration: none;">
                  <div class="col">
                    <div class="card shadow-sm ">
                      <img src="../../layouts/img/cat2.png" class="card-img-top" alt="">
                      
                    </div>
                  </div>
                </a>
                <a  href="main/catServiceAdmin.cfm?id=#url.id#"  style="text-decoration: none;">
                  <div class="col">
                    <div class="card shadow-sm">
                      <img src="../../layouts/img/cat3.png" class="card-img-top" alt="">
                      
                    </div>
                  </div>
                </div>
              </div>
              
            </a>

              
            </div>
          </div>

</cfoutput>
</body>


<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
  // jQuery event listener for back button
  $("#back-button").click(function() {
      history.back();  // Go back to the previous page in history
  });
</script>
</html>