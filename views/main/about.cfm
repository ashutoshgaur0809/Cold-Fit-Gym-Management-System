<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gym Website</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer">
    <!-- Custom Styles -->
    <style>
        /* Background Section */
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
    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-dark sticky-top">
        <div class="container">
            <a class="navbar-brand text-light" href="#">
                <span style="font-family: Arial;">GYM <i class="fa-solid fa-dumbbell"></i> MS</span><br>
                <span style="font-family: Arial; font-size: 14px;">Gym Management System</span>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="main/afterLogin.cfm"><h5>Home</h5></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="main/about.cfm"><h5>About</h5></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="main/newArrival.cfm"><h5>New Arrivals</h5></a>
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
                  <li><button id="logoutBtn" class="dropdown-item"><i class="fa-solid fa-arrow-right-from-bracket"></i> Logout </button></li>
              </ul>
          </div>
            </div>
        </div>
    </nav>

    
    <!-- Background Section -->
    <div class="container background-section">
        <div class="row d-flex align-items-center justify-content-center text-center">
            <div class="col-12 col-xxl-4 title-container">
                <h1 class="mbr-section-title mbr-fonts-style display-1">Fitness Programs</h1>
            </div>
            <div class="col-12 col-xxl-8">
                <div class="col-12">
                    <h4 class="main-subtitle mbr-fonts-style display-5">Achieve Your Fitness Goals with Our Expert Trainers</h4>
                </div>
                <!--- <div class="col-12">
                    <div class="mbr-section-btn">
                        <a class="btn btn-primary display-4">Join Now</a>
                        <a class="btn btn-white-outline btn-last-item display-4">Learn More<span class="mobi-mbri mobi-mbri-down" title="down"></span></a>
                    </div>
                </div> --->
            </div>
        </div>
    </div>

    <!-- Reasons Section -->
    <section class="features2 cid-sISoXnnGCF">
        <div class="container text-light">
            <h2 class="mbr-section-title mbr-fonts-style display-4">Why Choose Us?</h2>
            <div class="row g-3 justify-content-center">
                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-12">
                    <div class="wrapper h-100 d-flex flex-column justify-content-between">
                        <h6 class="mbr-section-subtitle mbr-fonts-style mb-3 mb-lg-4 display-5">Equipment</strong></h6>
                        <p class="mbr-fonts-style mbr-text display-7">We offer the latest fitness equipment to ensure you get the best workout possible.</p>
                        <div class="iconfont-wrapper align-center mt-auto">
                            <span class="fas fa-dumbbell mbr-iconfont d-flex" title="equipment" style="justify-content: center;"></span>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-12">
                    <div class="wrapper h-100 d-flex flex-column justify-content-between">
                        <div>
                            <h6 class="mbr-section-subtitle mbr-fonts-style mb-3 mb-lg-4 display-5">Training</h6>
                            <p class="mbr-fonts-style mbr-text display-7">Our trainers work with you to create a customized workout plan.</p>
                        </div>
                        <div class="iconfont-wrapper align-center mt-auto">
                            <span class="fas fa-user-tie mbr-iconfont d-flex" title="personalized" style="justify-content: center;"></span>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-12">
                    <div class="wrapper h-100 d-flex flex-column justify-content-between">
                        <h6 class="mbr-section-subtitle mbr-fonts-style mb-3 mb-lg-4 display-5">Memberships</h6>
                        <p class="mbr-fonts-style mbr-text display-7">Choose a membership plan that fits your schedule and budget.</p>
                        <div class="iconfont-wrapper align-center mt-auto">
                            <span class="fas fa-calendar-alt mbr-iconfont d-flex" title="membership" style="justify-content: center;"></span>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-12">
                    <div class="wrapper h-100 d-flex flex-column justify-content-between">
                        <h6 class="mbr-section-subtitle mbr-fonts-style mb-3 mb-lg-4 display-5">Advice</h6>
                        <p class="mbr-fonts-style mbr-text display-7">Get guidance on nutrition to complement your fitness regime.</p>
                        <div class="iconfont-wrapper align-center mt-auto">
                            <span class="fas fa-apple-alt mbr-iconfont d-flex" title="nutrition" style="justify-content: center;"></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Benefits Section -->
    <section class="features3 cid-sISoY579pI">
        <div class="container text-light">
            <div class="row justify-content-center">
                <div class="col-12 col-lg-8">
                    <h2 class="mbr-section-title mbr-fonts-style display-2">Benefits</h2>
                    <div class="list">
                        <div class="list-item border-bottom">
                            <div class="row">
                                <div class="col-lg-4 col-md-12 mx-auto">
                                    <h3 class="mbr-section-subtitle mbr-fonts-style display-5"><strong>Expert Trainers</strong></h3>
                                </div>
                                <div class="col-lg-8 col-md-12 mx-auto">
                                    <div class="content">
                                        <p class="mbr-text mbr-fonts-style m-0 display-7">Work with certified trainers who can guide you through every step of your fitness journey.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="list-item border-bottom">
                            <div class="row">
                                <div class="col-lg-4 col-md-12 mx-auto">
                                    <h3 class="mbr-section-subtitle mbr-fonts-style display-5"><strong>Modern Facilities</strong></h3>
                                </div>
                                <div class="col-lg-8 col-md-12 mx-auto">
                                    <div class="content">
                                        <p class="mbr-text mbr-fonts-style m-0 display-7">Our gym is equipped with the latest technology and facilities to enhance your workout experience.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="list-item border-bottom">
                            <div class="row">
                                <div class="col-lg-4 col-md-12 mx-auto">
                                    <h3 class="mbr-section-subtitle mbr-fonts-style display-5"><strong>Community Support</strong></h3>
                                </div>
                                <div class="col-lg-8 col-md-12 mx-auto">
                                    <div class="content">
                                        <p class="mbr-text mbr-fonts-style m-0 display-7">Join a community of like-minded individuals who are all working towards their fitness goals.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="list-item border-bottom">
                            <div class="row">
                                <div class="col-lg-4 col-md-12 mx-auto">
                                    <h3 class="mbr-section-subtitle mbr-fonts-style display-5"><strong>Flexible Hours</strong></h3>
                                </div>
                                <div class="col-lg-8 col-md-12 mx-auto">
                                    <div class="content">
                                        <p class="mbr-text mbr-fonts-style m-0 display-7">Our gym is open at convenient times to fit your busy schedule.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Bootstrap JS Bundle -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
