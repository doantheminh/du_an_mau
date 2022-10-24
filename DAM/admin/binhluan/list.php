<div class="row">
            <div class="row frmtitle">
                <h1>Danh sách bình luận </h1>
            </div>
            
            <div class="row frmcontent">
            <form action="index.php?act=listspbl" method="post">
                       <input type="text" name="kyw" id="" placeholder="Tìm sản phẩm theo tên">                        
                       <input type="submit" value="Go" name="listbl">
                    </form>
                <div class="row mb10 frmdsloai">
                    <table>
                        <tr>
                            <th></th>
                            <th>ID</th>
                            <th>Nội dung bình luận</th>
                            <th>IDUser</th>
                            <th>IDpro</th>
                            <th>Ngày bình luận</th>
                            <th></th>
                        </tr>
                        <?php
                        foreach ($listbinhluan as $binhluan) {
                            extract($binhluan);
                            $xoabl="index.php?act=xoabl&id=".$id;
                            echo '<tr>
                            <td><input type="checkbox" name="" id=""></td>
                            <td>'.$id.'</td>
                            <td>'.$noidung.'</td>
                            <td>'.$iduser.'</td>
                            <td>'.$idpro.'</td>
                            <td>'.$ngaybinhluan.'</td>
                            <td><a href="'.$xoabl.'"><input type="button" value="Xóa"></a></td>
                        </tr>';
                        }
                        ?>
                        
                    </table>
                </div>
               
            </div>
        </div>