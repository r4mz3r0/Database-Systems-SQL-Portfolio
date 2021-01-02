<?php 
 
 $conn = new mysqli($servername, $username, $password,$dbname); 
 if($conn->connect_error){
	die("Connection failed: " . $conn->connect_error);  
}
echo "Connected successfully";
?>

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
table{
	font-family: arial, sans-serif; 
	border-collapse: collapse; 
	width: 100%;
}
#footer {
  position: absolute;
  bottom: 0;
  width: 100%;
  height: 2.5rem;            /* Footer height */
}
td, th{
	border: 1px solid #dddddd;
	text-align: left; 
	padding: 8px; 
}
tr:nth-child(even){
	background-color: #dddddd;
}
body {
  font-family: Arial;
}

* {
  box-sizing: border-box;
}

form.example input[type=text] {
  padding: 10px;
  font-size: 17px;
  border: 1px solid grey;
  float: left;
  width: 80%;
  background: #f1f1f1;
}

form.example button {
  float: left;
  width: 20%;
  padding: 10px;
  background: #2196F3;
  color: white;
  font-size: 17px;
  border: 1px solid grey;
  border-left: none;
  cursor: pointer;
}

form.example button:hover {
  background: #0b7dda;
}

form.example::after {
  content: "";
  clear: both;
  display: table;
}
</style>
<script>
  function myFunction() {
  document.getElementById("demo").innerHTML = "Hello World";
}
</script>
</head>
<body>

<h2>AR Station Numbers</h2>

<p>An Amazon Robotics onboarding tool v0.01</p>
<center>Search using <b>System Station Number, Actual Station Number,location (<i>south</i> or <i>north</i>), or <i>all</i></b></center></br> 

</br> 
<form method="post" class="example" style="margin:auto;max-width:300px" action="index.php">
  <input type="text" placeholder="Search.." name="search">
  <button type="submit"><i class="fa fa-search"></i></button>
</form>

<?php 
$search = $_POST['search'] ?? '';
if($search == "all"){
  $result = mysqli_query($conn, "SELECT * FROM ARstation");
}
elseif($search == "north" || $search == "south"){
  $result = mysqli_query($conn, "SELECT * FROM ARstation WHERE north_south = '$search'");
}
elseif($search < 49){
  $result = mysqli_query($conn, "SELECT * FROM ARstation WHERE station_num = $search");
}
elseif($search > 2100){
  $result = mysqli_query($conn, "SELECT * FROM ARstation WHERE actual_station = $search");
}
else{
  $result = mysqli_query($conn, "SELECT * FROM ARstation WHERE system_station = $search");
}

echo "<table> 
<tr>
<th>System Station</th> 
<th>Actual Station</th> 
<th>Station #</th> 
<th>North or South?</> 
</tr>";
while($row = mysqli_fetch_array($result))
{
echo "<tr>";
echo "<td>" . $row['system_station'] . "</td>";
echo "<td>" . $row['actual_station'] . "</td>";
echo "<td>" . $row['station_num'] . "</td>";
echo "<td>" . $row['north_south'] . "</td>";
echo "</tr>";
}
echo "</table>";
?> 
</body>

<footer>
  <p>Hackers Beware! This site is owned and operated by <a target="_blank"  href="https://github.com/r4mz3r0"> xXr4mz3r0Xx</a><br>
  <a href="mailto:ramirogonzalez@linux.com">ramirogonzalez@linux.com</a></p>
</footer>



</html> 

