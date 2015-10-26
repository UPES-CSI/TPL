<?php
if(isset($_POST['coding']) || isset($_POST['design']) ||isset($_POST['photo']) || isset($_POST['debate']))
{
	include 'config.php';

	$name   =  $_POST['name'];
	$email  =  $_POST['email'];
	$branch =  $_POST['branch'];
	$year   =  $_POST['year'];
	$phone  =  $_POST['phone'];
	$csi	=  $_POST['csi'];
	$pass	=  $_POST['password'];

	if(isset($_POST['coding']))
		$coding = 1;
	else
		$coding = 0;
	if(isset($_POST['design']))
		$design = 1;
	else
		$design = 0;
	if(isset($_POST['photo']))
		$photo = 1;
	else
		$photo = 0;
	if(isset($_POST['debate']))
		$debate = 1;
	else
		$debate = 0;

	$echk = mysql_query("SELECT * from stu_details WHERE email='$email'");
	$erow = mysql_num_rows($echk);
	if($erow>0)
		echo "<script>alert('Email already registered!!');window.location= 'index.html#register';</script>";
	$entr = mysql_query("INSERT into stu_details (name,email,phone,branch,year,csi)values('$name','$email','$phone','$branch','$year','$csi')");
	if($entr)
	{
		$stuc = mysql_query("INSERT into stu_choices values('$email',$coding,$design,$photo,$debate)") or die (mysql_error());
		$stus = mysql_query("INSERT into stu_score (email)values('$email')") or die (mysql_error());
		$stus = mysql_query("INSERT into stu_login (email,password)values('$email','$pass')") or die (mysql_error());
		echo "<script>alert('Successfully registered!! Further Information will be provided soon!!');window.location= 'index.html';</script>";
	}
	else
		echo "<script>alert('Unable to register. Contact Administrator!');window.location= '#register';</script>";

}
else
	echo "<script>alert('Please Choose a Category!!'); window.location= 'index.html#register';</script>";
?>