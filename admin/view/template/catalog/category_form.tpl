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
                    <button type="submit" form="form-category" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
                    <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
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
                <?php if ($error_warning) { ?>
                <div class="alert alert-block alert-danger fade in">
                    <a class="close" data-dismiss="alert" href="#" aria-hidden="true">&times;</a>
                    <h5><i class="fa fa-times"></i> Ошибка!</h5>
                    <p><?php echo $error_warning;?></p>
                </div>
                <?php } ?>
              </div>
            </div>
          <!-- /PAGE HEADER -->
          <!-- PAGE CONTENT -->
          <div class="row">
            <div class="col-sm-12 box-container">
              <!-- BOX -->
              <div class="box border">
                <div class="box-title">
                  <h4><i class="fa fa-bars"></i><span class="hidden-inline-mobile">Box with tabs</span></h4>
                </div>
                  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-category" class="form-horizontal">
                <div class="box-body">
                  <div class="tabbable header-tabs">
                    <ul class="nav nav-tabs">
                      <li><a href="#tab-design" data-toggle="tab"><i class="fa fa-home"></i> <span class="hidden-inline-mobile"><?php echo $tab_design; ?></span></a></li>
                      <li><a href="#tab-data" data-toggle="tab"><i class="fa fa-home"></i> <span class="hidden-inline-mobile"><?php echo $tab_data; ?></span></a></li>
                      <li class="active"><a href="#tab-general" data-toggle="tab"><i class="fa fa-user"></i> <span class="hidden-inline-mobile"><?php echo $tab_general; ?></span></a></li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane clearfix active" id="tab-general">
                          <?php foreach ($languages as $language) { ?>
                          <div class="tab-pane" id="language<?php echo $language['language_id']; ?>">
                            <div class="form-group required">
                              <label class="col-sm-2 control-label" for="input-name<?php echo $language['language_id']; ?>"><?php echo $entry_name; ?></label>
                              <div class="col-sm-10">
                                <input type="text" name="category_description[<?php echo $language['language_id']; ?>][name]" value="<?php echo isset($category_description[$language['language_id']]) ? $category_description[$language['language_id']]['name'] : ''; ?>" placeholder="<?php echo $entry_name; ?>" id="input-name<?php echo $language['language_id']; ?>" class="form-control" />
                                <?php if (isset($error_name[$language['language_id']])) { ?>
                                <div class="text-danger"><?php echo $error_name[$language['language_id']]; ?></div>
                                <?php } ?>
                              </div>
                            </div>
                            <div class="form-group">
                              <label class="col-sm-2 control-label" for="input-description<?php echo $language['language_id']; ?>"><?php echo $entry_description; ?></label>
                              <div class="col-sm-10">
                                <textarea name="category_description[<?php echo $language['language_id']; ?>][description]" placeholder="<?php echo $entry_description; ?>" id="input-description<?php echo $language['language_id']; ?>" class="form-control summernote"><?php echo isset($category_description[$language['language_id']]) ? $category_description[$language['language_id']]['description'] : ''; ?></textarea>
                              </div>
                            </div>
                            <div class="form-group required">
                              <label class="col-sm-2 control-label" for="input-meta-title<?php echo $language['language_id']; ?>"><?php echo $entry_meta_title; ?></label>
                              <div class="col-sm-10">
                                <input type="text" name="category_description[<?php echo $language['language_id']; ?>][meta_title]" value="<?php echo isset($category_description[$language['language_id']]) ? $category_description[$language['language_id']]['meta_title'] : ''; ?>" placeholder="<?php echo $entry_meta_title; ?>" id="input-meta-title<?php echo $language['language_id']; ?>" class="form-control" />
                                <?php if (isset($error_meta_title[$language['language_id']])) { ?>
                                <div class="text-danger"><?php echo $error_meta_title[$language['language_id']]; ?></div>
                                <?php } ?>
                              </div>
                            </div>
                            <div class="form-group">
                              <label class="col-sm-2 control-label" for="input-meta-description<?php echo $language['language_id']; ?>"><?php echo $entry_meta_description; ?></label>
                              <div class="col-sm-10">
                                <textarea name="category_description[<?php echo $language['language_id']; ?>][meta_description]" rows="5" placeholder="<?php echo $entry_meta_description; ?>" id="input-meta-description<?php echo $language['language_id']; ?>" class="form-control"><?php echo isset($category_description[$language['language_id']]) ? $category_description[$language['language_id']]['meta_description'] : ''; ?></textarea>
                              </div>
                            </div>
                            <div class="form-group">
                              <label class="col-sm-2 control-label" for="input-meta-keyword<?php echo $language['language_id']; ?>"><?php echo $entry_meta_keyword; ?></label>
                              <div class="col-sm-10">
                                <textarea name="category_description[<?php echo $language['language_id']; ?>][meta_keyword]" rows="5" placeholder="<?php echo $entry_meta_keyword; ?>" id="input-meta-keyword<?php echo $language['language_id']; ?>" class="form-control"><?php echo isset($category_description[$language['language_id']]) ? $category_description[$language['language_id']]['meta_keyword'] : ''; ?></textarea>
                              </div>
                            </div>
                          </div>
                          <?php } ?>
                        </div>
                        <div class="tab-pane clearfix" id="tab-data">
                          <div class="form-group">
                            <label class="col-sm-2 control-label" for="input-parent"><?php echo $entry_parent; ?></label>
                            <div class="col-sm-10">
                              <input type="text" name="path" value="<?php echo $path; ?>" placeholder="<?php echo $entry_parent; ?>" id="input-parent" class="form-control" />
                              <input type="hidden" name="parent_id" value="<?php echo $parent_id; ?>" />
                              <?php if ($error_parent) { ?>
                              <div class="text-danger"><?php echo $error_parent; ?></div>
                              <?php } ?>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-sm-2 control-label" for="input-filter"><span data-toggle="tooltip" title="<?php echo $help_filter; ?>"><?php echo $entry_filter; ?></span></label>
                            <div class="col-sm-10">
                              <input type="text" name="filter" value="" placeholder="<?php echo $entry_filter; ?>" id="input-filter" class="form-control" />
                              <div id="category-filter" class="well well-sm" style="height: 150px; overflow: auto;">
                                <?php foreach ($category_filters as $category_filter) { ?>
                                    <div id="category-filter<?php echo $category_filter['filter_id']; ?>"><i class="fa fa-minus-circle"></i> <?php echo $category_filter['name']; ?>
                                        <input type="hidden" name="category_filter[]" value="<?php echo $category_filter['filter_id']; ?>" />
                                    </div>
                                <?php } ?>
                              </div>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-sm-2 control-label"><?php echo $entry_store; ?></label>
                            <div class="col-sm-10">
                              <div class="well well-sm" style="height: 150px; overflow: auto;">
                                <div class="checkbox">
                                  <label>
                                    <?php if (in_array(0, $category_store)) { ?>
                                        <input type="checkbox" name="category_store[]" value="0" checked="checked" />
                                        <?php echo $text_default; ?>
                                    <?php } else { ?>
                                        <input type="checkbox" name="category_store[]" value="0" />
                                        <?php echo $text_default; ?>
                                    <?php } ?>
                                  </label>
                                </div>
                                <?php foreach ($stores as $store) { ?>
                                <div class="checkbox">
                                  <label>
                                    <?php if (in_array($store['store_id'], $category_store)) { ?>
                                        <input type="checkbox" name="category_store[]" value="<?php echo $store['store_id']; ?>" checked="checked" />
                                        <?php echo $store['name']; ?>
                                    <?php } else { ?>
                                        <input type="checkbox" name="category_store[]" value="<?php echo $store['store_id']; ?>" />
                                        <?php echo $store['name']; ?>
                                    <?php } ?>
                                  </label>
                                </div>
                                <?php } ?>
                              </div>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-sm-2 control-label" for="input-keyword"><span data-toggle="tooltip" title="<?php echo $help_keyword; ?>"><?php echo $entry_keyword; ?></span></label>
                            <div class="col-sm-10">
                              <input type="text" name="keyword" value="<?php echo $keyword; ?>" placeholder="<?php echo $entry_keyword; ?>" id="input-keyword" class="form-control" />
                              <?php if ($error_keyword) { ?>
                              <div class="text-danger"><?php echo $error_keyword; ?></div>
                              <?php } ?>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-sm-2 control-label"><?php echo $entry_image; ?></label>
                            <div class="col-sm-10"><a href="" id="thumb-image" data-toggle="image" class="img-thumbnail"><img src="<?php echo $thumb; ?>" alt="" title="" data-placeholder="<?php echo $placeholder; ?>" /></a>
                              <input type="hidden" name="image" value="<?php echo $image; ?>" id="input-image" />
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-sm-2 control-label" for="input-top"><span data-toggle="tooltip" title="<?php echo $help_top; ?>"><?php echo $entry_top; ?></span></label>
                            <div class="col-sm-10">
                              <div class="checkbox">
                                <label>
                                  <?php if ($top) { ?>
                                    <input type="checkbox" name="top" value="1" checked="checked" id="input-top" />
                                  <?php } else { ?>
                                    <input type="checkbox" name="top" value="1" id="input-top" />
                                  <?php } ?>
                                  &nbsp; </label>
                              </div>
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-sm-2 control-label" for="input-column"><span data-toggle="tooltip" title="<?php echo $help_column; ?>"><?php echo $entry_column; ?></span></label>
                            <div class="col-sm-10">
                              <input type="text" name="column" value="<?php echo $column; ?>" placeholder="<?php echo $entry_column; ?>" id="input-column" class="form-control" />
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-sm-2 control-label" for="input-sort-order"><?php echo $entry_sort_order; ?></label>
                            <div class="col-sm-10">
                              <input type="text" name="sort_order" value="<?php echo $sort_order; ?>" placeholder="<?php echo $entry_sort_order; ?>" id="input-sort-order" class="form-control" />
                            </div>
                          </div>
                          <div class="form-group">
                            <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
                            <div class="col-sm-10">
                              <select name="status" id="input-status" class="form-control">
                                <?php if ($status) { ?>
                                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                                <option value="0"><?php echo $text_disabled; ?></option>
                                <?php } else { ?>
                                <option value="1"><?php echo $text_enabled; ?></option>
                                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                                <?php } ?>
                              </select>
                            </div>
                          </div>
                        </div>
                        <div class="tab-pane clearfix" id="tab-design">
                          <div class="table-responsive">
                            <table class="table table-bordered table-hover">
                              <thead>
                              <tr>
                                <td class="text-left"><?php echo $entry_store; ?></td>
                                <td class="text-left"><?php echo $entry_layout; ?></td>
                              </tr>
                              </thead>
                              <tbody>
                              <tr>
                                <td class="text-left"><?php echo $text_default; ?></td>
                                <td class="text-left"><select name="category_layout[0]" class="form-control">
                                    <option value=""></option>
                                    <?php foreach ($layouts as $layout) { ?>
                                    <?php if (isset($category_layout[0]) && $category_layout[0] == $layout['layout_id']) { ?>
                                    <option value="<?php echo $layout['layout_id']; ?>" selected="selected"><?php echo $layout['name']; ?></option>
                                    <?php } else { ?>
                                    <option value="<?php echo $layout['layout_id']; ?>"><?php echo $layout['name']; ?></option>
                                    <?php } ?>
                                    <?php } ?>
                                  </select></td>
                              </tr>
                              <?php foreach ($stores as $store) { ?>
                              <tr>
                                <td class="text-left"><?php echo $store['name']; ?></td>
                                <td class="text-left"><select name="category_layout[<?php echo $store['store_id']; ?>]" class="form-control">
                                    <option value=""></option>
                                    <?php foreach ($layouts as $layout) { ?>
                                    <?php if (isset($category_layout[$store['store_id']]) && $category_layout[$store['store_id']] == $layout['layout_id']) { ?>
                                    <option value="<?php echo $layout['layout_id']; ?>" selected="selected"><?php echo $layout['name']; ?></option>
                                    <?php } else { ?>
                                    <option value="<?php echo $layout['layout_id']; ?>"><?php echo $layout['name']; ?></option>
                                    <?php } ?>
                                    <?php } ?>
                                  </select></td>
                              </tr>
                              <?php } ?>
                              </tbody>
                            </table>
                          </div>
                        </div>
                    </div>
                  </div>
                </div>
                </form>
              </div>
              <!-- /BOX -->
            </div>
          </div>
          <!-- /PAGE CONTENT -->
        </div><!-- /CONTENT-->
      </div>
    </div>
  </div>
</section>
<!--/PAGE -->
<?php echo $footer; ?>
    <script type="text/javascript"><!--
        $('input[name=\'path\']').autocomplete({
            'source': function(request, response) {
                $.ajax({
                    url: 'index.php?route=catalog/category/autocomplete&token=<?php echo $token;?>&filter_name=' + encodeURIComponent(request),
                    dataType: 'json',
                    success: function(json) {
                        json.unshift({
                            category_id: 0,
                            name: '<?php echo $text_none; ?>'
                        });

                        response($.map(json, function(item) {
                            return {
                                label: item['name'],
                                value: item['category_id']
                            }
                        }));
                    }
                });
            },
            'select': function(item) {
                $('input[name=\'path\']').val(item['label']);
                $('input[name=\'parent_id\']').val(item['value']);
            }
        });

        $('input[name=\'filter\']').autocomplete({
            'source': function(request, response) {
                console.log(request);
                $.ajax({
                    url: 'index.php?route=catalog/filter/autocomplete&token=<?php echo $token;?>&filter_name=' + encodeURIComponent(request),
                    dataType: 'json',
                    success: function(json) {
                        response($.map(json, function(item) {
                            return {
                                label: item['name'],
                                value: item['filter_id']
                            }
                        }));
                    }
                });
            },
            'select': function(item) {
                $('input[name=\'filter\']').val('');

                $('#category-filter' + item['value']).remove();

                $('#category-filter').append('<div id="category-filter' + item['value'] + '"><i class="fa fa-minus-circle"></i> ' + item['label'] + '<input type="hidden" name="category_filter[]" value="' + item['value'] + '" /></div>');
            }
        });

        $('#category-filter').delegate('.fa-minus-circle', 'click', function() {
            $(this).parent().remove();
        });
        //-->
    </script>
</body>
</html>