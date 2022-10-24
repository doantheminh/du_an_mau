<div class="row mb ">
            <div class="boxtrai mr">
            <div class="row mb">
                <?php
                        extract($onesp);
                ?>
                    <div class="boxtitle"><?=$name?></div>
                    <div class=" row boxcontent">
                       <?php
                        $img=$img_path.$img;
                        echo '<div class="row mb spct"><img src="'.$img.'"><p>Giá tiền:'.$price.'</p></div>';
                        echo $mota;
                       ?>
                    </div>
                </div>
                
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
                        <script>
                        $(document).ready(function(){
                            
                            $("#binhluan").load("view/binhluan/binhluanform.php", {idpro: <?=$id?>});
                        });
                        </script>
                        
                <div class="row " id="binhluan">
                    
                </div>
                <div class="row mb">
                    <div class="boxtitle">Sản phẩm cùng loại</div>
                    <div class=" row boxcontent">
                       <?php
                            foreach ($sp_cung_loai as $sp_cung_loai) {
                                extract($sp_cung_loai);
                                $linksp="index.php?act=sanphamct&idsp=".$id;
                                echo '<li><a href="'.$linksp.'">'.$name.'</a></li>';
                            }
                       ?>
                    </div>
                </div>
            </div>
            <style>
                 p {
    color: red;
    margin-left: 15px;
    font-size: 16px;
    font-weight: bold;

}
p:hover {
    text-decoration: underline;
    color: blue;
}

a {
    margin-left: 15px;
    text-decoration: none;
    font-size: 17px;
    color: orange;
}
input.mua {
    background:rgb(208, 99, 99);
    border-radius: 5px;
    margin-left: 15px;
    color: cornsilk;
    height: 20px;
    width: 120px;
    }
input.mua:hover{
    background: black;
    color:white;
}
img {
    height: 350px;
    margin-top: 25px;
}
            </style>
            <div class="boxphai ">
            <?php
                include "boxright.php";
               ?>
            </div>
        </div>