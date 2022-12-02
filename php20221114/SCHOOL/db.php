<h1>資料庫常用自訂函式</h1>
<h3>all()-存取指定條件的多筆資料</h3>
<?php
include_once "./db/base.php";



$row=find('students',100);
dd($row);
$row=find('students',['name'=>'林玟玲']);
dd($row);

function dd($array){
    echo "<pre>";
    print_r($array);
    echo "</pre>";
}



function all($table,...$args){
    global $pdo;
    $sql="select * from $table ";

    if(isset($args[0])){
        if(is_array($args[0])){

            foreach($args[0] as $key => $value){
                $tmp[]="`$key`='$value'";
            }

            $sql=$sql ." WHERE ". join(" && " ,$tmp);
        }else{
            $sql=$sql . $args[0];
        }
    }

    if(isset($args[1])){
        $sql = $sql . $args[1];
    }

    //echo $sql;
    return $pdo->query($sql)->fetchAll(PDO::FETCH_ASSOC);

}



function find($table,$id){
    global $pdo;
    $sql="select * from `$table` ";

    if(is_array($id)){
        foreach($id as $key => $value){
            $tmp[]="`$key`='$value'";
        }

        $sql = $sql . " where " . join(" && ",$tmp);

    }else{

        $sql=$sql . " where `id`='$id'";
    }


    return $pdo->query($sql)->fetch(PDO::FETCH_ASSOC);
}


?>