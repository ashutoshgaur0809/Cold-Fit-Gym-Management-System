<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Bootstrap Alert Page</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
      background-color: #f0f2f5;
      font-family: Arial, sans-serif;
    }
    .container {
      margin-top: 100px;
      max-width: 700px;
    }
    .alert-heading {
      font-size: 1.75rem;
      font-weight: bold;
    }
    .alert {
      border-radius: 10px;
    }
    .btn-custom {
      margin: 10px;
      padding: 12px 25px;
      font-size: 1rem;
    }
    .btn-primary {
      background-color: #007bff;
      border-color: #007bff;
    }
    .btn-primary:hover {
      background-color: #0056b3;
      border-color: #004085;
    }
    .btn-secondary {
      background-color: #6c757d;
      border-color: #6c757d;
    }
    .btn-secondary:hover {
      background-color: #5a6268;
      border-color: #545b62;
    }
    .alert p {
      font-size: 1.1rem;
    }
    .alert .btn-close {
      position: absolute;
      top: 10px;
      right: 15px;
    }
    .alert-dismissible {
      padding-right: 3rem;
    }
  </style>
</head>
<body>

  <div class="container">
    <h1 class="text-center mb-5">Important Alert</h1>

    <!-- Danger Alert -->
    <div class="alert alert-danger alert-dismissible fade show position-relative" role="alert">
      <h4 class="alert-heading">Oops! Something went wrong.</h4>
      <p>It looks like there was an issue with the login attempt. Please check your credentials and try again.</p>
      <hr>
      <p class="mb-0">If the problem persists, contact our support team for assistance.</p>
  
    </div>

    <!-- Buttons for registration -->
    <div class="text-center mt-5">
      <a href="main/AdminRegistraion/cfm" class="btn btn-primary btn-custom">Register as Admin</a>
      <a href="main/index/cfm" class="btn btn-secondary btn-custom">Register as User</a>
    </div>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
