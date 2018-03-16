<div id="sidebar" class="sidebar">
    <div class="sidebar-menu nav-collapse">
        <div class="divide-20"></div>
        <!-- SEARCH BAR -->
        <div id="search-bar">
            <input class="search" type="text" placeholder="Search"><i class="fa fa-search search-icon"></i>
        </div>
        <!-- /SEARCH BAR -->

        <!-- SIDEBAR QUICK-LAUNCH -->
        <!-- <div id="quicklaunch">
        <!-- /SIDEBAR QUICK-LAUNCH -->

        <!-- SIDEBAR MENU -->
        <ul>
            <?php foreach ($menus as $menu) { ?>
            <li class="has-sub <?php echo @$menu['active'];?>">
                <?php if ($menu['href']) { ?>
                    <a href="<?php echo $menu['href']; ?>"><i class="fa <?php echo $menu['icon']; ?> fa-fw"></i> <span class="menu-text"><?php echo $menu['name']; ?></span></a>
                <?php } else { ?>
                    <a href="javascript:;">
                        <i class="fa <?php echo $menu['icon']; ?> fa-fw"></i> <span class="menu-text"><?php echo $menu['name']; ?></span>
                        <span class="arrow"></span>
                    </a>
                <?php } ?>
                <?php if ($menu['children']) { ?>
                <ul class="sub">
                    <?php foreach ($menu['children'] as $children_1) { ?>
                        <?php if ($children_1['href']) { ?>
                        <li class="<?php echo @$children_1['current'];?>">
                            <a href="<?php echo $children_1['href']; ?>"><span class="sub-menu-text"><?php echo $children_1['name']; ?></span></a>
                        <?php } else { ?>
                        <li class="has-sub-sub">
                            <a href="javascript:;">
                                <span class="sub-menu-text"><?php echo $children_1['name']; ?></span>
                                <span class="arrow"></span>
                            </a>
                        <?php } ?>
                        <?php if ($children_1['children']) { ?>
                        <ul class="sub-sub">
                            <?php foreach ($children_1['children'] as $children_2) { ?>
                                <li><a href="<?php echo $children_2['href']; ?>"><span class="sub-sub-menu-text"><?php echo $children_2['name']; ?></span></a></li>
                            <?php } ?>
                        </ul>
                        <?php } ?>
                    </li>
                    <?php } ?>
                </ul>
                <?php } ?>
            </li>
            <?php } ?>
        </ul>
        <!-- /SIDEBAR MENU -->
    </div>
</div>
