<?php

require('connect.php');

// 编写sql语句---
$sql = "select * from indexgoods ";

$res = $conn->query($sql);

// 得到一个数组-----
$row = $res->fetch_all(MYSQLI_ASSOC);

// 输出到前端-----
echo json_encode($row,JSON_UNESCAPED_UNICODE);

?>