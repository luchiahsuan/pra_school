<?php

$dsn="mysql:host=localhost;charset=utf8;dbname=school";
$pdo=new PDO($dsn,'root','');
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>編輯學生</title>
</head>

<body>
    <h1>編輯學生</h1>
    <?php
    if (isset($_GET['id'])) {
        $sql = "SELECT * FROM `students` where`id`='{$_GET['id']}'";
        $student = $pdo->query($sql)->fetch(PDO::FETCH_ASSOC);
    } else {
        header("location:index.php?status=edit_error");
    }


    ?>
    <form action="api/add_students.php" method="post">
        <table>

            <tr>
                <td>school_num</td>
                <td><?= $student['school_num']; ?></td>
            </tr>
            <tr>
                <td>name</td>
                <td><input type="text" name="name" value="<?= $student['name']; ?>"></td>
            </tr>
            <tr>
                <td>birthday</td>
                <td><input type="date" name="birthday"value="<?= $student['birthday']; ?>"></td>
            </tr>
            <tr>
                <td>uni_id</td>
                <td><input type="text" name="uni_id"value="<?= $student['uni_id']; ?>"></td>
            </tr>
            <tr>
                <td>addr</td>
                <td><input type="text" name="addr"value="<?= $student['addr']; ?>"></td>
            </tr>
            <tr>
                <td>parents</td>
                <td><input type="text" name="parents"value="<?= $student['parents']; ?>"></td>
            </tr>
            <tr>
                <td>tel</td>
                <td><input type="text" name="tel"value="<?= $student['tel']; ?>"></td>
            </tr>
            <tr>
                <td>dept</td>
                <td>
                    <select name="dept">
                        <?php
                        $sql = "SELECT * FROM `dept`";
                        $depts = $pdo->query($sql)->fetchAll(PDO::FETCH_ASSOC);
                        foreach ($depts as $dept) {
                            echo "<option value='{$dept['id']}'>{$dept['name']}</option>";
                        }
                        ?>
                    </select>
                </td>
            </tr>
            <tr>
                <td>graduate_at</td>
                <td>
                    <select name="$grad">
                        <?php
                        $sql = "SELECT * FROM `graduate_school`";
                        $grads = $pdo->query($sql)->fetchAll(PDO::FETCH_ASSOC);
                        foreach ($grads as $grad) {
                            echo "<option value='{$grad['id']}'>{$grad['county']}{$grad['name']}</option>";
                        }
                        ?>
                    </select>
                </td>
            </tr>
            <tr>
                <td>status_code</td>
                <td>
                    <select name="status_code">
                        <?php
                        $sql = "SELECT * FROM `status`";
                        $status = $pdo->query($sql)->fetchAll(PDO::FETCH_ASSOC);
                        foreach ($status as $statu) {
                            echo "<option value='{$statu['code']}'>{$statu['status']}{$statu['note']}</option>";
                        }
                        ?>
                    </select>
                </td>
            </tr>
            <tr>
                <td>班級</td>
                <td><select name="classes">
                        <?php
                        $sql = "SELECT * FROM `classes`";
                        $classes = $pdo->query($sql)->fetchAll(PDO::FETCH_ASSOC);
                        foreach ($classes as $class) {
                            echo "<option value='{$class['code']}'>{$class['name']}</option>";
                        }
                        ?>
                    </select></td>
            </tr>
            <tr>
                <td>座號</td>
                <td><input type="number" name="seat_num"></td>
            </tr>
        </table>
        <input type="submit" value="確認新增">
    </form>


</body>

</html>