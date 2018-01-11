<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title><?php echo $title; ?></title>
    <?php if ($description) { ?>
        <meta name="description" content="<?php echo $description; ?>" />
    <?php } ?>
    <?php if ($keywords) { ?>
        <meta name="keywords" content= "<?php echo $keywords; ?>" />
    <?php } ?>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <link href='http://fonts.googleapis.com/css?family=Signika:600,400,300' rel='stylesheet' type='text/css'>
    <link href="/catalog/view/stylesheet/style.css" rel="stylesheet" type="text/css" media="screen">
    <link href="/catalog/view/stylesheet/style-colors.css" rel="stylesheet" type="text/css" media="screen">
    <link href="/catalog/view/stylesheet/style-headers.css" rel="stylesheet" type="text/css" media="screen">
</head>
<body class="home color-green">
    <div class="root">
        <header class="h3 sticky-enabled no-topbar">

            <section class="main-header">
                <p class="title">
                    <a href="/"><img src="/catalog/view/image/logo.png" alt="MultiPurpose" width="219" height="35"></a>
                    <span>Ultra Customizable Template</span>
                </p>
                <nav class="social">
                    <ul>
                        <li><a href="#" class="facebook">Facebook</a></li>
                        <li><a href="#" class="twitter">Twitter</a></li>
                        <li><a href="#" class="pinterest">Pinterest</a></li>
                        <li><a href="#" class="rss">RSS</a></li>
                        <li><a href="#" class="linkedin">LinkedIn</a></li>
                    </ul>
                </nav>
                <nav class="mainmenu">
                    <ul>
                        <li class="current-menu-item"><a href="./blog.html">Blog</a></li>
                    </ul>
                </nav>

                <div class="clear"></div>
            </section>
        </header>
