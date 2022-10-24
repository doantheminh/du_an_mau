<?php
// if (is_array($taikhoan)) {
//     extract($taikhoan);
// }

?>
<div class="row">
            <div class="row frmtitle">
                <h1>Cập nhật tai khoan</h1>
            </div>
            <div class="row frmcontent">
            <form action="index.php?act=suatk" method="post" enctype="multipart/form-data">
                    <div class="row mb10">
                        <!-- Mã sản phẩm <br>
                        <input type="text" name="masp" id="" disabled> -->
                        <select name="id" id="">
                        <option value="0" selected  >Tất cả</option>
                            <?php
                            foreach ($listtaikhoan as $taikhoan) {
                                extract($taikhoan);
                           if($id==$taikhoan['id']) echo '<option value="'.$taikhoan['id'].'" selected>'.$taikhoan['user'].'</option>';
                            echo '<option value="'.$taikhoan['id'].'">'.$taikhoan['user'].'</option>';
                            }
                            ?>
                       </select>
                    </div>
                    <div class="row mb10">
                        Tên đăng nhập <br>
                        <input type="text" name="user" value="<?=$user?>">
                    </div>
                    <div class="row mb10">
                        Mật khẩu <br>
                        <input type="text" name="pass" value="<?=$pass?>" id="" >
                    </div>
                    <div class="row mb10">
                        Email <br>
                        <input type="text" name="email" value="<?=$email?>" id="" >
                    </div>
                    <div class="row mb10">
                        Địa chỉ <br>
                        <input type="text" name="address" value="<?=$address?>" id="" >
                    </div>
                    <div class="row mb10">
                        Số điện thoại <br>
                        <input type="text" name="tel" value="<?=$tel?>" id="" >
                    </div>
                    <div class="row mb10">
                        Vai trò <br>
                        <input type="text" name="role" value="<?=$role?>" id="" >
                    </div>


                    <div class="row mb10">
                        <input type="hidden" name="id" value="<?=$id?>">
                        <input type="submit" value="Cập nhật" name="capnhattk" id="">
                        <input type="reset" value="Nhập lại">
                        <a href="index.php?act=dskh"><input type="button" value="Danh sách"></a>
                    </div>
                    <?php
                    if (isset($thongbao)&&($thongbao!=""))
                    echo $thongbao;
                    ?>

                </form>
            </div>
        </div>
    </div>