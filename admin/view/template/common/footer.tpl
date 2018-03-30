    <?php foreach ($scripts as $script) { ?>
        <script type="text/javascript" src="<?php echo $script; ?>"></script>
    <?php } ?>

    <!-- JQUERY -->
    <script src="view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript" ></script>
    <!-- JQUERY UI-->
    <script src="view/javascript/jquery-ui/jquery-ui.js" type="text/javascript" ></script>
    <link href="view/javascript/jquery-ui/jquery-ui.css" rel="stylesheet" />
    <!-- BOOTSTRAP -->
    <!-- Всплывающие окна Alert-->
    <script src="view/javascript/bootstrap-dist/js/bootstrap.js" type="text/javascript" ></script>
    <!-- DATE RANGE PICKER -->
    <script src="view/javascript/bootstrap-daterangepicker/moment.min.js"></script>
    <script src="view/javascript/bootstrap-daterangepicker/daterangepicker.min.js"></script>
    <!-- SLIMSCROLL -->
    <script src="view/javascript/jQuery-slimScroll-1.3.0/jquery.slimscroll.min.js" type="text/javascript" ></script>
    <script src="view/javascript/jQuery-slimScroll-1.3.0/slimScrollHorizontal.min.js" type="text/javascript"></script>
    <!-- BLOCK UI -->
    <script src="view/javascript/jQuery-BlockUI/jquery.blockUI.min.js" type="text/javascript"></script>
    <!-- UNIFORM -->
    <script src="view/javascript/uniform/jquery.uniform.min.js" type="text/javascript" ></script>
    <!-- COOKIE -->
    <script src="view/javascript/jQuery-Cookie/jquery.cookie.min.js" type="text/javascript"></script>
    <!-- CUSTOM SCRIPT -->
    <script src="view/javascript/script.js" type="text/javascript" ></script>
    <script src="view/javascript/common.js" type="text/javascript" ></script>
    <script>
        $(document).ready(function() {
            App.init(); //Initialise plugins and elements
        });
    </script>
    <!--Для Textarea-->
    <script type="text/javascript" src="view/javascript/summernote/summernote.js"></script>
    <link href="view/javascript/summernote/summernote.css" rel="stylesheet" />
    <script type="text/javascript" src="view/javascript/summernote/opencart.js"></script>
