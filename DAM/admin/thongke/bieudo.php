<div class="row">
<h1>Thống kê sản phẩm theo danh mục</h1>
<div id="piechart"></div>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
// Load google charts
google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart);
// Draw the chart and set the chart values
function drawChart() {
  var data = google.visualization.arrayToDataTable([
    ['Danh mục', 'Số lượng sản phẩm'],
    <?php
    $tongdm=count($listthongke);
    $i=1;
        foreach ($listthongke as $thongke) {
            extract($thongke);
            if($i==$tongdm) $dauphay=""; else $dauphay=",";
            echo "['".$thongke['tendm']."',".$thongke['countsp']."]".$dauphay;
            $i+=1;
        }
    ?>
]);
  var options = {'title':'', 'width':1000, 'height':700};
  var chart = new google.visualization.PieChart(document.getElementById('piechart'));
  chart.draw(data, options);
}
</script>
<style>
h1 {
    color: red;
    font-size: 40px;
    font-family: monospace;
    -webkit-box-align: center; 
}
</style>
</div>