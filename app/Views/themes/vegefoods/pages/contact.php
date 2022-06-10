<?= $this->extend('themes\vegefoods\template'); ?>

<?= $this->section('konten'); ?>
<div class="hero-wrap hero-bread" style="background-image: url('<?= base_url('assets/themes/vegefoods/images/bg_1.jpg'); ?>');">
  <div class="container">
    <div class="row no-gutters slider-text align-items-center justify-content-center">
      <div class="col-md-9 ftco-animate text-center">
        <p class="breadcrumbs"><span class="mr-2"><?php echo anchor(base_url(), 'Home'); ?></span> <span>Hubungi Kami</span></p>
        <h1 class="mb-0 bread">Hubungi Kami</h1>
      </div>
    </div>
  </div>
</div>

<section class="ftco-section contact-section bg-light">
  <div class="container">
    <div class="row d-flex mb-5 contact-info">
      <div class="w-100"></div>
      <div class="col-md-3 d-flex">
        <div class="info bg-white p-4">
          <p><span>Alamat</span> <?php echo get_settings('store_address'); ?></p>
        </div>
      </div>
      <div class="col-md-3 d-flex">
        <div class="info bg-white p-4">
          <p><span>No. HP</span> <?php echo get_settings('store_phone_number'); ?></p>
        </div>
      </div>
      <div class="col-md-3 d-flex">
        <div class="info bg-white p-4">
          <p><span>Email:</span> <?php echo get_settings('store_email'); ?></p>
        </div>
      </div>
      <div class="col-md-3 d-flex">
        <div class="info bg-white p-4">
          <p><span>Website</span> www.tokosayur.com</p>
        </div>
      </div>
    </div>
    <div class="row block-9">
      <div class="col-md-6 order-md-last d-flex">
        <form action="<?php echo base_url('pages/send_message'); ?>" class="bg-white p-5 contact-form" method="POST">
          <?php if ($flash) : ?>
            <div class="text-success text-center" style="margin-bottom: 25px;"><?php echo $flash; ?></div>
          <?php endif; ?>
          <?php $validation = \Config\Services::validation() ?>
          <div class="form-group">
            <input type="text" name="name" class="form-control" value="<?= (logged_in() ?  user()->name : ''); ?>" placeholder="Nama" required>
            <div class="form-error text-danger font-weight-bold"> <?= $validation->getError('name'); ?></div>
          </div>
          <div class="form-group">
            <input type="email" name="email" class="form-control" value="<?= (logged_in() ?  user()->email : ''); ?>" placeholder="Email" required>
            <div class="form-error text-danger font-weight-bold"> <?= $validation->getError('email'); ?></div>
          </div>
          <div class="form-group">
            <input type="text" name="subject" class="form-control" value="" placeholder="Subjek pesan" required>
            <div class="form-error text-danger font-weight-bold"> <?= $validation->getError('subject'); ?></div>
          </div>
          <div class="form-group">
            <textarea name="message" id="" cols="30" rows="7" class="form-control" placeholder="Pesan" required></textarea>
            <div class="form-error text-danger font-weight-bold"> <?= $validation->getError('message'); ?></div>
          </div>
          <div class="form-group">
            <input type="submit" value="Kirim Pesan" class="btn btn-primary py-3 px-5">
          </div>
        </form>

      </div>

      <div class="col-md-6 d-flex">
        <div style="width: 100%">
          <iframe width="100%" height="600" src="https://maps.google.com/maps?width=100%&amp;height=600&amp;hl=en&amp;coord=-3.7576348,102.2873882&amp;q=Kost%20Indah%20Jaya%20Belakang%20No.%2019%2C%20Jl.%20Medan%20Baru%20VI%2C%20Kandang%20Limun%2C%20Bengkulu+(Toko%20Sayur%2022)&amp;ie=UTF8&amp;t=&amp;z=15&amp;iwloc=B&amp;output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0">
            <a href="https://www.maps.ie/coordinates.html">find my coordinates</a>
          </iframe>
        </div>
      </div>
    </div>
  </div>
</section>
<?= $this->endSection(); ?>