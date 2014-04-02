<?php
include "../../../config/koneksi.php";

$module=$_GET[module];
$act=$_GET[act];

// Update Kirim
if ($module=='kirim' AND $act=='update'){
  mysql_query("UPDATE modul SET static_content = '$_POST[isi]'
                            WHERE id_modul     = '$_POST[id]'");
  header('location:../../media.php?module='.$module);
}
?>
