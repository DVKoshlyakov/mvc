    <?php foreach ($scripts as $script) { ?>
        <script type="text/javascript" src="<?php echo $script; ?>"></script>
    <?php } ?>

    <!-- JQUERY -->
    <script src="/admin/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript" ></script>
    <!-- JQUERY UI-->
    <script src="/admin/view/javascript/jquery-ui/jquery-ui.js" type="text/javascript" ></script>
    <link href="/admin/view/javascript/jquery-ui/jquery-ui.css" rel="stylesheet" />
    <!-- BOOTSTRAP -->
    <!-- Всплывающие окна Alert-->
    <script src="/admin/view/javascript/bootstrap-dist/js/bootstrap.js" type="text/javascript" ></script>
    <!-- DATE RANGE PICKER -->
    <script src="/admin/view/javascript/bootstrap-daterangepicker/moment.min.js"></script>
    <script src="/admin/view/javascript/bootstrap-daterangepicker/daterangepicker.min.js"></script>
    <!-- SLIMSCROLL -->
    <script src="/admin/view/javascript/jQuery-slimScroll-1.3.0/jquery.slimscroll.min.js" type="text/javascript" ></script>
    <script src="/admin/view/javascript/jQuery-slimScroll-1.3.0/slimScrollHorizontal.min.js" type="text/javascript"></script>
    <!-- BLOCK UI -->
    <script src="/admin/view/javascript/jQuery-BlockUI/jquery.blockUI.min.js" type="text/javascript"></script>
    <!-- UNIFORM -->
    <script src="/admin/view/javascript/uniform/jquery.uniform.min.js" type="text/javascript" ></script>
    <!-- COOKIE -->
    <script src="/admin/view/javascript/jQuery-Cookie/jquery.cookie.min.js" type="text/javascript"></script>
    <!-- CUSTOM SCRIPT -->
    <script src="/admin/view/javascript/script.js" type="text/javascript" ></script>
    <script src="/admin/view/javascript/common.js" type="text/javascript" ></script>
    <script>
        $(document).ready(function() {
            App.init(); //Initialise plugins and elements
        });
    </script>
</body>
</html>