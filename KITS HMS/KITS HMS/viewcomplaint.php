<?php
include("header.php");
?>
	</div>
	<!-- //banner -->
	<!-- page details -->
	<div class="breadcrumb-agile">
		<ol class="breadcrumb m-0">
			<li class="breadcrumb-item">
				<a href="index.php">View complaint</a>
			</li>
		</ol>
	</div>
	<!-- //page details -->

	<!-- contact -->
	<section class="contact-wthree" id="contact">
		<div class="container">
			<div class="title text-center">
				<h3 class="title-w3 text-bl text-center font-weight-bold">View complaint</h3>
				<div class="arrw">
					<i class="fa fa-building-o" aria-hidden="true"></i>
				</div>
			</div>
			<div class="row pt-xl-4">
				<div class="col-lg-12">
					<div class="contact-form-wthreelayouts">
<table id="datatable"  class="table table-striped table-bordered">
	<thead>
		<tr>
			<th>Name</th>		
			<th>Date and Time</th>		
			<th>complaint </th>		
			<th>Reason for Complaint</th>	
		</tr>
	</thead>
	<tbody>
	<?php
	$sql ="SELECT  * from complaint LEFT JOIN hosteller ON complaint.hostellerid=hosteller.hostellerid WHERE 0=0";	
	if(isset($_SESSION['hostellerid']))
	{
		$sql = $sql . " AND complaint.hostellerid='" . $_SESSION['hostellerid'] . "'";
	}
	$qsql = mysqli_query($con,$sql);
	while($rs = mysqli_fetch_array($qsql))
	{
		echo "<tr>
			<td>$rs[hostellertype] - $rs[name]</td>		
			<td>$rs[complaintdttime]</td>		
			<td>$rs[complaintssubject]</td>		
			<td>$rs[complaintmessage]</td>					
		</tr>";
	}
	?>
	</tbody>
</table>					
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
$(document).ready( function () {
    $('#datatable').DataTable();
} );
</script>
<script>
function confirmdel()
{
	if(confirm("Are you sure?") == true)
	{
		return true;
	}
	else
	{
		return false;
	}
}
</script>	