<!DOCTYPE html>
<!-- saved from url=(0048)https://colorlib.com/etc/lf/Login_v6/index.html# -->
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login</title>

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="icon" href=<?= get_store_logo() ?>>
    <link rel="stylesheet" href=<?= base_url('assets/login/bootstrap.min.css') ?>>

    <link rel="stylesheet" href=<?= base_url('assets/login/font-awesome.min.css') ?>>

    <link rel="stylesheet" href=<?= base_url('assets/login/material-design-iconic-font.min.css') ?>>

    <link rel="stylesheet" href=<?= base_url('assets/login/animate.css') ?>>

    <link rel="stylesheet" href=<?= base_url('assets/login/hamburgers.min.css') ?>>

    <link rel="stylesheet" href=<?= base_url('assets/login/animsition.min.css') ?>>

    <link rel="stylesheet" href=<?= base_url('assets/login/select2.min.css') ?>>

    <link rel="stylesheet" href=<?= base_url('assets/login/daterangepicker.css') ?>>

    <link rel="stylesheet" href=<?= base_url('assets/login/util.css') ?>>
    <link rel="stylesheet" href=<?= base_url('assets/login/main.css') ?>>

    <meta name="robots" content="noindex, follow">
    <script type="text/javascript" async="" src=<?= base_url('assets/login/analytics.js') ?> nonce="4c9a76dc-7da6-4a79-a303-ee8bdd5004e8"></script>
    <script defer="" referrerpolicy="origin" src=<?= base_url('assets/login/s.js') ?>></script>
    <script nonce="4c9a76dc-7da6-4a79-a303-ee8bdd5004e8">
        (function(w, d) {
            ! function(a, e, t, r) {
                a.zarazData = a.zarazData || {}, a.zarazData.executed = [], a.zaraz = {
                    deferred: []
                }, a.zaraz.q = [], a.zaraz._f = function(e) {
                    return function() {
                        var t = Array.prototype.slice.call(arguments);
                        a.zaraz.q.push({
                            m: e,
                            a: t
                        })
                    }
                };
                for (const e of ["track", "set", "ecommerce", "debug"]) a.zaraz[e] = a.zaraz._f(e);
                a.addEventListener("DOMContentLoaded", (() => {
                    var t = e.getElementsByTagName(r)[0],
                        z = e.createElement(r),
                        n = e.getElementsByTagName("title")[0];
                    for (n && (a.zarazData.t = e.getElementsByTagName("title")[0].text), a.zarazData.x = Math.random(), a.zarazData.w = a.screen.width, a.zarazData.h = a.screen.height, a.zarazData.j = a.innerHeight, a.zarazData.e = a.innerWidth, a.zarazData.l = a.location.href, a.zarazData.r = e.referrer, a.zarazData.k = a.screen.colorDepth, a.zarazData.n = e.characterSet, a.zarazData.o = (new Date).getTimezoneOffset(), a.zarazData.q = []; a.zaraz.q.length;) {
                        const e = a.zaraz.q.shift();
                        a.zarazData.q.push(e)
                    }
                    z.defer = !0;
                    for (const e of [localStorage, sessionStorage]) Object.keys(e).filter((a => a.startsWith("_zaraz_"))).forEach((t => a.zarazData["z_" + t.slice(7)] = JSON.parse(e.getItem(t))));
                    z.referrerPolicy = "origin", z.src = "/cdn-cgi/zaraz/s.js?z=" + btoa(encodeURIComponent(JSON.stringify(a.zarazData))), t.parentNode.insertBefore(z, t)
                }))
            }(w, d, 0, "script");
        })(window, document);
    </script>
</head>

<body>

    <div class="limiter">
        <div class="container-login100">
            <div class="wrap-login100 p-t-30 p-b-20">
                <form class="login100-form validate-form" action="<?= route_to('login') ?>" method="post">
                    <?= csrf_field() ?>
                    <span class="login100-form-title p-b-25" style="color: #57b846; font-size : 100px; ">
                        <a style="color: #57b846; font-size : 60px; " href="<?= base_url('/') ?>"> <?php echo get_store_name(); ?></a>

                    </span>
                    <span class="login100-form-title p-b-30">
                        <?= lang('Auth.loginTitle') ?>
                    </span>
                    <?= view('Myth\Auth\Views\_message_block') ?>
                    <?php if ($config->validFields === ['email']) : ?>
                        <div class="wrap-input100 validate-input m-t-60 m-b-35 " data-validate="Enter email">
                            <input class="input100 <?php if (session('errors.login')) : ?>is-invalid<?php endif ?>" type="email" name="login">
                            <span class="focus-input100" data-placeholder="<?= lang('Auth.email') ?>"></span>
                            <div class="invalid-feedback">
                                <?= session('errors.login') ?>
                            </div>
                        </div>
                    <?php else : ?>
                        <div class="wrap-input100 validate-input m-t-60 m-b-35 " data-validate="Enter username">
                            <input class="input100 <?php if (session('errors.login')) : ?>is-invalid<?php endif ?>" type="text" name="login">
                            <span class="focus-input100" data-placeholder="<?= lang('Auth.emailOrUsername') ?>"></span>
                            <div class="invalid-feedback">
                                <?= session('errors.login') ?>
                            </div>
                        </div>
                    <?php endif; ?>
                    <div class="wrap-input100 validate-input m-b-50" data-validate="Enter password">
                        <input class="input100 <?php if (session('errors.password')) : ?>is-invalid<?php endif ?>" type="password" name="password">
                        <span class="focus-input100" data-placeholder="<?= lang('Auth.password') ?>"></span>
                        <div class="invalid-feedback">
                            <?= session('errors.password') ?>
                        </div>
                    </div>
                    <?php if ($config->allowRemembering) : ?>
                        <div class="form-check">
                            <label class="form-check-label">
                                <input type="checkbox" name="remember" class="form-check-input" <?php if (old('remember')) : ?> checked <?php endif ?>>
                                <?= lang('Auth.rememberMe') ?>
                            </label>
                        </div>
                    <?php endif; ?>

                    <br>
                    <div class="container-login100-form-btn m-b-30">
                        <button type="submit" class="login100-form-btn">
                            <?= lang('Auth.loginAction') ?>
                        </button>
                    </div>
                    <?php if ($config->allowRegistration) : ?>
                        <li>
                            <span class="txt1">
                                <a class="txt2" href="<?= route_to('register') ?>"><?= lang('Auth.needAnAccount') ?></a>
                            </span>
                        </li>
                    <?php endif; ?>
                    <?php if ($config->activeResetter) : ?>
                        <li>
                            <span class="txt1">
                                <a class="txt2" href="<?= route_to('forgot') ?>"><?= lang('Auth.forgotYourPassword') ?> </a>
                            </span>
                        </li>
                    <?php endif; ?>
                </form>
            </div>
        </div>
    </div>
    <div id="dropDownSelect1"></div>

    <script src=<?= base_url('assets/login/jquery-3.2.1.min.js') ?>></script>

    <script src=<?= base_url('assets/login/animsition.min.js') ?>></script>

    <script src=<?= base_url('assets/login/popper.js') ?>></script>
    <script src=<?= base_url('assets/login/bootstrap.min.js') ?>></script>

    <script src=<?= base_url('assets/login/select2.min.js') ?>></script>

    <script src=<?= base_url('assets/login/moment.min.js') ?>></script>
    <script src=<?= base_url('assets/login/daterangepicker.js') ?>></script>

    <script src=<?= base_url('assets/login/countdowntime.js') ?>></script>

    <script src=<?= base_url('assets/login/main.js') ?>></script>

    <script async="" src=<?= base_url('assets/login/js') ?>></script>
    <script>
        window.dataLayer = window.dataLayer || [];

        function gtag() {
            dataLayer.push(arguments);
        }
        gtag('js', new Date());

        gtag('config', 'UA-23581568-13');
    </script>
    <script defer="" src="v652eace1692a40cfa3763df669d7439c1639079717194" integrity="sha512-Gi7xpJR8tSkrpF7aordPZQlW2DLtzUlZcumS8dMQjwDHEnw9I7ZLyiOj/6tZStRBGtGgN6ceN6cMH8z7etPGlw==" data-cf-beacon="{&quot;rayId&quot;:&quot;70bb6dd1be8b2eb3&quot;,&quot;token&quot;:&quot;cd0b4b3a733644fc843ef0b185f98241&quot;,&quot;version&quot;:&quot;2021.12.0&quot;,&quot;si&quot;:100}" crossorigin="anonymous"></script>


    <div id="volume-booster-visusalizer">
        <div class="sound">
            <div class="sound-icon"></div>
            <div class="sound-wave sound-wave_one"></div>
            <div class="sound-wave sound-wave_two"></div>
            <div class="sound-wave sound-wave_three"></div>
        </div>
        <div class="segments-box">
            <div data-range="1-20" class="segment"><span></span></div>
            <div data-range="21-40" class="segment"><span></span></div>
            <div data-range="41-60" class="segment"><span></span></div>
            <div data-range="61-80" class="segment"><span></span></div>
            <div data-range="81-100" class="segment"><span></span></div>
        </div>
    </div>
</body>

</html>