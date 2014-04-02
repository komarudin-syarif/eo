<?php
include "../config/koneksi.php";

if ($_SESSION[leveluser]=='admin'){
  $sql=mysql_query("select * from modul where aktif='Y' order by urutan");
}

if ($m=mysql_fetch_array($sql)){  
 echo "<li><a href='?module=header'><b>Ganti Header</b></a></li>";
  echo "<li><a href='?module=ym'><b>Edit Costumer Online</b></a></li>";
   echo "<li><a href='?module=bank'><b>Edit Rekening Bank</b></a></li>";
    echo "<li><a href='?module=banner'><b>Edit Link Terkait</b></a></li>";
  
  
}
?>
