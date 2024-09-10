<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Verify Your booking</title>
  <!-- Favicons -->
  <link href="/assets/img/favicon.png" rel="icon">
  <link href="/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,600;1,700&family=Amatic+SC:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Inter:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="/assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="/assets/css/main.css" rel="stylesheet">
</head>
<body>
  <div class="container text-center m-auto">
    <div class="card-holder bg-secondary rounded m-5 p-5 d-flex" style="height: 80vh;">
    <div class="text" style="margin: auto;">
    <img src="/assets/img/menu/menu-item-6.png" class="menu-img img-fluid" alt="" style="height: 150px;">
    <h1 class="fw-bold">Booking Verification</h1>
    <?php
        $session = \Config\Services::session();
        if ($session->getFlashdata('verification-success')) {
        ?>
          <div class="alert alert-success alert-dismissible fade show my-3">
            <button type="button" class="btn-close" data-bs-dismiss="alert"> </button>
            <?= $session->getFlashdata('verification-success'); ?>
          </div>
        <?php
        }
        if ($session->getFlashdata('verification-failed')) {
        ?>
          <div class="alert alert-danger alert-dismissible fade show my-3">
            <button type="button" class="btn-close" data-bs-dismiss="alert"> </button>
            <?= $session->getFlashdata('verification-failed'); ?>
          </div>
        <?php
        }
        ?>
    <p class="fw-bold">See you at yummy again!</p>
    <p class="display-1 fw-bold">....</p>
    </div>
    </div>
  </div>
</body>
</html>