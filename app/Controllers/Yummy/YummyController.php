<?php

namespace App\Controllers\Yummy;

use App\Controllers\BaseController;
use CodeIgniter\HTTP\ResponseInterface;

class YummyController extends BaseController
{
    public function __construct(){
        helper('form');
    }
    public function index()
    {
        echo view('yummy/pages/index');
    }
}
