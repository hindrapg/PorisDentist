<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
    .carousel-indicators li {
        visibility: hidden;
    }

    /* .carousel {
        width: 50%;
        height: 30%;
    } */
</style>


<div id="content-wrapper" class="d-flex flex-column">

    <!-- Main Content -->
    <div id="content">
        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
            <div class="nav-item">
                <span>Poris Dentist</span>
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

            <br>
            <div class="container">
                <div id="myCarousel" class="carousel slide w-100 p-3" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <?php
                        $number = 0;
                        $max_num = 0;
                        $active = 0;
                        ?>
                        <?php foreach ($pertanyaan as $iterasi) : ?>
                            <?php if ($active == 0) : ?>
                                <li data-target='#myCarousel' data-slide-to='<?= $number ?>' class='active'></li>
                            <?php $active = 1;
                            else : ?>
                                <li data-target='#myCarousel' data-slide-to='<?= $number ?>'></li>

                            <?php
                            endif;
                            $number++;
                            $max_num++; ?>
                        <?php endforeach ?>
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">
                        <?php
                        // $number = 0;
                        $active = 0;
                        $number = 1;
                        ?>
                        <?php foreach ($pertanyaan as $pertanyaan) : ?>
                            <?php if ($active == 0) : ?>
                                <div class="item active">
                                    <div style="text-align: center">
                                        <h4><?= $number ?> dari <?= $max_num ?> pertanyaan</h4>
                                        <h3><?php echo $pertanyaan['isi_pertanyaan'] ?></h3>
                                        <?php echo form_open_multipart('homepage/check_diagnose'); ?>
                                        <div class="radio-toolbar">
                                            <input type="radio" name="choice[<?= $number - 1 ?>]" id="yes<?= $number ?>" autocomplete="off" value="1">
                                            <label class="btn btn-outline-success ya" for="yes<?= $number ?>">Iya</label>

                                            <input type="radio" name="choice[<?= $number - 1 ?>]" id="no<?= $number ?>" autocomplete="off" value="0" checked>
                                            <label class="btn btn-outline-danger tidak" for="no<?= $number ?>">Tidak</label>
                                        </div>
                                        </td>
                                    </div>
                                </div>
                                <?php $active = 1; ?>
                            <?php else : ?>
                                <div class="item">
                                    <div style="text-align: center">
                                        <h4><?= $number ?> dari <?= $max_num ?> pertanyaan</h4>
                                        <h3><?php echo $pertanyaan['isi_pertanyaan'] ?></h3>
                                        <?php echo form_open_multipart('homepage/check_diagnose'); ?>
                                        <div class="radio-toolbar container">
                                            <input type="radio" name="choice[<?= $number - 1 ?>]" id="yes<?= $number ?>" autocomplete="off" value="1">
                                            <label class="btn btn-outline-success ya" for="yes<?= $number ?>">Iya</label>

                                            <input type="radio" name="choice[<?= $number - 1 ?>]" id="no<?= $number ?>" autocomplete="off" value="0" checked>
                                            <label class="btn btn-outline-danger tidak" for="no<?= $number ?>">Tidak</label>
                                        </div>
                                        </td>
                                    </div>
                                </div>
                            <?php endif ?>
                            <?php $number++; ?>
                        <?php endforeach ?>
                    </div>

                    <!-- Left and right controls -->
                    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#myCarousel" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>

                <div class="w-100 p-3">
                    <button type="submit" class="btn btn-success w-100 p-3" name="submit" width="100%">Cek perkiraan penyakit anda</button>
                </div>
            </div>
        </div>
    </div>



    <!-- End of Main Content -->
    <!-- Footer -->
    <!-- navbar fixed-bottom -->
    <!-- sticky-footer -->
    <footer class="sticky-footer fixed-bottom bg-light">
        <div class="container my-auto">
            <div class="text-center my-auto">
                <span>Copyright &copy; Expert System</span>
            </div>
            <div class="text-center mt-3">
                <span>Contact Us : </span>
            </div>
            <div class="text-center mt-1">
                <span>nelson1@student.umn.ac.id </span>
            </div>
            <div class="text-center mt-1">
                <span>hindra.pangadi@student.umn.ac.id </span>
            </div>
        </div>
    </footer>
    <!-- End of Footer -->

</div>
<!-- End of Content Wrapper -->

<!-- End of Page Wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>

<!-- Bootstrap core JavaScript-->
<script src="<?= base_url('assets/'); ?>vendor/jquery/jquery.min.js"></script>
<script src="<?= base_url('assets/'); ?>vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="<?= base_url('assets/'); ?>vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="<?= base_url('assets/'); ?>js/sb-admin-2.min.js"></script>

<!-- Page level plugins -->
<script src="<?= base_url('assets/'); ?>vendor/chart.js/Chart.min.js"></script>

<!-- Page level custom scripts -->
<script src="<?= base_url('assets/'); ?>js/demo/chart-area-demo.js"></script>
<script src="<?= base_url('assets/'); ?>js/demo/chart-pie-demo.js"></script>
</body>

</html>