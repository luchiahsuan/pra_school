<h3>使用函式來印星星</h3>
<?php
for ($i = 1; $i <= 5 ; $i++) {
    for ($k = 1; $k <= 5; $k++) {
        echo "*";
    }
    echo "<br>";
}

starts("矩形",5);


function starts($shape, $size)
{
    switch ($shape) {
        case "正三角形":
            for ($i = 1; $i <= $size; $i++) {
                for ($k = 1; $k <= ($size - $i); $k++) {
                    echo "&nbsp;";
                }
                for ($j = 1; $j <= (2 * $i - 1); $j++) {
                    echo "*";
                }
                echo "<br>";
            }
            break;
        case "菱形":

            break;
        case "矩形":
            // for ($i = 1; $i <= 5; $i++) {
            //     for ($k = 1; $k <= 5 && $k==1; $k++) {
            //         echo "*";
            //     }
            //     echo "<br>";
            // }
            break;
    }
}


?>