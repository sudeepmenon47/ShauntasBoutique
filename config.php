<?php
    define('BASEURL', $_SERVER['DOCUMENT_ROOT'].'/tutorial/');
    define('CART_COOKIE','SBwi72UCKlwiqzz2');
    define('CART_COOKIE_EXPIRE',time() + (86400 *30));
    define('TAXRATE',0.087);//sales tax rate set if you not need  tax

    define('CURRENCY', 'usd');
    define('CHECKOUTMODE','TEST');//Change TEST to LIVE when you are ready to go LIVE
    
    if(CHECKOUTMODE == 'TEST'){
        define('STRIPE_PRIVET','sk_test_PPtIrma0f6bz8uE38KUbT269');
        define('STRIPE_PUBLIC','pk_test_iyBRvZZR2ysVZ2NiUAF5BrGT');
    }

    if(CHECKOUTMODE == 'LIVE'){
        define('STRIPE_PRIVET','sk_live_72Nf46AwLT8l43kojMp0hJIQ');
        define('STRIPE_PUBLIC','pk_live_cGFc4kPIacNVOASzP1opZeei');
    }