<?php
class ControllerCommonColumnLeft extends Controller {
	public function index() {
		if (isset($this->request->get['token']) && isset($this->session->data['token']) && ($this->request->get['token'] == $this->session->data['token'])) {
			$this->load->language('common/column_left');

			// Create a 3 level menu array
			// Level 2 can not have children

			// Menu
			$data['menus'][] = array(
				'icon'	   => 'fa-dashboard',
				'name'	   => $this->language->get('text_dashboard'),
				'href'     => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], true),
				'children' => array()
			);

			// Catalog
			$catalog = array();

			if ($this->user->hasPermission('access', 'catalog/category')) {
                $catalog[] = array(
				    'current'  => ($this->request->get['route'] == 'catalog/category') ? "current" : "",
					'name'	   => $this->language->get('text_category'),
					'href'     => $this->url->link('catalog/category', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($this->user->hasPermission('access', 'catalog/product')) {
				$catalog[] = array(
                    'current'  => ($this->request->get['route'] == 'catalog/product') ? "current" : "",
					'name'	   => $this->language->get('text_product'),
					'href'     => $this->url->link('catalog/product', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($this->user->hasPermission('access', 'catalog/recurring')) {
				$catalog[] = array(
                    'current'  => ($this->request->get['route'] == 'catalog/recurring') ? "current" : "",
					'name'	   => $this->language->get('text_recurring'),
					'href'     => $this->url->link('catalog/recurring', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($this->user->hasPermission('access', 'catalog/filter')) {
				$catalog[] = array(
                    'current'  => ($this->request->get['route'] == 'catalog/filter') ? "current" : "",
					'name'	   => $this->language->get('text_filter'),
					'href'     => $this->url->link('catalog/filter', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($this->user->hasPermission('access', 'catalog/attribute')) {
				$catalog[] = array(
                    'current'  => ($this->request->get['route'] == 'catalog/attribute') ? "current" : "",
					'name'	   => $this->language->get('text_attribute'),
					'href'     => $this->url->link('catalog/attribute', 'token=' . $this->session->data['token'], true),
					'children' => array()
                );
			}

			if ($this->user->hasPermission('access', 'catalog/option')) {
				$catalog[] = array(
                    'current'  => ($this->request->get['route'] == 'catalog/option') ? "current" : "",
					'name'	   => $this->language->get('text_option'),
					'href'     => $this->url->link('catalog/option', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($this->user->hasPermission('access', 'catalog/manufacturer')) {
				$catalog[] = array(
                    'current'  => ($this->request->get['route'] == 'catalog/manufacturer') ? "current" : "",
					'name'	   => $this->language->get('text_manufacturer'),
					'href'     => $this->url->link('catalog/manufacturer', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($this->user->hasPermission('access', 'catalog/download')) {
				$catalog[] = array(
                    'current'  => ($this->request->get['route'] == 'catalog/download') ? "current" : "",
					'name'	   => $this->language->get('text_download'),
					'href'     => $this->url->link('catalog/download', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($this->user->hasPermission('access', 'catalog/review')) {
				$catalog[] = array(
                    'current'  => ($this->request->get['route'] == 'catalog/review') ? "current" : "",
					'name'	   => $this->language->get('text_review'),
					'href'     => $this->url->link('catalog/review', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($this->user->hasPermission('access', 'catalog/information')) {
				$catalog[] = array(
                    'current'  => ($this->request->get['route'] == 'catalog/information') ? "current" : "",
					'name'	   => $this->language->get('text_information'),
					'href'     => $this->url->link('catalog/information', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($catalog) {
			    foreach($catalog as $value){ $active = ($value['current'] == 'current') ? "active" : ""; if($active) break;}
				$data['menus'][] = array(
					'active'   => $active,
					'icon'	   => 'fa-tags',
					'name'	   => $this->language->get('text_catalog'),
					'href'     => '',
					'children' => $catalog
				);
			}


			// Extension
			$extension = array();

			if ($this->user->hasPermission('access', 'extension/installer')) {
				$extension[] = array(
                    'current'  => ($this->request->get['route'] == 'extension/installer') ? "current" : "",
					'name'	   => $this->language->get('text_installer'),
					'href'     => $this->url->link('extension/installer', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($this->user->hasPermission('access', 'extension/extension')) {
				$extension[] = array(
                    'current'  => ($this->request->get['route'] == 'extension/extension') ? "current" : "",
					'name'	   => $this->language->get('text_extension'),
					'href'     => $this->url->link('extension/extension', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($this->user->hasPermission('access', 'extension/modification')) {
				$extension[] = array(
                    'current'  => ($this->request->get['route'] == 'extension/modification') ? "current" : "",
					'name'	   => $this->language->get('text_modification'),
					'href'     => $this->url->link('extension/modification', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($this->user->hasPermission('access', 'extension/event')) {
				$extension[] = array(
                    'current'  => ($this->request->get['route'] == 'extension/event') ? "current" : "",
					'name'	   => $this->language->get('text_event'),
					'href'     => $this->url->link('extension/event', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($extension) {
                foreach($extension as $value){ $active = ($value['current'] == 'current') ? "active" : ""; if($active) break;}
                $data['menus'][] = array(
                    'active'   => $active,
					'icon'	   => 'fa-puzzle-piece',
					'name'	   => $this->language->get('text_extension'),
					'href'     => '',
					'children' => $extension
				);
			}

			// Design
			$design = array();

			if ($this->user->hasPermission('access', 'design/layout')) {
				$design[] = array(
                    'current'  => ($this->request->get['route'] == 'design/layout') ? "current" : "",
					'name'	   => $this->language->get('text_layout'),
					'href'     => $this->url->link('design/layout', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}
			if ($this->user->hasPermission('access', 'design/banner')) {
				$design[] = array(
                    'current'  => ($this->request->get['route'] == 'design/banner') ? "current" : "",
					'name'	   => $this->language->get('text_banner'),
					'href'     => $this->url->link('design/banner', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($design) {
                foreach($design as $value){ $active = ($value['current'] == 'current') ? "active" : ""; if($active) break;}
                $data['menus'][] = array(
                    'active'   => $active,
					'icon'	   => 'fa-television',
					'name'	   => $this->language->get('text_design'),
					'href'     => '',
					'children' => $design
				);
			}

			// Sales
			$sale = array();

			if ($this->user->hasPermission('access', 'sale/order')) {
				$sale[] = array(
                    'current'  => ($this->request->get['route'] == 'sale/order') ? "current" : "",
					'name'	   => $this->language->get('text_order'),
					'href'     => $this->url->link('sale/order', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($this->user->hasPermission('access', 'sale/recurring')) {
				$sale[] = array(
                    'current'  => ($this->request->get['route'] == 'sale/recurring') ? "current" : "",
					'name'	   => $this->language->get('text_recurring'),
					'href'     => $this->url->link('sale/recurring', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($this->user->hasPermission('access', 'sale/return')) {
				$sale[] = array(
                    'current'  => ($this->request->get['route'] == 'sale/return') ? "current" : "",
					'name'	   => $this->language->get('text_return'),
					'href'     => $this->url->link('sale/return', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			// Voucher
			$voucher = array();

			if ($this->user->hasPermission('access', 'sale/voucher')) {
				$voucher[] = array(
                    'current'  => ($this->request->get['route'] == 'sale/voucher') ? "current" : "",
					'name'	   => $this->language->get('text_voucher'),
					'href'     => $this->url->link('sale/voucher', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($this->user->hasPermission('access', 'sale/voucher_theme')) {
				$voucher[] = array(
                    'current'  => ($this->request->get['route'] == 'sale/voucher_theme') ? "current" : "",
					'name'	   => $this->language->get('text_voucher_theme'),
					'href'     => $this->url->link('sale/voucher_theme', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($voucher) {
				$sale[] = array(
					'name'	   => $this->language->get('text_voucher'),
					'href'     => '',
					'children' => $voucher
				);
			}

			if ($sale) {
                foreach($voucher as $value){ $active = ($value['current'] == 'current') ? "active" : ""; if($active) break;}
                $data['menus'][] = array(
                    'active'   => $active,
					'icon'	   => 'fa-shopping-cart',
					'name'	   => $this->language->get('text_sale'),
					'href'     => '',
					'children' => $sale
				);
			}

			// Customer
			$customer = array();

			if ($this->user->hasPermission('access', 'customer/customer')) {
				$customer[] = array(
                    'current'  => ($this->request->get['route'] == 'customer/customer') ? "current" : "",
					'name'	   => $this->language->get('text_customer'),
					'href'     => $this->url->link('customer/customer', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($this->user->hasPermission('access', 'customer/customer_group')) {
				$customer[] = array(
                    'current'  => ($this->request->get['route'] == 'customer/customer_group') ? "current" : "",
					'name'	   => $this->language->get('text_customer_group'),
					'href'     => $this->url->link('customer/customer_group', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($this->user->hasPermission('access', 'customer/custom_field')) {
				$customer[] = array(
                    'current'  => ($this->request->get['route'] == 'customer/custom_field') ? "current" : "",
					'name'	   => $this->language->get('text_custom_field'),
					'href'     => $this->url->link('customer/custom_field', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($customer) {
                foreach($customer as $value){ $active = ($value['current'] == 'current') ? "active" : ""; if($active) break;}
                $data['menus'][] = array(
                    'active'   => $active,
					'icon'	   => 'fa-user',
					'name'	   => $this->language->get('text_customer'),
					'href'     => '',
					'children' => $customer
				);
			}

			// Marketing
			$marketing = array();

			if ($this->user->hasPermission('access', 'marketing/marketing')) {
				$marketing[] = array(
                    'current'  => ($this->request->get['route'] == 'marketing/marketing') ? "current" : "",
					'name'	   => $this->language->get('text_marketing'),
					'href'     => $this->url->link('marketing/marketing', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($this->user->hasPermission('access', 'marketing/affiliate')) {
				$marketing[] = array(
                    'current'  => ($this->request->get['route'] == 'marketing/affiliate') ? "current" : "",
					'name'	   => $this->language->get('text_affiliate'),
					'href'     => $this->url->link('marketing/affiliate', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($this->user->hasPermission('access', 'marketing/coupon')) {
				$marketing[] = array(
                    'current'  => ($this->request->get['route'] == 'marketing/coupon') ? "current" : "",
					'name'	   => $this->language->get('text_coupon'),
					'href'     => $this->url->link('marketing/coupon', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($this->user->hasPermission('access', 'marketing/contact')) {
				$marketing[] = array(
                    'current'  => ($this->request->get['route'] == 'marketing/contact') ? "current" : "",
					'name'	   => $this->language->get('text_contact'),
					'href'     => $this->url->link('marketing/contact', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($marketing) {
                foreach($marketing as $value){ $active = ($value['current'] == 'current') ? "active" : ""; if($active) break;}
                $data['menus'][] = array(
                    'active'   => $active,
					'icon'	   => 'fa-share-alt',
					'name'	   => $this->language->get('text_marketing'),
					'href'     => '',
					'children' => $marketing
				);
			}

			// System
			$system = array();

			if ($this->user->hasPermission('access', 'setting/setting')) {
				$system[] = array(
                    'current'  => ($this->request->get['route'] == 'setting/setting') ? "current" : "",
					'name'	   => $this->language->get('text_setting'),
					'href'     => $this->url->link('setting/store', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			// Users
			$user = array();

			if ($this->user->hasPermission('access', 'user/user')) {
				$user[] = array(
                    'current'  => ($this->request->get['route'] == 'user/user') ? "current" : "",
					'name'	   => $this->language->get('text_users'),
					'href'     => $this->url->link('user/user', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($this->user->hasPermission('access', 'user/user_permission')) {
				$user[] = array(
                    'current'  => ($this->request->get['route'] == 'user/user_permission') ? "current" : "",
					'name'	   => $this->language->get('text_user_group'),
					'href'     => $this->url->link('user/user_permission', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($this->user->hasPermission('access', 'user/api')) {
				$user[] = array(
                    'current'  => ($this->request->get['route'] == 'user/api') ? "current" : "",
					'name'	   => $this->language->get('text_api'),
					'href'     => $this->url->link('user/api', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($user) {
                foreach($user as $value){ $current = ($value['current'] == 'current') ? "current" : ""; if($current) break;}
                $system[] = array(
                    'current'  => $current,
					'name'	   => $this->language->get('text_users'),
					'href'     => '',
					'children' => $user
				);
			}

			// Localisation
			$localisation = array();

			if ($this->user->hasPermission('access', 'localisation/location')) {
				$localisation[] = array(
                    'current'  => ($this->request->get['route'] == 'localisation/location') ? "current" : "",
					'name'	   => $this->language->get('text_location'),
					'href'     => $this->url->link('localisation/location', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($this->user->hasPermission('access', 'localisation/language')) {
				$localisation[] = array(
                    'current'  => ($this->request->get['route'] == 'localisation/language') ? "current" : "",
					'name'	   => $this->language->get('text_language'),
					'href'     => $this->url->link('localisation/language', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($this->user->hasPermission('access', 'localisation/currency')) {
				$localisation[] = array(
                    'current'  => ($this->request->get['route'] == 'localisation/currency') ? "current" : "",
					'name'	   => $this->language->get('text_currency'),
					'href'     => $this->url->link('localisation/currency', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($this->user->hasPermission('access', 'localisation/stock_status')) {
				$localisation[] = array(
                    'current'  => ($this->request->get['route'] == 'localisation/stock_status') ? "current" : "",
					'name'	   => $this->language->get('text_stock_status'),
					'href'     => $this->url->link('localisation/stock_status', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($this->user->hasPermission('access', 'localisation/order_status')) {
				$localisation[] = array(
                    'current'  => ($this->request->get['route'] == 'localisation/order_status') ? "current" : "",
					'name'	   => $this->language->get('text_order_status'),
					'href'     => $this->url->link('localisation/order_status', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			// Returns
			$return = array();

			if ($this->user->hasPermission('access', 'localisation/return_status')) {
				$return[] = array(
                    'current'  => ($this->request->get['route'] == 'localisation/return_status') ? "current" : "",
					'name'	   => $this->language->get('text_return_status'),
					'href'     => $this->url->link('localisation/return_status', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($this->user->hasPermission('access', 'localisation/return_action')) {
				$return[] = array(
                    'current'  => ($this->request->get['route'] == 'localisation/return_action') ? "current" : "",
					'name'	   => $this->language->get('text_return_action'),
					'href'     => $this->url->link('localisation/return_action', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($this->user->hasPermission('access', 'localisation/return_reason')) {
				$return[] = array(
                    'current'  => ($this->request->get['route'] == 'localisation/return_reason') ? "current" : "",
					'name'	   => $this->language->get('text_return_reason'),
					'href'     => $this->url->link('localisation/return_reason', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($return) {
                foreach($return as $value){ $current = ($value['current'] == 'current') ? "current" : ""; if($current) break;}
                $localisation[] = array(
                    'current'  => $current,
					'name'	   => $this->language->get('text_return'),
					'href'     => '',
					'children' => $return
				);
			}

			if ($this->user->hasPermission('access', 'localisation/country')) {
				$localisation[] = array(
                    'current'  => ($this->request->get['route'] == 'localisation/country') ? "current" : "",
					'name'	   => $this->language->get('text_country'),
					'href'     => $this->url->link('localisation/country', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($this->user->hasPermission('access', 'localisation/zone')) {
				$localisation[] = array(
                    'current'  => ($this->request->get['route'] == 'localisation/zone') ? "current" : "",
					'name'	   => $this->language->get('text_zone'),
					'href'     => $this->url->link('localisation/zone', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($this->user->hasPermission('access', 'localisation/geo_zone')) {
				$localisation[] = array(
                    'current'  => ($this->request->get['route'] == 'localisation/geo_zone') ? "current" : "",
					'name'	   => $this->language->get('text_geo_zone'),
					'href'     => $this->url->link('localisation/geo_zone', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			// Tax
			$tax = array();

			if ($this->user->hasPermission('access', 'localisation/tax_class')) {
				$tax[] = array(
                    'current'  => ($this->request->get['route'] == 'localisation/tax_class') ? "current" : "",
					'name'	   => $this->language->get('text_tax_class'),
					'href'     => $this->url->link('localisation/tax_class', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($this->user->hasPermission('access', 'localisation/tax_rate')) {
				$tax[] = array(
                    'current'  => ($this->request->get['route'] == 'localisation/tax_rate') ? "current" : "",
					'name'	   => $this->language->get('text_tax_rate'),
					'href'     => $this->url->link('localisation/tax_rate', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($tax) {
                foreach($tax as $value){ $current = ($value['current'] == 'current') ? "current" : ""; if($current) break;}
                $localisation[] = array(
                    'current'  => $current,
					'name'	   => $this->language->get('text_tax'),
					'href'     => '',
					'children' => $tax
				);
			}

			if ($this->user->hasPermission('access', 'localisation/length_class')) {
				$localisation[] = array(
                    'current'  => ($this->request->get['route'] == 'localisation/length_class') ? "current" : "",
					'name'	   => $this->language->get('text_length_class'),
					'href'     => $this->url->link('localisation/length_class', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($this->user->hasPermission('access', 'localisation/weight_class')) {
				$localisation[] = array(
                    'current'  => ($this->request->get['route'] == 'localisation/weight_class') ? "current" : "",
					'name'	   => $this->language->get('text_weight_class'),
					'href'     => $this->url->link('localisation/weight_class', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($localisation) {
                foreach($localisation as $value){ $current = ($value['current'] == 'current') ? "current" : ""; if($current) break;}
                $system[] = array(
                    'current'  => $current,
					'name'	   => $this->language->get('text_localisation'),
					'href'     => '',
					'children' => $localisation
				);
			}

			// Tools
			$tool = array();

			if ($this->user->hasPermission('access', 'tool/upload')) {
				$tool[] = array(
                    'current'  => ($this->request->get['route'] == 'tool/upload') ? "current" : "",
					'name'	   => $this->language->get('text_upload'),
					'href'     => $this->url->link('tool/upload', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($this->user->hasPermission('access', 'tool/backup')) {
				$tool[] = array(
                    'current'  => ($this->request->get['route'] == 'tool/backup') ? "current" : "",
					'name'	   => $this->language->get('text_backup'),
					'href'     => $this->url->link('tool/backup', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($this->user->hasPermission('access', 'tool/log')) {
				$tool[] = array(
                    'current'  => ($this->request->get['route'] == 'tool/log') ? "current" : "",
					'name'	   => $this->language->get('text_log'),
					'href'     => $this->url->link('tool/log', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($tool) {
                foreach($tool as $value){ $current = ($value['current'] == 'current') ? "current" : ""; if($current) break;}
				$system[] = array(
                    'current'   => $current,
					'name'	   => $this->language->get('text_tools'),
					'href'     => '',
					'children' => $tool
				);
			}

			if ($system) {
                foreach($system as $value){ $active = ($value['current'] == 'current') ? "active" : ""; if($active) break;}
                $data['menus'][] = array(
                    'active'   => $active,
					'icon'	   => 'fa-cog',
					'name'	   => $this->language->get('text_system'),
					'href'     => '',
					'children' => $system
				);
			}

			// Report
			$report = array();

			// Report Sales
			$report_sale = array();

			if ($this->user->hasPermission('access', 'report/sale_order')) {
				$report_sale[] = array(
                    'current'  => ($this->request->get['route'] == 'report/sale_order') ? "current" : "",
					'name'	   => $this->language->get('text_report_sale_order'),
					'href'     => $this->url->link('report/sale_order', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($this->user->hasPermission('access', 'report/sale_tax')) {
				$report_sale[] = array(
                    'current'  => ($this->request->get['route'] == 'report/sale_tax') ? "current" : "",
					'name'	   => $this->language->get('text_report_sale_tax'),
					'href'     => $this->url->link('report/sale_tax', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($this->user->hasPermission('access', 'report/sale_shipping')) {
				$report_sale[] = array(
                    'current'  => ($this->request->get['route'] == 'report/sale_shipping') ? "current" : "",
					'name'	   => $this->language->get('text_report_sale_shipping'),
					'href'     => $this->url->link('report/sale_shipping', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($this->user->hasPermission('access', 'report/sale_return')) {
				$report_sale[] = array(
                    'current'  => ($this->request->get['route'] == 'report/sale_return') ? "current" : "",
					'name'	   => $this->language->get('text_report_sale_return'),
					'href'     => $this->url->link('report/sale_return', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($this->user->hasPermission('access', 'report/sale_coupon')) {
				$report_sale[] = array(
                    'current'  => ($this->request->get['route'] == 'report/sale_coupon') ? "current" : "",
					'name'	   => $this->language->get('text_report_sale_coupon'),
					'href'     => $this->url->link('report/sale_coupon', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($report_sale) {
                foreach($report_sale as $value){ $active = ($value['current'] == 'current') ? "active" : ""; if($active) break;}
                $report[] = array(
                    'active'   => $active,
					'name'	   => $this->language->get('text_report_sale'),
					'href'     => '',
					'children' => $report_sale
				);
			}

			// Report Products
			$report_product = array();

			if ($this->user->hasPermission('access', 'report/product_viewed')) {
				$report_product[] = array(
                    'current'  => ($this->request->get['route'] == 'report/product_viewed') ? "current" : "",
					'name'	   => $this->language->get('text_report_product_viewed'),
					'href'     => $this->url->link('report/product_viewed', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($this->user->hasPermission('access', 'report/product_purchased')) {
				$report_product[] = array(
                    'current'  => ($this->request->get['route'] == 'report/product_purchased') ? "current" : "",
					'name'	   => $this->language->get('text_report_product_purchased'),
					'href'     => $this->url->link('report/product_purchased', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($report_product) {
                foreach($report_product as $value){ $active = ($value['current'] == 'current') ? "active" : ""; if($active) break;}
                $report[] = array(
                    'active'   => $active,
					'name'	   => $this->language->get('text_report_product'),
					'href'     => '',
					'children' => $report_product
				);
			}

			// Report Customers
			$report_customer = array();

			if ($this->user->hasPermission('access', 'report/customer_online')) {
				$report_customer[] = array(
                    'current'  => ($this->request->get['route'] == 'report/customer_online') ? "current" : "",
					'name'	   => $this->language->get('text_report_customer_online'),
					'href'     => $this->url->link('report/customer_online', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($this->user->hasPermission('access', 'report/customer_activity')) {
				$report_customer[] = array(
                    'current'  => ($this->request->get['route'] == 'report/customer_activity') ? "current" : "",
					'name'	   => $this->language->get('text_report_customer_activity'),
					'href'     => $this->url->link('report/customer_activity', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($this->user->hasPermission('access', 'report/customer_search')) {
				$report_customer[] = array(
                    'current'  => ($this->request->get['route'] == 'report/customer_search') ? "current" : "",
					'name'	   => $this->language->get('text_report_customer_search'),
					'href'     => $this->url->link('report/customer_search', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($this->user->hasPermission('access', 'report/customer_order')) {
				$report_customer[] = array(
                    'current'  => ($this->request->get['route'] == 'report/customer_order') ? "current" : "",
					'name'	   => $this->language->get('text_report_customer_order'),
					'href'     => $this->url->link('report/customer_order', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($this->user->hasPermission('access', 'report/customer_reward')) {
				$report_customer[] = array(
                    'current'  => ($this->request->get['route'] == 'report/customer_reward') ? "current" : "",
					'name'	   => $this->language->get('text_report_customer_reward'),
					'href'     => $this->url->link('report/customer_reward', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($this->user->hasPermission('access', 'report/customer_credit')) {
				$report_customer[] = array(
                    'current'  => ($this->request->get['route'] == 'report/customer_credit') ? "current" : "",
					'name'	   => $this->language->get('text_report_customer_credit'),
					'href'     => $this->url->link('report/customer_credit', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($report_customer) {
                foreach($report_customer as $value){ $active = ($value['current'] == 'current') ? "active" : ""; if($active) break;}
                $report[] = array(
                    'active'   => $active,
					'name'	   => $this->language->get('text_report_customer'),
					'href'     => '',
					'children' => $report_customer
				);
			}

			// Report Marketing
			$report_marketing = array();

			if ($this->user->hasPermission('access', 'report/marketing')) {
				$report_marketing[] = array(
                    'current'  => ($this->request->get['route'] == 'report/marketing') ? "current" : "",
					'name'	   => $this->language->get('text_report_marketing'),
					'href'     => $this->url->link('report/marketing', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($this->user->hasPermission('access', 'report/affiliate')) {
				$report_marketing[] = array(
                    'current'  => ($this->request->get['route'] == 'report/affiliate') ? "current" : "",
					'name'	   => $this->language->get('text_report_affiliate'),
					'href'     => $this->url->link('report/affiliate', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($this->user->hasPermission('access', 'report/affiliate_activity')) {
				$report_marketing[] = array(
                    'current'  => ($this->request->get['route'] == 'report/affiliate_activity') ? "current" : "",
					'name'	   => $this->language->get('text_report_affiliate_activity'),
					'href'     => $this->url->link('report/affiliate_activity', 'token=' . $this->session->data['token'], true),
					'children' => array()
				);
			}

			if ($report_marketing) {
                foreach($report_marketing as $value){ $active = ($value['current'] == 'current') ? "active" : ""; if($active) break;}
                $report[] = array(
                    'active'   => $active,
					'name'	   => $this->language->get('text_report_marketing'),
					'href'     => '',
					'children' => $report_marketing
				);
			}

			if ($report) {
                foreach($report as $value){ $active = ($value['active'] == 'active') ? "active" : ""; if($active) break;}
                $data['menus'][] = array(
                    'active'   => $active,
					'icon'	   => 'fa-bar-chart-o',
					'name'	   => $this->language->get('text_reports'),
					'href'     => '',
					'children' => $report
				);	
			}

			return $this->load->view('common/column_left', $data);
		}
	}
}