<?= $this->extend("yummy/layout/base"); ?>

<?= $this->section("content"); ?>
<!-- ======= Hero Section ======= -->
<section id="hero" class="hero d-flex align-items-center section-bg">
  <?= $this->include("yummy/pages/home") ?>
</section>
<!-- End Hero Section -->

<main id="main">

  <!-- ======= About Section ======= -->
  <section id="about" class="about">
    <?= $this->include("yummy/pages/about") ?>
  </section>
  <!-- End About Section -->

  <!-- ======= Why Us Section ======= -->
  <section id="why-us" class="why-us section-bg">
    <?= $this->include("yummy/pages/whyus") ?>
  </section>
  <!-- End Why Us Section -->

  <!-- ======= Stats Counter Section ======= -->
  <section id="stats-counter" class="stats-counter">
    <?= $this->include("yummy/pages/stats") ?>
  </section>
  <!-- End Stats Counter Section -->

  <!-- ======= Menu Section ======= -->
  <section id="menu" class="menu">
    <?= $this->include("yummy/pages/menu") ?>
  </section>
  <!-- End Menu Section -->

  <!-- ======= Testimonials Section ======= -->
  <section id="testimonials" class="testimonials section-bg">
    <?= $this->include("yummy/pages/testimonials") ?>
  </section>
  <!-- End Testimonials Section -->

  <!-- ======= Events Section ======= -->
  <section id="events" class="events">
    <?= $this->include("yummy/pages/events") ?>
  </section>
  <!-- End Events Section -->

  <!-- ======= Chefs Section ======= -->
  <section id="chefs" class="chefs section-bg">
    <?= $this->include("yummy/pages/chefs") ?>
  </section>
  <!-- End Chefs Section -->

  <!-- ======= Gallery Section ======= -->
  <section id="gallery" class="gallery section-bg">
    <?= $this->include("yummy/pages/gallery") ?>
  </section>
  <!-- End Gallery Section -->

</main>
<!-- End #main -->

<?= $this->endSection(); ?>