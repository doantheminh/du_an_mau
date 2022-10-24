<div class="row">
            <div class="row frmtitle">
                <h1>Danh sách loại hàng</h1>
            </div>
                    <form action="index.php?act=listspbl" method="post">
                       <input type="text" name="kyw" id="" placeholder="Tìm theo tên">
                       
                       <input type="submit" value="Go" name="listbl">
                    </form>
            <div class="row frmcontent">
                <div class="row mb10 frmdsloai">
                    
                    <table>
                        <tr>
                            <th></th>
                            <th>Mã sản phẩm</th>
                            <th>Tên tên sản phẩm</th>
                            <th>Hình</th>
                            <th>Xem bình luận</th>
                            <th></th>
                        </tr>
                        <?php
                        foreach ($listsanpham as $sanpham) {
                            extract($sanpham);
                            $ctbl="index.php?act=locbl&id=".$id;
                            $hinhpath="../upload/".$img;
                            if(is_file($hinhpath)){
                                $hinh="<img src='".$hinhpath."' height='50'>";   
                            }else {
                                $hinh="no photo";
                            }
                            echo '<tr>
                            <td><input type="checkbox" name="" id=""></td>
                            <td>'.$id.'</td>
                            <td>'.$name.'</td>
                            <td>'.$hinh.'</td>
                            <td><a href="'.$ctbl.'"><input type="button" value="Chi tiết"></a></td>
                        </tr>';
                        }
                        ?>
                        
                    </table>
                </div>
                <style>td {
    width: 15%;
}</style>
                <div class="row mb10">
                    <input type="button" value="Chọn tất cả">
                    <input type="button" value="Bỏ chọn tất cả">
                    <input type="button" value="Xóa các thư mục đã chọn">
                    <a href="index.php?act=addsp"><input type="button" value="Nhập thêm"></a>
                </div>
            </div>
        </div>