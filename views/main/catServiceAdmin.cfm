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

        <cfquery name="ServicePack">
            select * from product where cName="Service"
        </cfquery>


        <!--- table  --->
        <div class="container mt-3">
            <a href="main.src/index.cfm"><i class="fa fa-arrow-left m-4" style="color: white;"></i></a>
            <h2 class="text-center bg-light">Service Packages</h2>
            
            <!-- Product Table -->
            <table class="table table-bordered mt-2">
                <thead>
                    <tr>
                        <th>PRODUCT ID</th>
                        <th>PRODUCT NAME</th>
                        <th>CATEGORY NAME</th>
                        <th>PRODUCT RATE</th>
                    </tr>
                </thead>
                <tbody>
                    <cfloop query="ServicePack">
                        <tr>
                            <td>#pId#</td>
                            <td>#pName#</td>
                            <td>#cName#</td>
                            <td>#NumberFormat(pRate, "9,99900")# INR</td>
                        </tr>
                    </cfloop>
                </tbody>
            </table>
        
            <!-- Product Rate vs. Product Name Chart -->
            <div class="mt-5">
                <canvas id="productRateChart"></canvas>
            </div>
        </div>
        
        <script>
            // Prepare data for the chart from ColdFusion query
            var productNames = [
                <cfoutput query="ServicePack">"#pName#"<cfif currentRow LT recordCount>,</cfif></cfoutput>
            ];
            var productRates = [
                <cfoutput query="ServicePack">#pRate#<cfif currentRow LT recordCount>,</cfif></cfoutput>
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
                        backgroundColor: 'rgba(75, 192, 192)',
                        borderColor: 'rgba(75, 192, 192, 1)',
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
        
        <!--- <cfdump var="#ServicePack#"> --->


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