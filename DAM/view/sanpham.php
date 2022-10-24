<div class="row mb ">
            <div class="boxtrai mr">
            <div class="row mb">
                    <div class="boxtitle">Sản Phẩm <strong><?=$tendm?></strong></div>
                    <div class=" row boxcontent">
                       <?php
                                $i=0;
                                foreach ($dssp as $sp) {
                                    extract($sp);
                                    $linksp="index.php?act=sanphamct&idsp=".$id;
                                    $hinh=$img_path.$img;
                                    if (($i==2)||($ii=5)||($i==8)||($i==11)) {
                                       $mr="";
                                    }else {
                                        $mr="mr";
                                    }
                                    echo '<div class="boxsp '.$mr.'">
                                    <div class="row img"><a href="'.$linksp.'"><img src="'.$hinh.'" alt=""></a></div>                       
                                     <p>$'.$price.'</p>
                                    <a href="'.$linksp.'">'.$name.'</a>
                                </div> ';
                                $i+=1;
                                }
                       ?>
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
                        width: 150px;
                        height: 150px;
                        margin-top: 25px;
                    }

            </style>
            </div>
            <div class="boxphai ">
            <?php
                include "boxright.php";
               ?>
            </div>
        </div>