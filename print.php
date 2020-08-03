<?php
   ini_set("display_errors",1);
   
   // Mengambil ID pada parameter
   $id = $_GET['id'];

   // Include Koneksi
   include "./koneksi/koneksi.php";

   // SELECT rps.*, mk.*, tbk.* FROM rps rps 
   // INNER JOIN matakuliah mk ON rps.IDMK = mk.IDMK
   // INNER JOIN tb_kurikulum tbk ON mk.IdKurikulum = tbk.IdKurikulum
   // WHERE rps.IDMK = 'RIF176001'

   // untuk mata kuliah
   $query_mata_kuliah = "SELECT rps.*, mk.*, tbk.kodePS FROM rps rps 
      INNER JOIN matakuliah mk ON rps.IDMK = mk.IDMK
      INNER JOIN tb_kurikulum tbk ON mk.IdKurikulum = tbk.IdKurikulum
      WHERE rps.IDMK = '$id'";
      
   $result_mata_kuliah = mysqli_query($koneksi, $query_mata_kuliah);
   $mata_kuliah = mysqli_fetch_assoc($result_mata_kuliah);
   
   // Dosen Pengampu / Dosen Pengembang
   $query_dosen_pengembang = "SELECT nama_dosen FROM dosen_pengampu dp 
      INNER JOIN dosen d ON dp.NIP = d.NIP
      WHERE dp.IDMK = '$id'";

   $result_dosen_pengembang = mysqli_query($koneksi, $query_dosen_pengembang);
   $dosen_pengembang = [] ;

   while ($data_dosen_pengembang = mysqli_fetch_assoc($result_dosen_pengembang)) {
      $dosen_pengembang[] = $data_dosen_pengembang;
   }

   // CPL - Prodi
   $query_cpl_prodi = "SELECT keterangan FROM mkcpl mkcpl
      INNER JOIN matakuliah mk ON mkcpl.id_mk = mk.IDMK
      INNER JOIN capaianpembelajaranlulusan cp ON mkcpl.id_cp = cp.KodeCP
      WHERE mkcpl.id_mk = '$id'";

   $result_cpl_prodi = mysqli_query($koneksi, $query_cpl_prodi);
   $cpl_prodi = [] ;
   
   while ($data_cpl_prodi = mysqli_fetch_assoc($result_cpl_prodi)) {
      $cpl_prodi[] = $data_cpl_prodi;
   }

   // CPL - MK
   // TODO : Belum tau apakah data lebih dari satu atau cuman satu data
   $query_cpl_mk = "SELECT * FROM cpmk WHERE IDMK = '$id'";
   
   $result_cpl_mk = mysqli_query($koneksi, $query_cpl_mk);
   $cpl_mk = mysqli_fetch_assoc($result_cpl_mk);
   
   // Silabus MK
   $query_silabusmk = "SELECT * FROM silabusmk WHERE IDMK = '$id'";
   
   $result_silabusmk = mysqli_query($koneksi, $query_cpl_mk);
   $silabusmk = explode(',', mysqli_fetch_assoc($result_silabusmk)["keterangan_cpmk"]);

   // Refrensi Silabus / Pustaka Utama
   $query_ref_silabus = "SELECT * FROM refsilabus WHERE IDMK = '$id'";

   $result_ref_silabus = mysqli_query($koneksi, $query_ref_silabus);
   $ref_silabus = [] ;
   
   while ($data_ref_silabus = mysqli_fetch_assoc($result_ref_silabus)) {
      $ref_silabus[] = $data_ref_silabus;
   }

   // Refrensi Pendukung / Pustaka Pendukung
   $query_ref_pendukung = "SELECT * FROM ref_pendukung WHERE IDMK = '$id'";

   $result_ref_pendukung = mysqli_query($koneksi, $query_ref_pendukung);
   $ref_pendukung = [] ;
   
   while ($data_ref_pendukung = mysqli_fetch_assoc($result_ref_pendukung)) {
      $ref_pendukung[] = $data_ref_pendukung;
   }

   // Minggu RPS
   $query_minggu_rps = "SELECT mrps.* FROM minggu_rps mrps 
      INNER JOIN rps rps ON mrps.KodeRps = rps.KodeRps 
      WHERE rps.IDMK = '$id'";

   $result_minggu_rps = mysqli_query($koneksi, $query_minggu_rps);
   $minggu_rps = [] ;

   while ($data_minggu_rps = mysqli_fetch_assoc($result_minggu_rps)) {
      $minggu_rps[] = $data_minggu_rps;
   }

   // var_dump($mata_kuliah);
   // var_dump($cpl_prodi);
   // var_dump($dosen_pengembang);
   // var_dump($cpl_mk);
   // var_dump($silabusmk);
   // var_dump($ref_silabus);
   // var_dump($ref_pendukung);
   // var_dump($minggu_rps);
?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Print data</title>
   <link rel="stylesheet" href="./vendors/css/bootstrap.min.css">

   <style>
      .table td, .table th {
         padding: 2.5px 2.5px 0px;
         vertical-align: top;
      }
      
      h6,p {
         font-size: 11px;
         font-weight: 600;
         margin: 5px 0px;
      }

      h6.bold {
         font-weight: bolder;
      }

      .border-black {
         border-color:black !important;
      }

      .background-blue-light {
         background: #aadee7 !important; 
      }

      .background-dark-grey {
         background: #cac8c8 !important;
      }

      .background-light-green {
         background: lightgreen !important;
      }

      /* Untuk Keadaan Print biar muncul warna */
      @media print { 
         table .background-blue-light {
            background: #aadee7 !important; 
         }

         table .background-dark-grey {
            background: #cac8c8 !important;
         }

         table .background-light-green {
            background: lightgreen !important;
         }
      }
   </style>
</head>
<body>
   <!-- Tombol Kembali & Print -->
   <div class="ml-3 mt-3 mb-1">
      <a class="btn btn-warning print-link" href="./">Kembali</a>
      <button class="btn btn-primary print-link" id="print-data">Print</button>
   </div>
   <div class="p-3" id="data-print">
      <table class="table">
         <!--  -->
         <tr>
            <td width="200px" class="border border-black background-blue-light" style="text-align: center; padding: 5px 0px;">
               <img src="./img/polinema.png" style="height: 100px;">
            </td>
            <td colspan="5" class="border border-black background-blue-light">
               <h6 class="bold">POLITEKNIK NEGERI MALANG</h6>
               <h6 class="bold">JURUSAN TEKNOLOGI INFORMASI</h6>
               <h6 class="bold">PROGRAM STUDI : <?= $mata_kuliah['kodePS'] == "d3" ? "D3 MANAJEMEN INFORMATIKA" : "D4 TEKNIK INFORMATIKA" ?></h6>
            </td>
         </tr>
         <!--  -->
         <tr>
            <td colspan="6" class="text-center border border-black background-blue-light">
               <h6 class="bold">RENCANA PEMBELAJARAN SEMESTER (RPS)</h6>
            </td>
         </tr>
         <!--  -->
         <tr >
            <th class="border border-black background-dark-grey">
               <h6 class="bold">MATA KULIAH</h6>
            </th>
            <th class="border border-black background-dark-grey">
               <h6 class="bold">KODE</h6>
            </th>
            <th class="border border-black background-dark-grey">
               <h6 class="bold">RUMPUN MATA KULIAH</h6>
            </th>
            <th class="border border-black background-dark-grey">
               <h6 class="bold">BOBOT (sks) / JAM</h6>
            </th>
            <th class="border border-black background-dark-grey">
               <h6 class="bold">SEMESTER</h6>
            </th>
            <th class="border border-black background-dark-grey">
               <h6 class="bold">TGL. PENYUSUNAN</h6>
            </th>
         </tr>
         <!--  -->
         <tr>
            <!-- Kolom nama mata kuliah -->
            <td class="border border-black">
               <h6 class="bold"><?= $mata_kuliah['nama'] ?></h6>
            </td>
            <!-- Kolom ID Mata Kuliah -->
            <td class="border border-black">
               <h6><?= $mata_kuliah['IDMK'] ?></h6>
            </td>
            <!-- Kolom Rumpun MK -->
            <td class="border border-black">
               <h6><?= $mata_kuliah['rumpun_mk'] ?></h6>
            </td>
            <!-- Kolom SKS dan Jam -->
            <td class="border border-black">
               <h6><?= $mata_kuliah['sks'] ?> sks / <?= $mata_kuliah['jam'] ?> jam</h6>
            </td>
            <!-- Kolom Semester -->
            <td class="border border-black">
               <h6><?= $mata_kuliah['semester'] ?></h6>
            </td>
            <!-- Kolom Tanggal Penyusunan -->
            <td class="border border-black">
               <h6><?= date("d M Y", strtotime($mata_kuliah['tgl_penyusunan'])) ?></h6>
            </td>
         </tr>
         <!--  -->
         <tr>
            <td rowspan="2" class="border border-black">
               <h6 class="bold">OTORISASI</h6>
            </td>
            <td colspan="2" class="border border-black background-dark-grey">
               <h6 class="bold">Dosen Pengembang RPS</h6>
            </td>
            <td class="border border-black background-dark-grey">
               <h6 class="bold">Koordinator RMK</h6>
            </td>
            <td colspan="2" class="border border-black background-dark-grey">
               <h6 class="bold">Ka PRODI</h6>
            </td>
         </tr>
         <!--  -->
         <tr>
            <!-- Kolom Daftar Dosen Pengembang -->
            <td colspan="2" class="border border-black">
               <?php foreach ($dosen_pengembang as $key => $value_dosen_pengembang) { ?>
                  <h6><?= $value_dosen_pengembang['nama_dosen'] ?></h6>
               <?php } ?>
            </td>
            <!-- Kolom Nama Koordinator RMK -->
            <td class="border border-black">
               <h6><?= $mata_kuliah['koordinator_rmk'] ?></h6>
            </td>
            <!-- Kolom KA prodi, ini Statis ? -->
            <td colspan="2" class="border border-black">
               <h6>Imam Fahrur Rozi</h6>
               <h6>Hedra Pradipta</h6>
            </td>
         </tr>
         <!--  -->
         <tr>
            <td rowspan="4" class="border border-black">
               <h6 class="bold">
                  Capaian Pembelajaran (CP)
               </h6>
            </td>
            <td colspan="5" class="border border-black background-dark-grey">
               <h6 class="bold">
                  Capaian Pembelajaran Lulusan Program Studi (CPL-Prodi)
               </h6>
            </td>
         </tr>
         <!--  -->
         <tr >
            <!-- Kolom CPL Program Studi -->
            <td colspan="5" class="border border-black">
               <h6>Ketrampilan Khusus:</h6>
               <div style="margin-left: 10px;">
                  <?php foreach ($cpl_prodi as $key => $value_cpl_prodi) { ?>
                     <p><?= ++$key ?>. <?= $value_cpl_prodi['keterangan'] ?></p>
                  <?php } ?>
               </div>
            </td>
         </tr>
         <tr>
            <td colspan="5" class="border border-black background-dark-grey">
               <h6 class="bold">
                  Capaian Pembelajaran Lulusan yang dibebankan pada mata kuliah (CPL-MK)
               </h6>
            </td>
         </tr>
         <!--  -->
         <tr>
            <!-- Kolom deskrpisi Mata Kuliah -->
            <td colspan="5" class="border border-black">
               <p>
                  <?= $mata_kuliah['deskripsi'] ?>
               </p>
            </td>
         </tr>
         <!--  -->
         <tr>
            <td class="border border-black">
               <h6 class="bold">
                  Diskripsi Singkat Mata Kuliah
               </h6>
            </td>
            <!-- Kolom (CPL-MK) -->
            <td class="border border-black" colspan="5">
               <p>
                  <?= $cpl_mk['keterangan_cpmk'] ?>
               </p>
            </td>
         </tr>
         <!--  -->
         <tr>
            <td class="border border-black">
               <h6 class="bold">
                  Materi Pembelajaran / Pokok Bahasan
               </h6>
            </td>
            <!-- Kolom Daftar Silabus Mata Kuliah / Pokok Bahasan -->
            <td class="border border-black" colspan="5">
               <div style="margin-left: 10px;">
                  <?php foreach ($silabusmk as $key => $value_silabusmk) { ?>
                     <p><?= ++$key ?>. <?= $value_silabusmk ?></p>
                  <?php } ?>
               </div>
            </td>
         </tr>
         <!--  -->
         <tr>
            <td class="border border-black" rowspan="4">
               <h6 class="bold">
                  Pustaka
               </h6>
            </td>
            <td colspan="5" class="border border-black background-dark-grey">
               <h6 class="bold">
                  Utama :
               </h6>
            </td>
         </tr>
         <!--  -->
         <tr>
            <!-- Kolom Refrensi Silabus / Pustaka Utama -->
            <td colspan="5" class="border border-black">
               <div style="margin-left: 10px;">
                  <?php foreach ($ref_silabus as $key => $value_ref_silabus) { ?>
                     <p><?= ++$key ?>. <?= $value_ref_silabus['referensi'] ?></p>
                  <?php } ?>
               </div>
            </td>
         </tr>
         <!--  -->
         <tr>
            <td colspan="5" class="border border-black background-dark-grey">
               <h6 class="bold">
                  Pendukung :
               </h6>
            </td>
         </tr>
         <!--  -->
         <tr>
            <!-- Kolom Refrensi Pendukung / Pustaka Pendukung -->
            <td colspan="5" class="border border-black">
               <div style="margin-left: 10px;">
                  <?php foreach ($ref_pendukung as $key => $value_ref_pendukung) { ?>
                     <p><?= ++$key ?>. <?= $value_ref_pendukung['referensi_pendukung'] ?></p>
                  <?php } ?>
               </div>
            </td>
         </tr>
         <!--  -->
         <tr>
            <td class="border border-black" rowspan="3">
                  <h6 class="bold">Media Pembelajaran</h6>
               </div>
            </td>
         </tr>
         <!--  -->
         <tr>
            <td class="border border-black background-dark-grey" colspan="2">
                  <h6 class="bold">Software :</h6>
               </div>
            </td>
            <td class="border border-black background-dark-grey" colspan="3">
                  <h6 class="bold">Hardware :</h6>
               </div>
            </td>
         </tr>
         <!--  -->
         <tr>
            <!-- Kolom Media Pembelajaran Software -->
            <td class="border border-black" colspan="2">
                  <p><?= $mata_kuliah['pembelajaran_software'] ?></p>
               </div>
            </td>
            <!-- Kolom Media Pembelajaran Hardware -->
            <td class="border border-black" colspan="3">
                  <p><?= $mata_kuliah['pembelajaran_hardware'] ?></p>
               </div>
            </td>
         </tr>
         <!--  -->
         <tr>
            <td class="border border-black">
                  <h6 class="bold">Dosen Pengajar</h6>
               </div>
            </td>
            <!-- Kolom Daftar Dosen Pengajar (Dalam hal ini sama seperti dosen pengembang) -->
            <td class="border border-black" colspan="5">
               <?php foreach ($dosen_pengembang as $key => $value_dosen_pengembang) { ?>
                  <h6 class="bold"><?= $value_dosen_pengembang['nama_dosen'] ?></h6>
               <?php } ?>
            </td>
         </tr>
         <!--  -->
         <tr>
            <td class="border border-black">
                  <h6 class="bold">Matakuliah Syarat</h6>
               </div>
            </td>
            <td class="border border-black" colspan="5"></td>
         </tr>
         <!--  -->
      </table>

      <!-- Minggu RPS -->

      <table class="table" >
         <tr class="text-center">
            <td class="border border-black background-light-green" width="50px">
               <h6 class="bold">Minggu Ke</h6>
            </td>
            <td class="border border-black background-light-green" width="150px">
               <h6 class="bold">Kemampuan Akhir Yang Direncanakan (Sub-CP-MK)</h6>
            </td>
            <td class="border border-black background-light-green" width="200px">
               <h6 class="bold">Bahan kajian (Materi Pembelajaran)</h6>
            </td>
            <td class="border border-black background-light-green" width="150px">
               <h6 class="bold">Bentuk dan Metode Pembelajaran</h6>
            </td>
            <td class="border border-black background-light-green" width="100px">
               <h6 class="bold">Estimasi Waktu</h6>
            </td>
            <td class="border border-black background-light-green" width="150px">
               <h6 class="bold">Pengalaman Belajar Siswa</h6>
            </td>
            <td class="border border-black background-light-green" width="200px">
               <h6 class="bold">Kriteria & Bentuk Penilaian</h6>
            </td>
            <td class="border border-black background-light-green" width="200px">
               <h6 class="bold">Indikator Penilaian</h6>
            </td>
            <td class="border border-black background-light-green" width="100px">
               <h6 class="bold">Bobot Penilaian (%)</h6>
            </td>
         </tr>
         <!--  -->
         <tr class="text-center">
            <td class="border border-black background-light-green" width="50px">
               <h6 class="bold">(1)</h6>
            </td>
            <td class="border border-black background-light-green" width="150px">
               <h6 class="bold">(2)</h6>
            </td>
            <td class="border border-black background-light-green" width="200px">
               <h6 class="bold">(3)</h6>
            </td>
            <td class="border border-black background-light-green" width="150px">
               <h6 class="bold">(4)</h6>
            </td>
            <td class="border border-black background-light-green" width="100px">
               <h6 class="bold">(5)</h6>
            </td>
            <td class="border border-black background-light-green" width="150px">
               <h6 class="bold">(6)</h6>
            </td>
            <td class="border border-black background-light-green" width="200px">
               <h6 class="bold">(7)</h6>
            </td>
            <td class="border border-black background-light-green" width="200px">
               <h6 class="bold">(8)</h6>
            </td>
            <td class="border border-black background-light-green" width="90px">
               <h6 class="bold">(9)</h6>
            </td>
         </tr>
         <!--  -->
         <!-- Ini adalah daftar MK Mingguan, data akan ditampilkan sesuai ID yang terdapat pada parameter -->
         <?php foreach ($minggu_rps as $key => $value_minggu_rps) { ?>

            <tr class="text-center">
               <td class="border border-black" width="50px">
                  <h6>
                     <?= ++$key ?>
                  </h6>
               </td>
               <td class="border border-black" width="150px">
                  <h6>
                     <?= $value_minggu_rps['kemampuan_akhir'] ?>
                  </h6>
               </td>
               <td class="border border-black" width="200px">
                  <h6>
                     <?= $value_minggu_rps['materi_pembelajaran'] ?>
                  </h6>
               </td>
               <td class="border border-black" width="150px">
                  <h6>
                     <?= $value_minggu_rps['metode_pembelajaran'] ?>
                  </h6>
               </td>
               <td class="border border-black" width="100px">
                  <h6>
                     <?= $value_minggu_rps['estimasi_waktu'] ?>
                  </h6>
               </td>
               <td class="border border-black" width="150px">
                  <h6>
                     <?= $value_minggu_rps['pengalaman_belajar'] ?>
                  </h6>
               </td>
               <td class="border border-black" width="200px">
                  <h6>
                     <?= $value_minggu_rps['kriteria_bentuk_penilaian'] ?>
                  </h6>
               </td>
               <td class="border border-black" width="200px">
                  <h6>
                     <?= $value_minggu_rps['indikator_penilaian'] ?>
                  </h6>
               </td>
               <td class="border border-black" width="90px">
                  <h6>
                     <?= $value_minggu_rps['bobot_penilaian'] ?>
                  </h6>
               </td>
            </tr>

         <?php } ?>
      </table>
   </div>

   <script src="./vendors/jquery/jquery.min.js"></script>
   <script src="./vendors/jquery-print/jQuery.print.min.js"></script>
   <script src="./vendors/js/bootstrap.min.js"></script>

   <!-- Untuk mengatur data yang akan diprint -->
   <!-- yang diprint hanya bagian tabel saja -->
   <script>
      // ketika tombol print ditekan pada halaman index
      $(document).ready(function() {
         $("#data-print").print({
            globalStyles : true,
            mediaPrint : true,
            stylesheet : "http://fonts.googleapis.com/css?family=Inconsolata",
            iframe : true,
            noPrintSelector : ".print-link",
            deferred: $.Deferred().done(function() { console.log('Printing done', arguments); })
         });
      })

      // ketika tombol [ print ] ditekan pada halaman print
      $('#print-data').click(function(){
         $("#data-print").print({
            globalStyles : true,
            mediaPrint : true,
            stylesheet : "http://fonts.googleapis.com/css?family=Inconsolata",
            iframe : true,
            noPrintSelector : ".print-link",
            deferred: $.Deferred().done(function() { console.log('Printing done', arguments); })
         });
      });
   </script>
</body>
</html>