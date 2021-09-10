<?php 


if (isset($_POST['startFrom'])){
    $offset = $_POST['startFrom']; 
}   else    {
    $offset = $_GET['startFrom']; 
}

$db = mysqli_connect("127.0.0.1", "root", "", "collegj"); 


$req = mysqli_query($db, "select * from post where post.group_id in (select group_id from subject_group where user_id=1) order by post.id desc limit 10 OFFSET {$offset}");


$arch = array();

while($row = mysqli_fetch_assoc($req)){
    $arch[] = $row;
}

echo json_encode($arch);

?>