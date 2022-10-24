<div class="row">
    <div class="row frmtitle mb">
        <h1>Danh sách đơn hàng</h1>
    </div>
    <form action="index.php?act=listbill" method="post">
        <input type="text" name="kyw" placeholder="Nhập mã đơn hàng" id="">
        <input type="submit" value="GO" name="listok">
    </form>
    <div class="row frmcontent">
        <div class="row mb10 frmdsloai">
            <table>
                <tr>
                    <th></th>
                    <th>Mã đơn hàng</th>
                    <th>Khách hàng</th>
                    <th>Số lượng hàng</th>
                    <th>Giá trị đơn hàng</th>
                    <th>Tình trạng đơn hàng</th>
                    <th>Ngày đặt hàng</th>
                    <th>Tháo tác</th>

                </tr>
                <?php
                    foreach ($listbill as $bill) {
                        extract($bill);
                        $kh=$bill["bill_name"].'
                        <br>'.$bill["bill_email"].'
                        <br>'.$bill["bill_address"].'
                        <br>'.$bill["bill_tel"];
                        $countsp=loadall_cart_count($bill["id"]);
                        $ttdh=get_ttdh($bill["bill_status"]);
                        echo '<tr>
                        <td><input type="checkbox" name="" id=""></td>
                        <td>'.$bill['id'].'</td>
                        <td>'.$kh.'</td>
                        <td>'.$countsp.'</td>
                        <td><strong>'.$bill["total"].'</strong>VND</td>
                        <td>'.$ttdh.'</td>
                        <td>'.$bill["ngaydathang"].'</td>
                        <td><a href="index.php?act=xoabill"><input type="button" value="Xóa"></a></td>
                    </tr>';
                    }
                ?>
                
            </table>
        </div>

    </div>
</div>