<!DOCTYPE html>
<!-- saved from url=(0048)https://colorlib.com/etc/lf/Login_v6/index.html# -->
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Register</title>

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
                <form class="login100-form validate-form" action="<?= route_to('register') ?>" method="post">
                    <span class="login100-form-title p-b-25" style="color: #57b846; font-size : 100px; ">
                        <a style="color: #57b846; font-size : 100px; " href="<?= base_url('/') ?>"> <?php echo get_store_name(); ?></a>
                    </span>
                    <span class="login100-form-title p-b-30">
                        <?= lang('Auth.register') ?>
                    </span>
                    <?= view('Myth\Auth\Views\_message_block') ?>
                    <?= csrf_field() ?>
                    <div class="wrap-input100 validate-input m-t-60 m-b-35" data-validate="Enter fullname">
                        <input class="input100  <?php if (session('errors.name')) : ?>is-invalid<?php endif ?>" type="text" name="name">
                        <span class="focus-input100" data-placeholder="Full Name"></span>
                    </div>
                    <div class="wrap-input100 validate-input m-b-35" data-validate="Enter username">
                        <input class="input100  <?php if (session('errors.username')) : ?>is-invalid<?php endif ?>" type="text" name="username">
                        <span class="focus-input100" data-placeholder="Username"></span>
                    </div>
                    <div class="wrap-input100 validate-input " data-validate="Enter email">
                        <input class="input100 <?php if (session('errors.email')) : ?>is-invalid<?php endif ?>" type="email" name="email">
                        <span class="focus-input100" data-placeholder="Email"></span>

                    </div>
                    <small id="emailHelp" class="form-text text-muted  m-b-35"><?= lang('Auth.weNeverShare') ?></small>
                    <div class="wrap-input100 validate-input m-b-35" data-validate="Enter password">
                        <input class="input100 <?php if (session('errors.password')) : ?>is-invalid<?php endif ?>" type="password" name="password">
                        <span class="focus-input100" data-placeholder="Password"></span>
                    </div>
                    <div class="wrap-input100 validate-input m-b-50" data-validate="Enter password">
                        <input class="input100 <?php if (session('errors.pass_confirm')) : ?>is-invalid<?php endif ?>" type="password" name="pass_confirm">
                        <span class="focus-input100" data-placeholder="Repeat Password"></span>
                    </div>
                    <div class="wrap-input100 validate-input m-b-50" data-validate="Enter Phone Number">
                        <input class="input100 <?php if (session('errors.phone_number')) : ?>is-invalid<?php endif ?>" type="text" name="phone_number">
                        <span class="focus-input100" data-placeholder="Phone Number"></span>
                    </div>
                    <div class="wrap-input100 validate-input m-b-50" data-validate="Enter Address">
                        <textarea class="input100 <?php if (session('errors.address')) : ?>is-invalid<?php endif ?>" type="textarea" name="address"></textarea>
                        <span class="focus-input100" data-placeholder="Address"></span>
                    </div>
                    <div class="container-login100-form-btn">
                        <button type="submit" class="login100-form-btn">
                            <?= lang('Auth.register') ?>
                        </button>
                    </div>
                    <ul class="login-more p-t-50">
                        <li>
                            <span class="txt1">
                                <?= lang('Auth.alreadyRegistered') ?> <a class="txt2" href="<?= route_to('login') ?>"><?= lang('Auth.signIn') ?></a>
                            </span>

                        </li>
                    </ul>
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