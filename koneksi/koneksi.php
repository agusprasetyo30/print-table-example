<?php
   $hostname = "localhost";
   $username = "root";
   $password = "";
   $database = "kurikulum";

   $koneksi = mysqli_connect($hostname, $username, $password, $database) or trigger_error(mysqli_error($koneksi), E_USER_NOTICE);
?>
