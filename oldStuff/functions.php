<?php 
session_start();

// connect to database
$db = mysqli_connect('localhost', 'root', 'usnavy123', 'timeclock');

// variable declaration
$username = "";
$fname = "";
$lname  = "";
$officeName = "";
$officeManager = "";
$password = "";
$errors   = array(); 

// call the register() function if register_btn is clicked
if (isset($_POST['register_btn'])) {
	register();
}

// REGISTER USER
function register(){
	// call these variables with the global keyword to make them available in function
	global $db, $errors, $username, $fname, $lname, $officeName, $officeManager;

	// receive all input values from the form. Call the e() function
    // defined below to escape form values
	$username    =  e($_POST['username']);
	$fname       =  e($_POST['fname']);
	$lname  =  e($_POST['lname']);
	$officeName  =  e($_POST['officeName']);
	$officeManager  =  e($_POST['officeManager']);
	$password =  e($_POST['password']);

	// form validation: ensure that the form is correctly filled
	if (empty($username)) { 
		array_push($errors, "Username is required"); 
	}
	if (empty($fname)) { 
		array_push($errors, "First Name is required"); 
	}
	if (empty($officeName)) { 
		array_push($errors, "Office Name is required"); 
	}
	if (empty($password)) {
		array_push($errors, "Password is required");
	}

	// register user if there are no errors in the form
	if (count($errors) == 0) {
		$password = md5($password);//encrypt the password before saving in the database

		if (isset($_POST['user_type'])) {
			$user_type = e($_POST['user_type']);
			$query = "INSERT INTO users (username, fname, lname, officeName, officeManager, user_type, password) 
					  VALUES('$username', '$fname', '$lname', '$officeName', '$officeManager', '$user_type', '$password')";
			mysqli_query($db, $query);
			$_SESSION['success']  = "New user successfully created!!";
			header('location: userhome.php');
		}else{
			$query = "INSERT INTO users (username, fname, lname, officeName, officeManager, user_type, password) 
					  VALUES('$username', '$fname', '$lname', '$officeName', '$officeManager', '$user_type', '$password')";
			mysqli_query($db, $query);

			// get id of the created user
			$logged_in_user_id = mysqli_insert_id($db);

			$_SESSION['user'] = getUserById($logged_in_user_id); // put logged in user in session
			$_SESSION['success']  = "You are now logged in";
			header('location: index.php');				
		}
	}
}

// return user array from their id
function getUserById($id){
	global $db;
	$query = "SELECT * FROM users WHERE id=" . $id;
	$result = mysqli_query($db, $query);

	$user = mysqli_fetch_assoc($result);
	return $user;
}

// escape string
function e($val){
	global $db;
	return mysqli_real_escape_string($db, trim($val));
}

function display_error() {
	global $errors;

	if (count($errors) > 0){
		echo '<div class="error">';
			foreach ($errors as $error){
				echo $error .'<br>';
			}
		echo '</div>';
	}
}	

