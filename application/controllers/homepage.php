<?php
defined('BASEPATH') or exit('No direct script access allowed');

class homepage extends CI_Controller
{

    public function index()
    {
        $this->db->select('*');
        $this->db->from('pertanyaan');

        $data['pertanyaan'] = $this->db->get()->result_array();
        // var_dump($data);
        // die;
        // $data['user'] = $this->db->get_where('user', ['email' =>$this->session->userdata('email')])->row_array();
        $this->load->view("templates/header");
        $this->load->view('pertanyaan/index', $data);
        // $this->load->view("templates/footer");
    }

    public function check_diagnose()
    {
        $submitted = $this->input->post('choice');
        $arrLength = count($submitted);
        $final = null;
        for ($i = 0; $i < $arrLength; $i++) {
            $final = $final . $submitted[$i];
        }
        $this->db->select('*');
        $this->db->from('list_jawaban');
        $list_jawaban = $this->db->get()->result_array();
        $diagnosed = array();
        $done = 0;

        foreach ($list_jawaban as $iterasi) {
            $done = 0;
            $masuk = 1;
            $total_positive = substr_count($iterasi['id_jawaban'], '1');
            $positive = 0;
            for ($i = 0; $i < $arrLength && $done != 1; $i++) {
                if ($final[$i] == 1) {
                    // var_dump($iterasi['id_jawaban'][$i]);
                    // die;
                    if ($final[$i] == $iterasi['id_jawaban'][$i]) {
                        $positive++;
                        if ($positive == $total_positive) {
                            foreach ($diagnosed as $check) {
                                if ($check['nama_penyakit'] == $iterasi['nama_penyakit']) {
                                    $masuk = 0;
                                }
                            }
                            if ($masuk == 1) {
                                array_push($diagnosed, $iterasi);
                                $done = 1;
                            }
                        }
                    }
                }
            }
        }

        // // test_AbrasiGigi_DrySocket
        // $this->load->library('unit_test');
        // $expected = array($list_jawaban[3], $list_jawaban[16]);
        // // var_dump($expected);
        // // var_dump($diagnosed);
        // // die;
        // $test_name = 'Tes mendapatkan Penyakit Abrasi Gigi dan DrySocket';
        // echo $this->unit->run($diagnosed, $expected, $test_name);
        // die;
        // // Success


        // test_Abses_Periodontal
        $this->load->library('unit_test');
        $expected = array($list_jawaban[0]);
        // var_dump($expected);
        // var_dump($diagnosed);
        // die;
        $test_name = 'Tes mendapatkan Penyakit Abses Periodontal';
        echo $this->unit->run($diagnosed, $expected, $test_name);
        die;
        // Success
        //test_

        //final checking
        if (empty($diagnosed)) {
            $this->db->select('*');
            $this->db->from('list_tips');
            $jawaban = $this->db->get()->result_array();
            $data['jawaban'] = $jawaban;
            $this->load->view("templates/header");
            $this->load->view('pertanyaan/no_answer', $data);
            $this->load->view("templates/footer");
        } else {
            $data['jawaban'] = $diagnosed;
            $this->load->view("templates/header");
            $this->load->view('pertanyaan/jawaban', $data);
            $this->load->view("templates/footer");
        }
    }

    public function test_DrySocket_AbrasiGigi()
    {
    }
}
