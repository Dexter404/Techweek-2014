<?php

$type  = mysql_real_escape_string($_REQUEST['type']);
$value = mysql_real_escape_string($_REQUEST['value']);
$flag=0;

/*** Validating Personal Info ***/
if($type=="name")
{
	$flag=1;
	$arr=str_split($value);
	foreach($arr as $character)
		if(!(($character>='A' && $character<='Z') || ($character>='a' && $character<='z') || ($character==' ')))
			$flag=0;
}
else if($type=="college" || $type=="branch")
{
	$flag=1;
	$arr=str_split($value);
	foreach($arr as $character)
		if(!(($character>='A' && $character<='Z') || ($character>='a' && $character<='z') 
		  || ($character==' ') || ($character=='.')))
			$flag=0;
}
else if($type=="year")
{
	if($value!="error")
		$flag=1;
}
else if($type=="contact")
{
	$len=strlen($value);
	$flag=1;
	$arr=str_split($value);
	foreach($arr as $character)
		if(!($character>='0' && $character<='9'))
			$flag=0;
	if($len!=10)
		$flag=0;
}
else if($type=="email")
{
	$flag=1;
	$array=explode('@',$value);
	if(count($array)!= 2)
		$flag=0;
	else
	{
		$domain=explode('.',$array[1]);
		if(count($domain)!=2)
			$flag=0;
		else
		{
			foreach($domain as $c)
			{
				$arr = str_split($c);
				foreach($arr as $character)
					if(!(($character>='A' && $character<='Z') || ($character>='a' && $character<='z')))
						$flag=0;
			}
		}
	}
}
/**********/

/*** Workshops Attended ***/
else if($type=="robotics" || $type=="program" || $type=="dip" || $type=="design" 
	 || $type=="webd" || $type=="solid" || $type=="animation" || $type=="wattack" || $type=="oss")
{
	if($value=="on")
		$flag=3;
	else 
		$flag=-1;
}
/**********/

/*** Responses of Questions ***/
else if($type=="response1" || $type=="response2" || $type=="response3" || $type=="response4" || $type=="likeness")
{
	switch($value)
	{
		case "no":
		case 1: $flag=11;
				break;
		case 2: $flag=12;
				break;
		case "maybe":
		case 3: $flag=13;
				break;
		case 4: $flag=14;
				break;
		case "yes":
		case 5: $flag=15;
				break;
		default: $flag=-1;
	}
}
/**********/

// Viewing image according to response given by the user
switch($flag)
{
	case 1:	echo "<img src='images/correct.png' alt='Correct'>";
			break;
	case 0: echo "<img src='images/wrong.png' alt='Wrong'>";
			break;
	case 3:	echo "<img src='images/check.png' alt='Correct' class='check'>";
			break;
	case 11: echo "<img src='images/1.2.png' alt=':(' class='smiley'>";
			 break;
	case 12: echo "<img src='images/2.2.png' alt=':/' class='smiley'>";
			 break;
	case 13: echo "<img src='images/3.2.png' alt=':|' class='smiley'>";
			 break;
	case 14: echo "<img src='images/4.2.png' alt=':)' class='smiley'>";
			 break;
	case 15: echo "<img src='images/5.2.png' alt=':D' class='smiley'>";
			 break;
}
?>


<style>
img
{
	margin-top:10px;
	margin-left:0px;
	width:18px;
	height:18px;
}

img.check
{
	margin-top:3px;
	margin-left:-40px;
	height:12px;
	width:auto;
}

img.smiley
{
	margin-top:-50px;
	margin-right:-150px;
	height:50px;
	width:auto;
}
</style>