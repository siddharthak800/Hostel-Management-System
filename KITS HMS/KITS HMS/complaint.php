<?php
include("header.php");
if(isset($_POST['submit']))
{
	$dttime = date("Y-m-d H:i:s");
	$sql = "INSERT INTO complaint(hostellerid,complaintdttime,complaintsubject,complaintmessage) VALUES('$_SESSION[hostellerid]','$dttime','$_POST[complainttitle]','$_POST[complaintmessage]')";
	$qsql = mysqli_query($con,$sql);
		echo mysqli_error($con);
	if(mysqli_affected_rows($con) ==1 )
	{
		//echo "<SCRIPT>alert('complaint published successfully..');</SCRIPT>";
		echo "<script>viewmessagebox('complaint published successfully....','complaint.php')</script>";
	}
}
?>
	</div>
	<!-- //banner -->
	<!-- page details -->
	<div class="breadcrumb-agile">
		<ol class="breadcrumb m-0">
			<li class="breadcrumb-item">
				<a href="index.php">complaint</a>
				
			</li>
		</ol>
	</div>
	<!-- //page details -->

	<!-- contact -->
	<section class="contact-wthree" id="contact">
		<div class="container">
			<div class="title text-center">
				<h3 class="title-w3 text-bl text-center font-weight-bold">complaint</h3>
				<div class="arrw">
					<i class="fa fa-building-o" aria-hidden="true"></i>
				</div>
			</div>
			<div class="row pt-xl-4">
				<div class="col-lg-12 ">
					<div class="contact-form-wthreelayouts">

<form action="" method="post" class="register-wthree" name="frmform" onsubmit="return validateform()">
	
	<div class="row">
	
		<div class="col-lg-12">
			<label>
				complaint title
			</label> 
			<input class="form-control"  type="text" name="complainttitle" >
		</div>
	</div>
	<div class="form-group">
		<br>
		<label>
			Reason for complaint
		</label>
		<textarea name="complaintmessage" class="form-control"></textarea>
	</div>
	
	
	<div class="form-group mt-4 mb-0">
		<button type="submit" name="submit" class="btn btn-w3layouts w-100">Click here to Post your complaint</button>
	</div>
</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- //contact -->

<?php
include("footer.php");
?>
<script>
function validateform()
{
	var errstatus = "true";
	if(document.frmform.complainttitle.value == "")
	{
		document.getElementById("idcomplaintktitle").innerHTML = "Kindly select Start date...";
		errstatus = "false";
	}
	/*
	if(document.frmform.complaintmessage.value == "")
	{
		document.getElementById("idComplaint
		message").innerHTML = "complaint message should not be empty...";
		errstatus = "false";
	}
	*/
	if(errstatus == "true")
	{
		return true;
	}
	else
	{
		return false;
	}
}
</script>