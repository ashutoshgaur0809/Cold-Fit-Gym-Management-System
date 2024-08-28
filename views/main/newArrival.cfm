<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
    rel="stylesheet"
  />
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
  <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
    integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
    crossorigin="anonymous"
    referrerpolicy="no-referrer"
  />
  <style>
     /* Background Section */
     
.button-56 {
  align-items: center;
  background-color: #fee6e3;
  border: 2px solid #111;
  border-radius: 8px;
  box-sizing: border-box;
  color: #111;
  cursor: pointer;
  display: flex;
  font-family: Inter,sans-serif;
  font-size: 16px;
  height: 48px;
  justify-content: center;
  line-height: 24px;
  max-width: 100%;
  padding: 0 25px;
  position: relative;
  text-align: center;
  text-decoration: none;
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
}

.button-56:after {
  background-color: #111;
  border-radius: 8px;
  content: "";
  display: block;
  height: 48px;
  left: 0;
  width: 100%;
  position: absolute;
  top: -2px;
  transform: translate(8px, 8px);
  transition: transform .2s ease-out;
  z-index: -1;
}

.button-56:hover:after {
  transform: translate(0, 0);
}

.button-56:active {
  background-color: #ffdeda;
  outline: 0;
}

.button-56:hover {
  outline: 0;
}

@media (min-width: 768px) {
  .button-56 {
    padding: 0 40px;
  }
}
  .card {
            transition: transform 0.4s ease, box-shadow 0.5s ease;
            text-decoration:None;
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
     .background-section {
            background-image: url('static/carsoul_gym_bg_4.jpeg'); /* Replace with your image URL */
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            padding: 60px 20px; /* Increased padding for better spacing */
            color: #ffffff;
            text-align: center;
        }
        .background-section .title-container h1 {
            font-size: 3rem; /* Larger title */
            font-weight: bold;
            margin-bottom: 20px;
        }
        .background-section .main-subtitle {
            font-size: 1.5rem;
            margin-bottom: 30px;
        }
        .background-section .btn-primary {
            background-color: #1a73e8;
            border: none; /* Remove border */
            font-size: 1.2rem; /* Larger font size for buttons */
            padding: 10px 20px;
            border-radius: 50px; /* Rounded corners */
            transition: background-color 0.3s ease;
        }
        .background-section .btn-primary:hover {
            background-color: #0c57b6; /* Darker color on hover */
        }
        .background-section .btn-white-outline {
            border: 2px solid #ffffff;
            color: #ffffff;
            font-size: 2rem;
            padding: 10px 20px;
            border-radius: 50px;
            transition: color 0.3s ease, border-color 0.3s ease;
        }
        .background-section .btn-white-outline:hover {
            color: #1a73e8;
            border-color: #1a73e8;
        }
        /* Navbar */
        .navbar {
            background-color: #212121; /* Dark background for navbar */
            padding: 10px 20px;
        }
        .navbar-brand {
            font-size: 24px;
            font-weight: bold;
        }
        .navbar-nav .nav-link {
            color: #ffffff !important;
            margin: 0 10px;
        }
        .navbar-nav .nav-link:hover {
            color: #1a73e8 !important; /* Highlight on hover */
        }
        .dropdown-menu {
            background-color: #343a40; /* Dark background for dropdown */
        }
        .dropdown-item {
            color: #ffffff;
        }
        .dropdown-item:hover {
            background-color: #1a73e8; /* Highlight on hover */
        }
        /* Features Section */
        .features2 {
            background-color: #333; /* Dark background */
            padding: 60px 20px;
        }
        .features2 .iconfont-wrapper .mbr-iconfont {
            font-size: 3rem; /* Larger icons */
            color: #ffffff;
        }
        .features2 .wrapper {
            border-radius: 10px; /* Rounded corners for feature boxes */
            padding: 20px;
            background-color: #444; /* Slightly lighter background */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Subtle shadow */
            transition: background-color 0.3s ease;
        }
        .features2 .wrapper:hover {
            background-color: #555; /* Darker background on hover */
        }
        /* Benefits Section */
        .features3 {
            background-color: #212121; /* Dark background */
            padding: 60px 20px;
        }
        .features3 .list-item {
            border-bottom: 1px solid #444; /* Divider color */
            padding: 20px 0;
        }
        .features3 .list-item:last-child {
            border-bottom: none; /* Remove border for last item */
        }
  </style>
</head>
<body class="bg-dark">
    <cfoutput>
    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-dark sticky-top">
        <div class="container">
            <a class="navbar-brand text-light" href="##">
                <span style="font-family: Arial;">GYM <i class="fa-solid fa-dumbbell"></i> MS</span><br>
                <span style="font-family: Arial; font-size: 14px;">Gym Management System</span>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="##navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="main/afterLogin"><h5>Home</h5></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="main/about"><h5>About</h5></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" ><h5>New Arrivals</h5></a>
                    </li>
                  
                </ul>

               
               <cfquery name="userInfo">
                select * from registration where id = #session.userID#
               </cfquery>
              <div class="dropdown">
                  <button class="btn btn-primary " type="button" data-bs-toggle="dropdown" aria-expanded="false">
                    <p><i class="fa-regular fa-user p-2 mt-2"></i></p>
                    </button>
                    <ul class="dropdown-menu dropdown-menu-dark">
                        <li><a class="dropdown-item" href="userProfile.cfm">Profile</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><button id="logoutBtn" class="dropdown-item"><i class="fa-solid fa-arrow-right-from-bracket"></i> Logout</button></li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>

    <!-- Background Section -->
    <div class="container background-section">
        <div class="row d-flex align-items-center justify-content-center text-center">
            <div class="col-12 col-xxl-4 title-container">
                <h1 class="mbr-section-title mbr-fonts-style display-1">New Arrivals Are Here</h1>
            </div>
            <div class="col-12 col-xxl-8">
                <div class="col-12">
                    <h4 class="main-subtitle mbr-fonts-style display-5">Achieve Your Fitness Goals with Our Expert Trainers</h4>
                </div>
            </div>
        </div>
    </div>

    <!--- Card Section --->
    <cfquery name="getPackages">
        SELECT npID, npName, npCat, npRate
        FROM newpack;
    </cfquery>

    <div class="container mt-3">
        <div class="row">
            <!--- Loop through each package to generate a card --->
            <cfloop query="getPackages">
                <div class="col-md-4 mb-4">
                    <a href="main/newPackcheckout/cfm?npID=#npID#" style="text-decoration: none;">
                    <div class="card">
                        <img src="../../layouts/img/newarrival.png" class="card-img-top" alt="Package Image">
                        <div class="card-body">
                            <h5 class="card-title">#npName# Package</h5>
                            <p class="card-text">
                                <strong>Category:</strong> #npCat# Based<br>
                                <strong>Rate:</strong> #NumberFormat(npRate, "9,999")# INR
                                <button class="button-56" role="button" id="2">Buy Now</button>
                            </p>
                        </div>
                    </div>
                </a>
                </div>
            </cfloop>
        </div>
    </div>

    </cfoutput>   
</body>
</html>