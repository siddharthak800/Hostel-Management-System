<?php
include("header.php");

if(isset($_POST['submit'])) {
    // Escape user input to prevent SQL injection
    $hostellertype = mysqli_real_escape_string($con, $_POST['hostellertype']);
    $name = mysqli_real_escape_string($con, $_POST['name']);
    $emailid = mysqli_real_escape_string($con, $_POST['emailid']);
    $password = mysqli_real_escape_string($con, $_POST['password']);
    $dob = mysqli_real_escape_string($con, $_POST['dob']);
    $father_name = mysqli_real_escape_string($con, $_POST['father_name']);
    $mother_name = mysqli_real_escape_string($con, $_POST['mother_name']);
    $address = mysqli_real_escape_string($con, $_POST['address']);
    $contact_no = mysqli_real_escape_string($con, $_POST['contact_no']);
    $gender = mysqli_real_escape_string($con, $_POST['gender']);

    if(isset($_GET['editid'])) {
        // Update statement
        $sql = "UPDATE hosteller SET hostellertype='$hostellertype', name='$name', emailid='$emailid', password='$password', dob='$dob', father_name='$father_name', mother_name='$mother_name', address='$address', contact_no='$contact_no', gender='$gender', status='Active' WHERE hostellerid='" . $_GET['editid'] . "'";
        $qsql = mysqli_query($con, $sql);
        echo mysqli_error($con);
        if(mysqli_affected_rows($con) == 1) {
            echo "<script>viewmessagebox('Hosteller record updated successfully....','viewhosteller.php')</script>";
        }
    } else {
        // Insert statement
        $sql = "INSERT INTO hosteller (hostellertype, name, emailid, password, dob, father_name, mother_name, address, contact_no, gender, status) VALUES ('$hostellertype', '$name', '$emailid', '$password', '$dob', '$father_name', '$mother_name', '$address', '$contact_no', '$gender', 'Active')";
        $qsql = mysqli_query($con, $sql);
        echo mysqli_error($con);
        if(mysqli_affected_rows($con) == 1) {
            echo "<script>viewmessagebox('Hosteller Registration done successfully....','hostellerlogin.php')</script>";
        }
    }
}

if(isset($_GET['editid'])) {
    $sqledit = "SELECT * FROM hosteller WHERE hostellerid='" . $_GET['editid'] . "'";
    $qsqledit = mysqli_query($con, $sqledit);
    echo mysqli_error($con);
    $rsedit = mysqli_fetch_array($qsqledit);
}
?>
</div>
<!-- //banner -->

<!-- contact -->
<section class="contact-wthree" id="contact">
    <div class="container py-lg-3">
        <div class="title text-center">
            <h3 class="title-w3 text-bl text-center font-weight-bold">Hosteller Registration Panel</h3>
        </div>
        <div class="row pt-xl-4">
            <div class="col-lg-12">
                <div class="contact-form-wthreelayouts">
                    <form action="" method="post" class="register-wthree" name="frmform" onsubmit="return validateform()">
                        <div class="row">
                            <div class="col-lg-6">
                                <label>Hosteller type</label><span class="errclass" id="idhostellertype"></span>
                                <select name="hostellertype" class="form-control">
                                    <option value="">Select</option>
                                    <?php
                                    $arr = array("Employee", "Student", "Others");
                                    foreach($arr as $val) {
                                        echo "<option value='$val'" . ($val == $rsedit['hostellertype'] ? " selected" : "") . ">$val</option>";
                                    }
                                    ?>
                                </select>
                            </div>
                            <div class="col-lg-6">
                                <label>Name</label><span class="errclass" id="idname"></span>
                                <input class="form-control" type="text" name="name" value="<?php echo $rsedit['name']; ?>">
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-6">
                                <br>
                                <label>Email ID</label><span class="errclass" id="idemailid"></span>
                                <input class="form-control" type="email" placeholder="Email ID" name="emailid" value="<?php echo $rsedit['emailid']; ?>">
                            </div>
                            <div class="col-lg-6">
                                <br>
                                <label>Date of Birth</label><span class="errclass" id="iddob"></span>
                                <input class="form-control" type="date" placeholder="DOB" name="dob" value="<?php echo $rsedit['dob']; ?>">
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-6">
                                <br>
                                <label>Password</label><span class="errclass" id="idpassword"></span>
                                <input class="form-control" type="password" placeholder="Password" name="password" value="<?php echo $rsedit['password']; ?>">
                            </div>
                            <div class="col-lg-6">
                                <br>
                                <label>Confirm Password</label><span class="errclass" id="idcpassword"></span>
                                <input class="form-control" type="password" placeholder="Confirm Password" name="cpassword" value="<?php echo $rsedit['password']; ?>">
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-6">
                                <br>
                                <label>Father Name</label><span class="errclass" id="idfather_name"></span>
                                <input class="form-control" type="text" name="father_name" value="<?php echo $rsedit['father_name']; ?>">
                            </div>
                            <div class="col-lg-6">
                                <br>
                                <label>Mother Name</label><span class="errclass" id="idmother_name"></span>
                                <input class="form-control" type="text" name="mother_name" value="<?php echo $rsedit['mother_name']; ?>">
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-6">
                                <br>
                                <label>Gender</label><span class="errclass" id="idgender"></span>
                                <select name="gender" class="form-control">
                                    <option value="">Select</option>
                                    <option value="Male" <?php echo ($rsedit['gender'] == 'Male') ? 'selected' : ''; ?>>Male</option>
                                    <option value="Female" <?php echo ($rsedit['gender'] == 'Female') ? 'selected' : ''; ?>>Female</option>
                                    <option value="Other" <?php echo ($rsedit['gender'] == 'Other') ? 'selected' : ''; ?>>Other</option>
                                </select>
                            </div>
                        </div>

                        <div class="form-group">
                            <br>
                            <label>Address</label><span class="errclass" id="idaddress"></span>
                            <textarea name="address" class="form-control"><?php echo $rsedit['address']; ?></textarea>
                        </div>
                        <div class="form-group">
                            <br>
                            <label>Mobile No</label><span class="errclass" id="idparent_no"></span>
                            <input class="form-control" type="text" name="contact_no" value="<?php echo $rsedit['contact_no']; ?>">
                        </div>
                        <div class="form-group mt-4 mb-0">
                            <button type="submit" name="submit" class="btn btn-w3layouts w-100">Click here to Register</button>
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
function validateform() {
    var numericExpression = /^[0-9]+$/;
    var alphaExp = /^[a-zA-Z]+$/;
    var alphaSpaceExp = /^[a-zA-Z\s]+$/;
    var emailExp = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-Z0-9]{2,4}$/;
    var mobnoExp = /^([0|\+[0-9]{1,5})?([7-9][0-9]{9})$/;

    $(".errclass").html('');
    
    var errstatus = "true";
    if(document.frmform.hostellertype.value == "") {
        document.getElementById("idhostellertype").innerHTML = "Kindly select hosteller type...";
        errstatus = "false";
    }
    if(!document.frmform.name.value.match(alphaSpaceExp)) {
        document.getElementById("idname").innerHTML = "Entered name is not valid...";
        errstatus = "false";
    }
    if(document.frmform.name.value == "") {
        document.getElementById("idname").innerHTML = "Name should not be empty...";
        errstatus = "false";
    }
    if(!document.frmform.emailid.value.match(emailExp)) {
        document.getElementById("idemailid").innerHTML = "Entered Email ID is not valid...";
        errstatus = "false";
    }
    if(document.frmform.emailid.value == "") {
        document.getElementById("idemailid").innerHTML = "Email ID should not be empty...";
        errstatus = "false";
    }
    if(document.frmform.dob.value == "") {
        document.getElementById("iddob").innerHTML = "Date of Birth should not be empty...";
        errstatus = "false";
    }
    if(document.frmform.password.value.length < 6) {
        document.getElementById("idpassword").innerHTML = "Password should contain more than 6 characters...";
        errstatus = "false";
    }
    if(document.frmform.password.value == "") {
        document.getElementById("idpassword").innerHTML = "Password should not be empty...";
        errstatus = "false";
    }
    if(document.frmform.cpassword.value == "") {
        document.getElementById("idcpassword").innerHTML = "Confirm password should not be empty...";
        errstatus = "false";
    }
    if(document.frmform.password.value != document.frmform.cpassword.value) {
        document.getElementById("idcpassword").innerHTML = "Password and Confirm password not matching...";
        errstatus = "false";
    }
    if(!document.frmform.father_name.value.match(alphaSpaceExp)) {
        document.getElementById("idfather_name").innerHTML = "Entered Father name is not valid...";
        errstatus = "false";
    }
    if(document.frmform.father_name.value == "") {
        document.getElementById("idfather_name").innerHTML = "Father name should not be empty...";
        errstatus = "false";
    }
    if(document.frmform.address.value == "") {
        document.getElementById("idaddress").innerHTML = "Address should not be empty...";
        errstatus = "false";
    }
    if(!document.frmform.contact_no.value.match(numericExpression)) {
        document.getElementById("idparent_no").innerHTML = "Contact number should contain digits...";
        errstatus = "false";
    }
    if(!document.frmform.contact_no.value.match(mobnoExp)) {
        document.getElementById("idparent_no").innerHTML = "Entered Mobile Number is not valid...";
        errstatus = "false";
    }
    if(document.frmform.contact_no.value.length != 10) {
        document.getElementById("idparent_no").innerHTML = "Contact number should contain 10 digits...";
        errstatus = "false";
    }
    if(document.frmform.contact_no.value == "") {
        document.getElementById("idparent_no").innerHTML = "Mobile number should not be empty...";
        errstatus = "false";
    }
    if(document.frmform.gender.value == "") {
        document.getElementById("idgender").innerHTML = "Please select gender...";
        errstatus = "false";
    }
    
    if(errstatus == "true") {
        return true;
    } else {
        return false;
    }
}
</script>
