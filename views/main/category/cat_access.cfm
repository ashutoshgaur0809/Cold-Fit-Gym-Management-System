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
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://unpkg.com/bs-brain@2.0.4/components/registrations/registration-9/assets/css/registration-9.css">
<style>
.carousel-item img {
            max-height: 450px;
            object-fit: cover;
            border-radius: 10px;
        }

        .carousel-caption h5 {
            background: rgba(0, 0, 0, 0.5);
            padding: 10px;
            border-radius: 5px;
        }

        .carousel-caption p {
            background: rgba(0, 0, 0, 0.5);
            padding: 5px;
            border-radius: 5px;
        }
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
          border: 5px solid hsl(199, 48%, 46%);
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
      <div class="container">
        <div id="carouselExampleCaptions" class="carousel slide mb-5">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="##carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="##carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
                <button type="button" data-bs-target="##carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="../../layouts/img/duration_slider1.jpeg" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="../../layouts/img/duration_slider2.jpeg" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                      
                    </div>
                </div>
                
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="##carouselExampleCaptions" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="##carouselExampleCaptions" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
      <h1 class="text-center mb-4 mt-5 text-light">Access Package</h1>
<div class="container-fluid">
    <div class="album mt-5 mx-auto">
      <div class="container-fluid">
        <!-- Your card content -->
        <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
          <!-- Card 1 -->
          <a href="main.category/checkout.cfm?btnid=4" style="text-decoration: none;">
          <div class="col">
            <div class="card shadow-sm ">
              <img src="/../layouts/img/access1.jpg" class="card-img-top" alt="">
              <div class="card-body">
                <h5 class="card-title">Off-Peak Membership</h5>
                <p class="card-text">
                <span style="color: green; font-weight: bold;">&##9989; Description: Limits gym usage to non-peak hours (e.g., mid-morning, early afternoon).</span>
                </p>
                <p class="card-text">
                  <span style="color: green; font-weight: bold;">&##9989; Features: Full access to facilities but only during specified off-peak times.</span>
                </p>
                <p class="card-text">
                  <span style="color: green; font-weight: bold;">&##9989; Ideal For: Individuals with flexible schedules who want to save money and avoid crowded times.</span>
                </p>
                <button class="button-56" role="button" id="4">Buy Now</button>
              </div>
            </div>
          </div>
        </a>
          <!-- Card 2 -->
          <a href="main.category/checkout.cfm?btnid=5" style="text-decoration: none;">
          <div class="col">
            <div class="card shadow-sm">
              <img src="/../layouts/img/access2.jpg" class="card-img-top" alt="">
              <div class="card-body">
                <h5 class="card-title">Peak-Time Membership</h5>
                <p class="card-text">
                  <span style="color: green; font-weight: bold;">&##9989;Description: Allows gym usage during peak hours, typically early morning or evening.</span>
                </p>
                <p class="card-text">
                  <span style="color: green; font-weight: bold;">&##9989; Features: Unrestricted access during the busiest times.</span>
                </p>
                <p class="card-text">
                  <span style="color: green; font-weight: bold;">&##9989;Ideal For: Those who prefer working out during traditional busy hours or have a fixed schedule.</span>
                </p>
                <!-- HTML !-->
<button class="button-56" role="button" id="5">Buy Now</button>


              </div>
            </div>
          </div>
        </a>
        <a href="main.category/checkout.cfm?btnid=6" style="text-decoration: none;">
          <div class="col">
            <div class="card shadow-sm">
              <img src="/../layouts/img/access3.jpg" class="card-img-top" alt="">
              <div class="card-body">
                <h5 class="card-title">24/7 Membership</h5>
                <p class="card-text">
                  <span style="color: green; font-weight: bold;">&##9989;Description: Provides access to the gym at any time, day or night.</span>
                </p>
                <p class="card-text">
                  <span style="color: green; font-weight: bold;">&##9989; Features: Round-the-clock access to all facilities, which is ideal for those with unpredictable or late schedules.</span>
                </p>
                <p class="card-text">
                  <span style="color: green; font-weight: bold;">&##9989; Ideal For: Individuals who need maximum flexibility due to irregular working hours or personal preferences.</span>
                </p>
                <button class="button-56" role="button" id="6">Buy Now</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </a>
      
    </div>
  </div>
    </div>

    
      
    </cfoutput>
</body>
</html>
