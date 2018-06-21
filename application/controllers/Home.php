<?php defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * Created by PhpStorm.
 * User: Riyad
 * Date: 4/5/2018
 * Time: 12:38 PM
 */

//include_once(APPPATH.'core/My_Controller.php');
class Home extends My_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->session->set_userdata('main_menu', 'home');
        $this->load->model('config_model');
        $this->load->model('home_model');
    }

    public function index() {
        $this->session->set_userdata('sub_menu', '');
        $data['main_content'] = 'vw_home/vw_home';
        $this->load->view('vw_master', $data);
    }

    public function form_report($form_id)
    {
        $data = $this->home_model->form_report($form_id);
        $division = $this->home_model->get_divisions();
        $all_data = array();

        foreach ($data as $row) {
            $x['division_id'] = $row['division_id'];
            $x['division_en_name'] = $row['division_en_name'];
            $x['total_assigned'] = (int) $row['total_assigned'];
            $x['total_started'] = (int) $row['total_started'];
            $x['total_submitted'] = (int) $row['total_submitted'];
            $x['total_not_started'] = (int) $row['total_not_started'];

            array_push($all_data, $x);
        }
        foreach ($division as $div) {
            if(array_search(trim($div['division_id']),array_column($all_data, 'division_id'))>-1) {
                //
            } else {
                $x = array(
                    'division_en_name'=> $div['division_en_name'],
                    'total_assigned'=> 0,
                    'total_started'=> 0,
                    'total_submitted'=> 0,
                    'total_not_started'=> 0
                );
                array_push($all_data, $x);
            }
        }


        $res = array(
            'dataSource' => $all_data
        );
        echo json_encode($res);
    }

}