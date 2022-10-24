<?php
    session_start();
    $idpro=$_REQUEST['idpro'];
    include "../../model/pdo.php";
    include "../../model/binhluan.php";
    include "../../model/taikhoan.php";
    $dsbl=loadall_binhluan($idpro);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../css/style.css">
    <style>
    .binhluan table{
    width: 90%;
    margin-left:80px;
  }
  .binhluan table td:nth-child(1){
    width: 50%;
  }
  .binhluan table td:nth-child(2){
    width: 20%;
  }
  .binhluan table td:nth-child(3){
    width: 30%;
  }
  .binhluan table th:nth-child(1){
    width: 50%;
  }
  .binhluan table th:nth-child(2){
    width: 20%;
  }
  .binhluan table th:nth-child(3){
    width: 40%;
  }
  th {
    padding-right: 160px;
}
    </style>
</head>
<body>
<div class="row mb " >
                    <div class="boxtitle">Bình luận</div>
                    <div class="boxcontent2 binhluan">
                        <table>
                        <tr>
                            <th>Nội dung bình luận</th>
                            <th>IDUser</th>
                            <th>Ngày bình luận</th>
                        </tr>
                            <?php
                                foreach ($dsbl as $bl) {
                                    extract($bl);
                                    echo '<tr><td>'.$noidung.'</td>';
                                    echo '<td>'.$iduser.'</td>';
                                    echo '<td>'.$ngaybinhluan.'</td></tr>';
                                }
                            ?>
                        </table>
                    </div>
                    <div class="boxfooter binhluanform">
                             <form action="<?=$_SERVER['PHP_SELF'];?>" method="post">
                            <input type="hidden" name="idpro" value="<?=$idpro?>">
                            <?php if (isset($_SESSION['user'])) {
                              ?>
                            <input type="text" name="noidung" id="">
                            <input type="submit" value="Bình luận" name="guibinhluan">
                            <?php } ?>
                        </form>

                        
                    </div>
                    <?php
                    if (isset($_POST['guibinhluan'])&&($_POST['guibinhluan'])) {
                        $noidung=$_POST['noidung'];
                        $idpro=$_POST['idpro'];
                        $iduser=$_SESSION['user']['id'];
                        $ngaybinhluan=date('h:i:sa d/m/Y');
                        insert_binhluan($noidung,$iduser,$idpro,$ngaybinhluan);
                        header("Location:".$_SERVER['HTTP_REFERER']);
                    }
                    ?>
                </div>


</body>
</html>