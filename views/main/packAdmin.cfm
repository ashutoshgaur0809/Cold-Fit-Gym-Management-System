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
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>


<style>
      .styled-nav {
        position: relative;
        background-image: linear-gradient(gold,gold);
        background-size: 100% 3px;
        background-repeat: no-repeat;
        background-position: 100% 100%;
        transition: background-size 0.7s, background-position 0.5s ease-in-out;
    }

    .styled-nav:hover {
        background-size: 100% 100%;
        background-position: 0% 100%;
        transition: background-position 0.7s, background-size 0.5s ease-in-out;
    }
      .styled-graph {
        position: relative;
        background-image: linear-gradient(white,gold);
        background-size: 100% 3px;
        background-repeat: no-repeat;
        background-position: 100% 100%;
        transition: background-size 0.7s, background-position 0.5s ease-in-out;
    }

    .styled-graph:hover {
        background-size: 100% 100%;
        background-position: 0% 100%;
        transition: background-position 0.7s, background-size 0.5s ease-in-out;
    }
</style>
<body class="bg-dark">
    <cfoutput>


        <!--- Query to fetch data --->
        <cfquery name="getPackage">
            select * from product 
            
        </cfquery>
        <div class="container mt-3">
            <a href="main.src/index.cfm"><i class="fa fa-arrow-left m-4" style="color: white;"></i></a>
            <br>
    
                <h2 class=" text-center text-light bg-primary styled-nav">Fixed Packages</h2>
                
                <!-- Product Table -->
                <table class="table table-bordered mt-2">
                    <thead class="bg-dark text-light">
                        <tr class="bg-dark text-light">
                            <th class="bg-primary text-light">PRODUCT ID</th>
                            <th class="bg-primary text-light">PRODUCT NAME</th>
                            <th class="bg-primary text-light">CATEGORY NAME</th>
                            <th class="bg-primary text-light" >PRODUCT RATE</th>
                            <th class="bg-primary text-light">ACTIONS</th>
                        </tr>
                    </thead>
                    <tbody>
                        <cfloop query="getPackage">
                            <tr>
                                <td>#pId#</td>
                                <td>#pName#</td>
                                <td>#cName#</td>
                                <td>#NumberFormat(pRate, "9,99900")# INR</td>
                                <td>                                                                      
                                    <button type="button" class="btn btn-warning"> <a href="#event.buildLink("main/updateProductRate.cfm?pId=#pId#&id=#session.AdminID#")#" style="color: white; text-decoration:none">Update</a> </button>
                                </td>
                           
                                
                            </tr>
                        </cfloop>
                    </tbody>
                </table>

                <div class="mt-5 styled-graph">
                    <canvas id="productRateChart"></canvas>
                </div>
            </div>
            
            <script>
                // Prepare data for the chart from ColdFusion query
                var productNames = [
                    <cfoutput query="getPackage">"#pName#"<cfif currentRow LT recordCount>,</cfif></cfoutput>
                ];
                var productRates = [
                    <cfoutput query="getPackage">#pRate#<cfif currentRow LT recordCount>,</cfif></cfoutput>
                ];
            
                // Create the chart
                var ctx = document.getElementById('productRateChart').getContext('2d');
                var productRateChart = new Chart(ctx, {
                    type: 'line', // You can change this to 'line' if you prefer a line chart
                    data: {
                        labels: productNames,
                        datasets: [{
                            label: 'Product Rate',
                            data: productRates,
                            backgroundColor: 'rgba(0, 0, 0)',
                            borderColor: 'rgba(0, 0, 50, 1)',
                            borderWidth: 1
                        }]
                    },
                    options: {
                        scales: {
                            y: {
                                beginAtZero: true,
                                title: {
                                    display: true,
                                    text: 'Product Rate ($)'
                                }
                            },
                            x: {
                                title: {
                                    display: true,
                                    text: 'Product Name'
                                }
                            }
                        }
                    }
                });
            </script>

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