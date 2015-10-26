<?php
include 'config.php';
$que = mysql_query("SELECT * from stu_details");
$ans = mysql_fetch_array($que);
echo "Email".$ans['email']; 
















?>