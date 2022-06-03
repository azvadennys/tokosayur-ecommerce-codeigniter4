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
            <div class="wrap-login100">
                <div class="login100-pic js-tilt" data-tilt>
                    <img src=<?= base_url("assets/login1/images/img-01.png") ?> alt="IMG">
                </div>

                <form class="login100-form validate-form" action="<?= route_to('login') ?>" method="post">
                    <span class="login100-form-title">
                        <?= lang('Auth.loginTitle') ?>
                        <?= csrf_field() ?>
                    </span>
                    <?= view('Myth\Auth\Views\_message_block') ?>
                    <?php if ($config->validFields === ['email']) : ?>
                        <div class="wrap-input100 validate-input" data-validate="<?= lang('Auth.email') ?>">
                            <input class="input100 <?php if (session('errors.login')) : ?>is-invalid<?php endif ?>" type="email" name="login" placeholder="<?= lang('Auth.email') ?>">
                            <span class="focus-input100"></span>
                            <div class="invalid-feedback">
                                <?= session('errors.login') ?>
                            </div>
                            <span class="symbol-input100">
                                <i class="fa fa-envelope" aria-hidden="true"></i>
                            </span>
                        </div>


                    <?php else : ?>
                        <div class="wrap-input100 validate-input" data-validate="<?= lang('Auth.emailOrUsername') ?>">
                            <input class="input100 <?php if (session('errors.login')) : ?>is-invalid<?php endif ?>" type="text" name="login" placeholder="<?= lang('Auth.email') ?>">
                            <span class="focus-input100"></span>
                            <div class="invalid-feedback">
                                <?= session('errors.login') ?>
                            </div>
                            <span class="symbol-input100">
                                <i class="fa fa-envelope" aria-hidden="true"></i>
                            </span>
                        </div>


                    <?php endif; ?>



                    <div class="wrap-input100 validate-input" data-validate="<?= lang('Auth.password') ?>">
                        <input class="input100 <?php if (session('errors.password')) : ?>is-invalid<?php endif ?>" type="password" name="password" placeholder="<?= lang('Auth.password') ?>">
                        <span class="focus-input100"></span>
                        <div class="invalid-feedback">
                            <?= session('errors.password') ?>
                        </div>
                        <span class="symbol-input100">
                            <i class="fa fa-lock" aria-hidden="true"></i>
                        </span>
                    </div>

                    <div class="container-login100-form-btn">
                        <button class="login100-form-btn">
                            <?= lang('Auth.loginAction') ?>
                        </button>
                    </div>

                    <div class="text-center p-t-12">
                        <span class="txt1">
                            Forgot
                        </span>
                        <a class="txt2" href="<?= route_to('forgot') ?>">
                            Password?
                        </a>
                    </div>

                    <div class="text-center p-t-12">
                        <a class="txt2" href="<?= route_to('register') ?>">
                            Create your Account
                            <i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
                        </a>
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