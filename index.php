<!DOCTYPE html>
<html lang="en">
<head>
  <title>CPS510 Assignment 9</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<?php
error_reporting(E_ALL);
ini_set('display_errors', 'Off');
// Create connection to Oracle
$conn = oci_connect('snizam','04054152','(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl)))');
if (!$conn) {
   $m = oci_error();
   echo $m['message'];
}
else{
   # echo "successfully connected with oracle database";
}

$query = "Select * From test" ;
$stid = oci_parse($conn, $query);
$r = oci_execute($stid);
if($r){
   // Fetch each row in an associative array
    while ($row = oci_fetch_array($stid,   OCI_RETURN_NULLS+OCI_ASSOC)) {
        foreach ($row as $item) {
                  echo  $item," ";
        }
        echo "<br/>";
    }
}
?>
<div class="container-fluid p-5 bg-primary text-white text-center">
  <h1>Gym Backend DBMS</h1>
  <p>by SNizam, Jrokhvarg, DShah</p> 
</div>
  
<div class="container mt-5">
  <div class="row">
    <div class="col-sm-4">
      <h3>Menu</h3>
      <p><button type="button" class="btn btn-primary">Create Tables</button></p>
      <p><button type="button" class="btn btn-secondary">Drop Tables</button></p>
      <p><button type="button" class="btn btn-success">Populate Tables</button></p>
      <p><button type="button" class="btn btn-warning">Queries</button></p>
      <p><button type="button" class="btn btn-danger">Views</button></p>
    </div>
    <div class="col-sm-4">
      <h3>Output</h3>
      <p>fizz</p>
      <p>buzz</p>
    </div>
    <div class="col-sm-4">
      <h3>This webpage was made using php</h3>        
      <p>foo</p>
      <p>bar</p>
    </div>
  </div>
</div>

</body>
</html>
