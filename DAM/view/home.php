<div class="row mb ">
            <div class="boxtrai mr">
                <div class="row">
                    <div class="banner">
                        <!-- Slideshow container -->
                        <div class="slideshow-container">

                        <!-- Full-width images with number and caption text -->
                        <div class="mySlides fade">
                        <div class="numbertext">1 / 3</div>
                        <img src="view/images/1061.jpg" style="width:100%">
                        </div>

                        <div class="mySlides fade">
                        <div class="numbertext">2 / 3</div>
                        <img src="view/images/1003.jpg" style="width:100%">
                        </div>

                        <div class="mySlides fade">
                        <div class="numbertext">3 / 3</div>
                        <img src="view/images/1004.jpg" style="width:100%">
                        </div>

                        <!-- Next and previous buttons -->
                        <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
                        <a class="next" onclick="plusSlides(1)">&#10095;</a>
                        </div>
                        <br>

                        <!-- The dots/circles -->
                        <div style="text-align:center">
                        <span class="dot" onclick="currentSlide(1)"></span>
                        <span class="dot" onclick="currentSlide(2)"></span>
                        <span class="dot" onclick="currentSlide(3)"></span>
                        </div>
                    </div>
                </div>
            
                <div class="row">
                    <?php
                    $i=0;
                    foreach ($spnew as $sp) {
                        extract($sp);
                        $linksp="index.php?act=sanphamct&idsp=".$id;
                        $hinh=$img_path.$img;
                        if (($i==2)||($ii=5)||($i==8)) {
                           $mr="";
                        }else {
                            $mr="mr";
                        }
                        echo '<div class="boxsp'.$mr.'">
                        <div class="row img"><a href="'.$linksp.'"><img src="'.$hinh.'" alt="" width="120"></a></div>                       
                         <p>'.$price.'</p>
                        <a href="'.$linksp.'">'.$name.'</a>
                        <div class="row ">
                        <form action="index.php?act=addtocart" method="post">
                        <input type="hidden" name="id" value="'.$id.'">
                        <input type="hidden" name="name" value="'.$name.'">
                        <input type="hidden" name="img" value="'.$img.'">
                        <input type="hidden" name="price" value="'.$price.'" class="gia">
                        <input type="submit" name="addtocart" value="Thêm vào giỏ hàng" class="mua">
                        </form>
                        </div>
                    </div> ';
                    $i+=1;
                    }
                    ?>
                </div>
                
            </div>
       <style>
        img{
            height: 160px;
            margin-top: 15px;
            width: 150px;
        }
        
        p {
            color: orange;
            font-size: 16px;
            margin-left: 10px;
            font-weight: bold;
        }
        p:hover {
            color: #ba8119;
            text-decoration: underline;
        }
        a:hover {
            color: blue;
            text-decoration: underline;
        }
        a {
            font-size: 20px;
            text-decoration: none;
            color: red;
            margin-left: 10px;
        }
        input.mua {
            margin-left: 10px;
            border-radius: 4px;
            background: #a68e8e;
            color: floralwhite;
            border: 1px solid gray;
        }

        input.mua:hover {
            background-color: black;
            color: white;
        }
       </style>
            <div class="boxphai ">
               <?php
                include "boxright.php";
               ?>
            </div>
        </div>