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
        $this->CI =& get_instance();
    }

    public function is_loggedin()
    {
        $class = $this->CI->router->fetch_class();
        $method = $this->CI->router->fetch_method();
        //echo $method;
        $class_methods=get_class_methods($class);
        if(!in_array('$method', $class_methods)){
            //redirect(base_url().'access_denied');
        } else {
            echo 'Not found';
        }
    }
}