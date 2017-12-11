<?php
class ControllerCommonHeader extends Controller {
	public function index() {

		$data['title'] = "Работает!!!";
        $this->response->setOutput($this->load->view('common/header', $data));
	}
}
