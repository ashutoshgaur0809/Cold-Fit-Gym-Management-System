<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Checkout Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <style>
        body {
            background-color: #121212;
            color: #ffffff;
            font-family: 'Poppins', sans-serif;
        }

        .card-custom {
            background-color: #2b2b2b;
            border: none;
            border-radius: 15px;
            padding: 20px;
            color: #fff;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.5);
        }

        .card-custom .list-group-item {
            background-color: #3b3b3b;
            color: #fff;
        }

        .btn-custom {
            background: linear-gradient(45deg, #17a2b8, #138496);
            color: white;
            border-radius: 50px;
            transition: transform 0.3s ease;
            padding: 10px 20px;
        }

        .btn-custom:hover {
            background: linear-gradient(45deg, #138496, #17a2b8);
            transform: translateY(-3px);
        }

        .text-muted-custom {
            color: #aaa;
        }

        .icon-custom {
            font-size: 1.5rem;
            margin-right: 10px;
        }

        footer {
            border-top: 1px solid #444;
            padding-top: 20px;
            margin-top: 40px;
        }

        .container h2 {
            font-weight: 600;
            font-size: 2.5rem;
        }

        .container h4 {
            font-weight: 600;
            font-size: 1.75rem;
        }
    </style>
</head>
<body>
    <cfoutput>
        <cfquery name="userInfo">
            SELECT * 
            FROM registration 
            WHERE id = <cfqueryparam value="#session.userID#" cfsqltype="cf_sql_integer">
        </cfquery>
        
        <cfquery name="newArrivalInfo">
            SELECT * 
            FROM newpack 
            WHERE npId = <cfqueryparam value="#npID#" cfsqltype="cf_sql_integer">
        </cfquery>
    
    <div class="container my-5">
        <main>
            <div class="py-5 text-center">
                <img class="d-block mx-auto mb-4" src="../../layouts/img/logo.png" alt="Logo" width="200" height="200">
                <h2>Checkout Form</h2>
            </div>

            <form action="" method="POST">
                <div class="row g-5">
                    <div class="col-md-5 col-lg-4 order-md-last">
                        <div class="card card-custom">
                            <h4 class="d-flex justify-content-between align-items-center mb-3">
                                <span class="text-primary">Order Details</span>
                            </h4>
                            
                            <ul class="list-group mb-3">
                                <li class="list-group-item d-flex justify-content-between lh-sm">
                                    <div>
                                        <h6 class="my-0">Product Name</h6>
                                        <small class="text-muted-custom">#newArrivalInfo.npName# Package</small>
                                    </div>
                                </li>
                                <li class="list-group-item d-flex justify-content-between lh-sm">
                                    <div>
                                        <h6 class="my-0">Product Category</h6>
                                        <small class="text-muted-custom">#newArrivalInfo.npCat# Based</small>
                                    </div>
                                </li>
                                <li class="list-group-item d-flex justify-content-between lh-sm">
                                    <div>
                                        <h6 class="my-0">Product Rate</h6>
                                        <small class="text-muted-custom">#newArrivalInfo.npRate# INR</small>
                                    </div>
                                </li>
                                <li class="list-group-item d-flex justify-content-between bg-body-tertiary">
                                    <div class="text-success">
                                        <h6 class="my-0">Product Discount Rate <br> (After 10% Discount)</h6>
                                        <small>Coupon = AAA</small>
                                    </div>
                                    <span class="text-success">#newArrivalInfo.npRate * 0.90# INR</span>
                                </li>
                                <li class="list-group-item d-flex justify-content-between">
                                    <span>Total (INR)</span>
                                    <strong>#newArrivalInfo.npRate * 0.90# INR</strong>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-md-7 col-lg-8">
                        <h4 class="mb-3">User Details</h4>
                        <div class="card card-custom">
                            <div class="row g-0">
                                <div class="col-5 col-md-3 bg-primary border-bottom border-white border-3 rounded-start">
                                    <div class="p-4 fw-bold">
                                        <i class="fas fa-user icon-custom"></i>Full Name
                                    </div>
                                </div>
                                <div class="col-7 col-md-9 bg-secondary border-bottom border-white border-3 rounded-end">
                                    <div class="p-4">#userInfo.fullname#</div>
                                </div>

                                <div class="col-5 col-md-3 bg-primary border-bottom border-white border-3 rounded-start">
                                    <div class="p-4 fw-bold">
                                        <i class="fas fa-phone icon-custom"></i> Phone
                                    </div>
                                </div>
                                <div class="col-7 col-md-9 bg-secondary border-bottom border-white border-3 rounded-end">
                                    <div class="p-4">#userInfo.phone#</div>
                                </div>

                                <div class="col-5 col-md-3 bg-primary border-bottom border-white border-3 rounded-start">
                                    <div class="p-4 fw-bold">
                                        <i class="fas fa-map-marker-alt icon-custom"></i> Address
                                    </div>
                                </div>
                                <div class="col-7 col-md-9 bg-secondary border-bottom border-white border-3 rounded-end">
                                    <div class="p-4">#userInfo.city#</div>
                                </div>

                                <div class="col-5 col-md-3 bg-primary border-bottom border-white border-3 rounded-start">
                                    <div class="p-4 fw-bold">
                                        <i class="fas fa-envelope icon-custom"></i> Email
                                    </div>
                                </div>
                                <div class="col-7 col-md-9 bg-secondary border-bottom border-white border-3 rounded-end">
                                    <div class="p-4">#userInfo.email#</div>
                                </div>
                            </div>
                        </div>

                        <br>
                        <h4 class="mb-5 mt-2">Payment</h4>
                        
                        <div class="d-flex justify-content-between">
                            <button class="btn btn-secondary btn-custom" type="button" onclick="history.back()">Previous</button>
                            <button class="btn btn-primary btn-custom" type="submit"><a href="main.Category/FinalCheckout/?npID=#npID#" class="text-light text-decoration-none">Continue to checkout</a></button>
                        </div>
                    </div>
                </div>
            </form>
        </main>

        <footer class="my-5 pt-5 text-center">
            <p class="mb-1 text-white">2017/2024 GYMMS</p>
            <ul class="list-inline">
                <li class="list-inline-item"><a href="##" class="text-white">Privacy</a></li>
                <li class="list-inline-item"><a href="##" class="text-white">Terms</a></li>
                <li class="list-inline-item"><a href="##" class="text-white">Support</a></li>
            </ul>
        </footer>
    </div>
    </cfoutput>
</body>
</html>
