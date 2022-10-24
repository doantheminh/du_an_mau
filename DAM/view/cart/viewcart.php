<div class="row mb">
    <div class="boxtrai mr">
        <div class="row mb">
        <div class="boxtitle">Giỏ hàng</div>
        <div class="row boxcontent cart">
            <table>
                
                <?php
                    viewcart(1);
                ?>
            </table>
        </div>
        <style>
 table{
    width: 100%;
    border-collapse: collapse;
}
.frmdsloai table th:nth-child(1){
    width: 5%;
    padding: 20px;
    background-color: #ccc;
}
.frmdsloai table th:nth-child(2){
    width: 5%;
    background-color: #ccc;
}
.frmdsloai table th:nth-child(3){
    width: 30%;
    background-color: #ccc;
}
.frmdsloai table th:nth-child(4){
    width: 25%;
    background-color: #ccc;
}
.frmdsloai table th:nth-child(5){
    width: 15%;
    background-color: #ccc;
}
.frmdsloai table th:nth-child(6){
    width: 15%;
    background-color: #ccc;
}
th {
    background-color: #ccc;
    height: 40px;

}
td {
    /* margin-left: 0px; */
    padding-left: 40px;
    line-height: 50px;
}

        </style>
        </div>
        <div class="row mb bill">
        <a href="index.php?act=bill"><input type="button" value="Đồng ý đặt hàng"><a href="index.php?act=delcart"><input type="button" value="Xóa giỏ hàng"></a>
            </div>
        </div>
        <div class="boxphai">
            <?php include "view/boxright.php";
            ?>
        </div>
    
</div>