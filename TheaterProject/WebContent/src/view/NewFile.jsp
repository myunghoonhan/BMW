<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>달력으로 보기</title>
<link href="http://ticketimage.interpark.com/TicketImage/main/120612_detail/tk_calendar.css" rel="stylesheet">
	<script type="text/javascript">
	
		function fnChangeMonth(ym){
			document.getElementById("YM").value = ym;
			document.getElementById("formCalendar").submit();
		}

		function fnSelectPlayDate(nIndex, sPlayDate){
			var prevIndex = document.getElementById("hidCellIndex").value;
			if(prevIndex!="") {
				document.getElementById("CellPlayDate"+prevIndex).className = "able";
			}
			document.getElementById("CellPlayDate"+nIndex).className = "select";
			document.getElementById("hidCellIndex").value = nIndex;

			parent.fnPlayDateChange(2,sPlayDate);
		}
	
	</script>
</head>
<body oncontextmenu='return false' onselectstart='return false' ondragstart='return false'>
<div class="cal_Wrap">

	<div class="cal_move">
		<div>

			<a href="javascript:;" class="pre_off"><span>이전</span></a>

			<h3>2017.03</h3>
			<a href="javascript:fnChangeMonth('201704');" class="next"><span>다음</span></a>
		</div>
	</div>
	
	<div class="cal_Table">
		<table width="100%" border="0" cellspacing="0" cellpadding="0" class="cal_TB_st">
			<caption>공연달력</caption>
			<tr>
				<th class="Sun"><span>일</span></th>
				<th><span>월</span></th>
				<th><span>화</span></th>
				<th><span>수</span></th>
				<th><span>목</span></th>
				<th><span>금</span></th>
				<th><span>토</span></th>
			</tr>
			<tr>
<td></td>
<td></td>
<td></td>
<td class=" out">1</td>
<td class=" out">2</td>
<td class=" out">3</td>
<td class=" out">4</td>
</tr>
<tr>
<td class="Sun out">5</td>
<td class=" out">6</td>
<td class=" out">7</td>
<td class=" out">8</td>
<td class=" out">9</td>
<td id="CellPlayDate0" class=" able"><a href="javascript:;" onclick="fnSelectPlayDate(0, '20170310')">10</a></td>
<td id="CellPlayDate1" class=" able"><a href="javascript:;" onclick="fnSelectPlayDate(1, '20170311')">11</a></td>
</tr>
<tr>
<td id="CellPlayDate2" class="Sun able"><a href="javascript:;" onclick="fnSelectPlayDate(2, '20170312')">12</a></td>
<td class=" out">13</td>
<td id="CellPlayDate3" class=" able"><a href="javascript:;" onclick="fnSelectPlayDate(3, '20170314')">14</a></td>
<td id="CellPlayDate4" class=" able"><a href="javascript:;" onclick="fnSelectPlayDate(4, '20170315')">15</a></td>
<td id="CellPlayDate5" class=" able"><a href="javascript:;" onclick="fnSelectPlayDate(5, '20170316')">16</a></td>
<td id="CellPlayDate6" class=" able"><a href="javascript:;" onclick="fnSelectPlayDate(6, '20170317')">17</a></td>
<td id="CellPlayDate7" class=" able"><a href="javascript:;" onclick="fnSelectPlayDate(7, '20170318')">18</a></td>
</tr>
<tr>
<td id="CellPlayDate8" class="Sun able"><a href="javascript:;" onclick="fnSelectPlayDate(8, '20170319')">19</a></td>
<td class=" out">20</td>
<td id="CellPlayDate9" class=" able"><a href="javascript:;" onclick="fnSelectPlayDate(9, '20170321')">21</a></td>
<td id="CellPlayDate10" class=" able"><a href="javascript:;" onclick="fnSelectPlayDate(10, '20170322')">22</a></td>
<td id="CellPlayDate11" class=" able"><a href="javascript:;" onclick="fnSelectPlayDate(11, '20170323')">23</a></td>
<td id="CellPlayDate12" class=" able"><a href="javascript:;" onclick="fnSelectPlayDate(12, '20170324')">24</a></td>
<td id="CellPlayDate13" class=" able"><a href="javascript:;" onclick="fnSelectPlayDate(13, '20170325')">25</a></td>
</tr>
<tr>
<td id="CellPlayDate14" class="Sun able"><a href="javascript:;" onclick="fnSelectPlayDate(14, '20170326')">26</a></td>
<td class=" out">27</td>
<td id="CellPlayDate15" class=" able"><a href="javascript:;" onclick="fnSelectPlayDate(15, '20170328')">28</a></td>
<td id="CellPlayDate16" class=" able"><a href="javascript:;" onclick="fnSelectPlayDate(16, '20170329')">29</a></td>
<td id="CellPlayDate17" class=" able"><a href="javascript:;" onclick="fnSelectPlayDate(17, '20170330')">30</a></td>
<td id="CellPlayDate18" class=" able"><a href="javascript:;" onclick="fnSelectPlayDate(18, '20170331')">31</a></td>
<td></td>
</tr>


		</table>
	</div>

	<form id="formCalendar" name="formCalendar" method="form" action="NewFile.jsp">
		<input type="hidden" id="GoodsCode" name="GoodsCode" value="16014192">
		<input type="hidden" id="PlaceCode" name="PlaceCode" value="16001525">
		<input type="hidden" id="OnlyDeliver" name="OnlyDeliver" value="68004">
		<input type="hidden" id="DBDay" name="DBDay" value="12">
		<input type="hidden" id="ExpressDelyDay" name="ExpressDelyDay" value="0">
		<input type="hidden" id="YM" name="YM" value="201703">
	</form>
	<input id="hidCellIndex" type="hidden" value="" />
</div>
</body>
</html>
