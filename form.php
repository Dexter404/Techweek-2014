<?php
$host ="localhost";
$username ="root";
$password="";
$link=@mysql_connect($host,$username,$password) or die("Connection Error:".mysql_error());
$db=@mysql_select_db('techweek14') or die("Database Error:".mysql_error());


$name		 = mysql_real_escape_string($_POST['name']);
$branch		 = mysql_real_escape_string($_POST['branch']);
$college	 = mysql_real_escape_string($_POST['college']);
$year		 = mysql_real_escape_string($_POST['year']);
$contact	 = mysql_real_escape_string($_POST['contact']);
$email		 = mysql_real_escape_string($_POST['email']);
$suggestions = mysql_real_escape_string($_POST['suggest']);

if(isset($_POST['dip']))	  $dip='Y'; 	  else $dip='N';
if(isset($_POST['design']))	  $design='Y'; 	  else $design='N';
if(isset($_POST['program']))  $program='Y';   else $program='N';
if(isset($_POST['robotics'])) $robotics='Y';  else $robotics='N';
if(isset($_POST['solid']))	  $solid='Y'; 	  else $solid='N';
if(isset($_POST['webd']))	  $webd='Y'; 	  else $webd='N';
if(isset($_POST['animation']))$animation='Y'; else $animation='N';
if(isset($_POST['oss']))	  $oss='Y'; 	  else $oss='N';
if(isset($_POST['wattack']))  $wattack='Y';   else $wattack='N';

$ques1 = mysql_real_escape_string($_POST['response1']);
$ques2 = mysql_real_escape_string($_POST['response2']);
$ques3 = mysql_real_escape_string($_POST['response3']);
$ques4 = mysql_real_escape_string($_POST['response4']);
$interest = mysql_real_escape_string($_POST['likeness']);

$query="INSERT INTO student (name, branch, college, year, contact, email, interest) VALUES ('$name','$branch','$college','$year','$contact','$email','$interest')";
@mysql_query($query);

$query="INSERT INTO workshop (dip, designing, programming, robotics, solidworks, webd, animation, oss, wattack, suggestions) VALUES ('$dip','$design','$program','$robotics','$solid','$webd','$animation','$oss','$wattack','$suggestions')";
@mysql_query($query);

$query="INSERT INTO response (ques1, ques2, ques3, ques4) VALUES ('$ques1','$ques2','$ques3','$ques4')";
@mysql_query($query);

header("location:acknowledge.html");
?>
