<?php echo $header; ?>
<!-- PAGE -->
<section id="page">
  <!-- SIDEBAR -->
  <?php echo $column_left;?>
  <!-- /SIDEBAR -->
  <div id="main-content">
    <div class="container">
      <div class="row">
        <div id="content" class="col-lg-12">
          <!-- PAGE HEADER-->
          <div class="row">
            <div class="col-sm-12">
              <div class="page-header">
                <div class="container-fluid">
                  <div class="pull-right padding-top-20">
                    <a href="<?php echo $add; ?>" data-toggle="tooltip" title="<?php echo $button_add; ?>" class="btn btn-primary"><i class="fa fa-plus"></i></a>
                    <a href="<?php echo $repair; ?>" data-toggle="tooltip" title="<?php echo $button_rebuild; ?>" class="btn btn-default"><i class="fa fa-refresh"></i></a>
                    <button type="button" data-toggle="tooltip" title="<?php echo $button_delete; ?>" class="btn btn-danger" onclick="confirm('<?php echo $text_confirm; ?>') ? $('#form-category').submit() : false;"><i class="fa fa-trash-o"></i></button>
                  </div>
                  <!-- BREADCRUMBS -->
                  <ul class="breadcrumb">
                    <?php foreach ($breadcrumbs as $key=>$breadcrumb) { ?>
                      <li>
                        <?php if($key==0) { echo '<i class="fa fa-home"></i>';} ?>
                        <?php if(isset($breadcrumb['href'])) { ?>
                          <a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
                        <?php } else { ?>
                          <?php echo $breadcrumb['text']; ?>
                        <?php } ?>
                      </li>
                    <?php } ?>
                  </ul>
                  <!-- /BREADCRUMBS -->
                  <div class="clearfix">
                    <h3 class="content-title pull-left"><?php echo $heading_title;?></h3>
                  </div>
                  <div class="description"><?php echo $heading_description;?></div>
                </div>
              </div>
              <?php if ($error_warning) { ?>
                <div class="alert alert-block alert-danger fade in">
                  <a class="close" data-dismiss="alert" href="#" aria-hidden="true">&times;</a>
                  <h5><i class="fa fa-times"></i> Ошибка!</h5>
                  <p><?php echo $error_warning;?></p>
                </div>
              <?php } ?>
              <?php if ($success) { ?>
                <div class="alert alert-block alert-success fade in">
                  <a class="close" data-dismiss="alert" href="#" aria-hidden="true">&times;</a>
                  <h5><i class="fa fa-heart"></i> Выполнено!</h5>
                  <p><?php echo $success; ?></p>
                </div>
              <?php } ?>
            </div>
          </div>
          <!-- /PAGE HEADER -->
          <!-- PAGE CONTENT -->
          <div class="row">
            <div class="col-sm-12">
            <div class="box border blue">
              <div class="box-title">
                <h4><i class="fa fa-table"></i><?php echo $heading_title;?></h4>
              </div>
              <div class="box-body">
                <form action="<?php echo $delete; ?>" method="post" enctype="multipart/form-data" id="form-category">
                  <table class="table table-striped">
                    <thead>
                      <tr>
                        <th style="width: 1px;" class="text-center"><input type="checkbox" onclick="$('input[name*=\'selected\']').prop('checked', this.checked);" /></th>
                        <th>Имя категории</th>
                        <th class="text-right">Номер сортировки</th>
                        <th class="text-right">Действие</th>
                      </tr>
                    </thead>
                    <tbody>
                    <?php if ($categories) { ?>
                      <?php foreach ($categories as $category) { ?>
                        <tr>
                          <td class="text-center">
                            <?php if (in_array($category['category_id'], $selected)) { ?>
                              <input type="checkbox" name="selected[]" value="<?php echo $category['category_id']; ?>" checked="checked" />
                            <?php } else { ?>
                              <input type="checkbox" name="selected[]" value="<?php echo $category['category_id']; ?>" />
                            <?php } ?>
                          </td>
                          <td class="text-left"><?php echo $category['name']; ?></td>
                          <td class="text-right"><?php echo $category['sort_order']; ?></td>
                          <td class="text-right"><a href="<?php echo $category['edit']; ?>" data-toggle="tooltip" title="<?php echo $button_edit; ?>" class="btn btn-primary"><i class="fa fa-pencil"></i></a></td>
                        </tr>
                      <?php } ?>
                    <?php } else { ?>
                      <tr>
                        <td class="text-center" colspan="4"><?php echo $text_no_results; ?></td>
                      </tr>
                    <?php } ?>
                    </tbody>
                  </table>
                </form>
              </div>
            </div>
            </div>
          </div>
          <div class="row">
            <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
            <div class="col-sm-6 text-right"><?php echo $results; ?></div>
          </div>
          <!-- /PAGE CONTENT -->
        </div><!-- /CONTENT-->
      </div>
    </div>
  </div>
</section>
<!--/PAGE -->
<?php echo $footer; ?>