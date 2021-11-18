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
        <div class="container-fluid">
            <p>Berdasarkan gejala yang telah anda sebutkan, kami dapat mendiagnosa atau memperkirakan penyakit anda : </p>
        </div>
        <!-- Content Wrapper -->
        <?php foreach ($jawaban as $jawaban) : ?>
            <div class="container-fluid">
                <br>
                <table id="order" class="table table-striped table-bordered" style="width:100%">
                    <tbody>
                        <tr>
                            <td width='15%'>Nama penyakit</td>
                            <td width='85%'><?= $jawaban['nama_penyakit'] ?></td>
                        </tr>
                        <tr>
                            <td width='15%'>Penjelasan</td>
                            <td width='85%'><?= $jawaban['penjelasan'] ?></td>
                        </tr>
                        <tr>
                            <td width='15%'>Penanganan</td>
                            <td width='85%'><?= $jawaban['penanganan'] ?></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        <?php endforeach ?>
    </div>