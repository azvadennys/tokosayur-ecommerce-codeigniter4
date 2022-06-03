<!DOCTYPE html>
<html lang="en">

<head>
    <title>Login V1</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href=<?= base_url("assets/login1/images/icons/favicon.ico") ?> />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href=<?= base_url("assets/login1/vendor/bootstrap/css/bootstrap.min.css") ?>>
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href=<?= base_url("assets/login1/fonts/font-awesome-4.7.0/css/font-awesome.min.css") ?>>
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href=<?= base_url("assets/login1/vendor/animate/animate.css") ?>>
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href=<?= base_url("assets/login1/vendor/css-hamburgers/hamburgers.min.css") ?>>
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href=<?= base_url("assets/login1/vendor/select2/select2.min.css") ?>>
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href=<?= base_url("assets/login1/css/util.css") ?>>
    <link rel="stylesheet" type="text/css" href=<?= base_url("assets/login1/css/main.css") ?>>
    <!--===============================================================================================-->
</head>

<body>

    <div class="limiter">
        <div class="container-login100">
            <div class="row-login100">
                <div class="login100-pic js-tilt" data-tilt>
                    <img src=<?= base_url("assets/login1/images/img-01.png") ?> alt="IMG">
                </div>

                <form class="login100-form validate-form" action="<?= route_to('register') ?>" method="post">
                    <span class="login100-form-title">
                        <?= lang('Auth.register') ?>
                        <?= csrf_field() ?>
                    </span>
                    <?= view('Myth\Auth\Views\_message_block') ?>
                    <div class="wrap-input100 validate-input" data-validate="Enter Fullname">
                        <input class="input100 <?php if (session('errors.name')) : ?>is-invalid<?php endif ?>" type="text" name="name" placeholder="Ennter Fullname">
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-envelope" aria-hidden="true"></i>
                        </span>
                    </div>
                    <div class="wrap-input100 validate-input" data-validate="Username">
                        <input class="input100 <?php if (session('errors.username')) : ?>is-invalid<?php endif ?>" type="text" name="username" placeholder=" Enter Username">
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-envelope" aria-hidden="true"></i>
                        </span>
                    </div>
                    <div class="wrap-input100 validate-input" data-validate="Enter Email">
                        <input class="input100 <?php if (session('errors.email')) : ?>is-invalid<?php endif ?>" type="email" name="email" placeholder="Enter Email">
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-envelope" aria-hidden="true"></i>
                        </span>
                    </div>
                    <div class="wrap-input100 validate-input" data-validate="Enter Password">
                        <input class="input100 <?php if (session('errors.password')) : ?>is-invalid<?php endif ?>" type="password" name="password" placeholder="Enter Password">
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-envelope" aria-hidden="true"></i>
                        </span>
                    </div>
                    <div class="wrap-input100 validate-input" data-validate="Enter Password">
                        <input class="input100 <?php if (session('errors.pass_confirm')) : ?>is-invalid<?php endif ?>" type="password" name="pass_confirm" placeholder="Enter Password Again">
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-envelope" aria-hidden="true"></i>
                        </span>
                    </div>
                    <div class="wrap-input100 validate-input" data-validate="Enter Phone Number">
                        <input class="input100 <?php if (session('errors.phone_number')) : ?>is-invalid<?php endif ?>" type="text" name="phone_number" placeholder="Enter Phone Number">
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-envelope" aria-hidden="true"></i>
                        </span>
                    </div>
                    <div class="wrap-input100 validate-input" data-validate="Enter Address">
                        <input class="input100 <?php if (session('errors.address')) : ?>is-invalid<?php endif ?>" type="textarea" name="address" placeholder="Enter Address">
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-envelope" aria-hidden="true"></i>
                        </span>
                    </div>

                    <div class="container-login100-form-btn">
                        <button class="login100-form-btn">
                            <?= lang('Auth.register') ?>
                        </button>
                    </div>

                    <div class="text-center p-t-12">
                        <span class="txt1">
                            <?= lang('Auth.alreadyRegistered') ?> <a class="txt2" href="<?= route_to('login') ?>"><?= lang('Auth.signIn') ?></a>
                    </div>

                </form>
            </div>
        </div>
    </div>




    <!--===============================================================================================-->
    <script src=<?= base_url("assets/login1/vendor/jquery/jquery-3.2.1.min.js") ?>></script>
    <!--===============================================================================================-->
    <script src=<?= base_url("assets/login1/vendor/bootstrap/js/popper.js") ?>></script>
    <script src=<?= base_url("assets/login1/vendor/bootstrap/js/bootstrap.min.js") ?>></script>
    <!--===============================================================================================-->
    <script src=<?= base_url("assets/login1/vendor/select2/select2.min.js") ?>></script>
    </script>
    <!--===============================================================================================-->
    <script src=<?= base_url("assets/login1/vendor/tilt/tilt.jquery.min.js") ?>></script>
    <script>
        $('.js-tilt').tilt({
            scale: 1.1
        })
    </script>
    <!--===============================================================================================-->
    <script src=<?= base_url("assets/login1/js/main.js") ?>></script>

</body>

</html>