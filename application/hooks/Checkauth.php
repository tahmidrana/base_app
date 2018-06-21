<?php defined('BASEPATH') OR exit('No direct script access allowed');
/**
 * Created by PhpStorm.
 * User: User
 * Date: 5/29/2018
 * Time: 12:33 PM
 */

class Checkauth
{
    private $CI;
    public function __construct()
    {
        //session_start();
        //$this->CI =& get_instance();
    }

    public function is_loggedin()
    {

        /*if($this->CI->session->userdata('loggedin') == 0) {
            //redirect('/login');
            echo 'Not loggedin';
        }*/
        /*echo '<pre>';
        print_r($_SESSION);
        die();*/
    }
}