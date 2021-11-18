<div id="content-wrapper" class="d-flex flex-column">

    <!-- Main Content -->
    <div id="content">

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
            <div class="nav-item" onclick="location.href='<?php echo base_url(); ?>'">
                <a href="#">Poris Dentist</a>
            </div>
            <ul class="navbar-nav ml-auto">
                <div class="topbar-divider d-none d-sm-block"></div>

                <!-- Nav Item - User Information -->
                <li class="nav-item">
                    <i class="fas fa-fw fa-hospital"></i>
                    <i class="fas fa-fw fa-stethoscope"></i>
                </li>
            </ul>
        </nav>
        <!-- Content Wrapper -->

        <div class="container-fluid">
            <p>Mohon maaf, kami masih belum dapat mendiagnosa penyakit anda dengan persis, dibawah ini ada beberapa tips untuk menjaga kesehatan gigi.</p>
            <p>Kami juga menganjurkan untuk mengunjungi dokter gigi, agar penyakit anda dapat diselesaikan dengan tuntas.</p>
        </div>
        <div class="container-fluid">
            <br>
            <table id="order" class="table table-striped table-bordered" style="width:100%">
                <tbody>
                    <?php
                    $i = 1;
                    foreach ($jawaban as $jawaban) :
                    ?>
                        <tr>
                            <td width='15%'><b>Tips <?= $i ?></b></td>
                            <td width='85%'><b><?= $jawaban['isi_tips'] ?></b></td>
                        </tr>
                    <?php
                        $i++;
                    endforeach
                    ?>
                </tbody>
            </table>
        </div>
    </div>