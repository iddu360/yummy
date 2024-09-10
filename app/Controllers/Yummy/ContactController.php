<?php

namespace App\Controllers\Yummy;

use App\Models\MailingModel;

use App\Controllers\BaseController;
// use CodeIgniter\HTTP\ResponseInterface;

class ContactController extends BaseController
{
    protected $mails;
    public function __construct()
    {
        helper('form');
        $session = \Config\Services::session();
        $this->mails = new MailingModel;
    }
    public function index()
    {
        // echo "TESTING";
    }
    public function contactus()
    {
        return view('yummy/pages/contact');
    }
    public function mailing()
    {
        $this->mails = new MailingModel;
        $session = \Config\Services::session();

        $name = $this->request->getVar('name');
        $from = $this->request->getVar('email');
        $subject = $this->request->getVar('subject');
        $message = $this->request->getVar('message');

        $email = \Config\Services::email();
        $email->setTo('idduemmanuel19@gmail.com');
        $email->setFrom($from);
        $email->setSubject($subject);

        $email->setMessage('<h5>New Contact Message from Yummy</h5> <br> From : '.$name.'<br> Email: '.$from.'</b> <br> Message: '.$message);

        $data = array(
            'name' => $this->request->getVar('name'),
            'email' => $this->request->getVar('email'),
            'subject' => $this->request->getVar('subject'),
            'message' => $this->request->getVar('message'),
        );
        $insert = $this->mails->insert($data);
        
        try {
            $mailIt = $email->send();
            if ($mailIt) {
                $session->setFlashdata('mailing-success', 'Your Mail has been received and we will get back to you shortly.');
                return redirect()->to(base_url().'/contactus');
            } else {
                $session->setFlashdata('mailing-failed', 'Sorry, something wrong happened!!...');
                return redirect()->to('/contactus');
            }
        } catch (\Exception $e) {
            $session->setFlashdata('mailing-failed', 'Something wrong happened, please try again... (' . $e->getMessage() . ')');
        }
    }
}
