<?php

namespace App\Controllers;

use App\Models\ProductModel;
use App\Models\SettingModel;
use App\Models\ReviewModel;

class Pages extends BaseController
{
    public function __construct()
    {
        $this->validation =  \Config\Services::validation();
        $this->ReviewModel = new ReviewModel();
        $this->SettingModel = new SettingModel();
        $this->ProductModel = new ProductModel();
    }
    public function index()
    {

        $reviews = $this->ReviewModel->getReview();
        $data = [
            'store_name' => 'Toko Sayur Ku',
            'title' => 'About Us',
            'reviews' => $reviews
        ];
        return view('themes\vegefoods\pages\about', $data);
    }

    public function contact()
    {
        $this->session = session();
        // $profile = user_data();

        // $data['user'] = $profile;
        //$data['flash'] = $this->session->flashdata('contact_flash');
        $reviews = $this->ReviewModel->getReview();
        $data = [
            'store_name' => 'Toko Ku',
            'title' => 'Contact Us',
            'flash' => $this->session->getflashdata('contact_flash'),
            'reviews' => $reviews
        ];
        return view('themes\vegefoods\pages\contact', $data);
    }

    public function send_message()
    {
        $this->session = session();
        $validate = $this->validate([
            'name' => [
                'label' => 'Nama lengkap',
                'rules' => 'required'
            ],
            'subject' => [
                'label' => 'Subjek pesan',
                'rules' => 'required'
            ],
            'email' => [
                'label' => 'Email',
                'rules' => 'required'
            ],
            'message' => [
                'label' => 'Pesan',
                'rules' => 'required'
            ],
        ]);
        if (!$validate) {
            return redirect()->back()->withInput();
        }
        $name = $this->request->getPost('name');
        $email = $this->request->getPost('email');
        $subject = $this->request->getPost('subject');
        $message = $this->request->getPost('message');

        $data = array(
            'name' => $name,
            'email' => $email,
            'subject' => $subject,
            'message' => $message,
            'contact_date' => date('Y-m-d H:i:s')
        );

        $this->ReviewModel->register_contact($data);
        $this->session->setflashdata('contact_flash', 'Pesan berhasil dikirimkan. Kami akan membalas dalam waktu 2x24 jam');
        return redirect()->to(base_url('pages/contact'));
    }
}
