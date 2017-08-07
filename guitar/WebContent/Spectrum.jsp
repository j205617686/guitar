<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="shortcut icon" href="./images/favicon.ico" />

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>心琴點播</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js" type="text/javascript"></script>
		<!--script src="js/jquery.lint.js" type="text/javascript" charset="utf-8"></script-->
		<link rel="stylesheet" href="css/prettyPhoto.css" type="text/css" media="screen" title="prettyPhoto main stylesheet" charset="utf-8" />
		<script src="js/jquery.prettyPhoto.js" type="text/javascript" charset="utf-8"></script>
		
		<link rel="stylesheet" type="text/css" href="css/style.css" media="screen">
<script type="text/javascript">


function start ()
{
	


}





function change(parameter,num)
{
	
	var youtubeDiv=document.getElementById("youtube");
	
	//console.log(parameter);
	
	youtubeDiv.innerHTML="<iframe width=\"430\" height=\"315\" src=\"https://www.youtube.com/embed/"+parameter+ "\" frameborder=\"0\" allowfullscreen></iframe>";

	youtubeDiv.innerHTML+="<p style=\"display:inline\">請點擊Download下載此首吉他譜</p>";
	
	youtubeDiv.innerHTML+="<input  type=\"submit\"   value=\"Download\">";
	//console.log(youtube.innerHTML);
	
	
	var lightbox =document.getElementById("lightbox");
	lightbox.innerHTML="<a href=\"http://www.youtube.com/watch?v=KegiYdo4Blk\" rel=\"prettyPhoto\">";
	
	

	

}



 window.addEventListener( "load", start, false );


</script>
<script type="text/javascript" charset="utf-8">
				api_gallery=['images/fullscreen/1.JPG','images/fullscreen/2.jpg','images/fullscreen/3.JPG'];
				api_titles=['API Call Image 1','API Call Image 2','API Call Image 3'];
				api_descriptions=['Description 1','Description 2','Description 3'];
			</script>

<script type="text/javascript" charset="utf-8">
			$(document).ready(function(){
				$("area[rel^='prettyPhoto']").prettyPhoto();
				
				$(".gallery:first a[rel^='prettyPhoto']").prettyPhoto({animation_speed:'normal',theme:'light_square',slideshow:3000, autoplay_slideshow: true});
				$(".gallery:gt(0) a[rel^='prettyPhoto']").prettyPhoto({animation_speed:'fast',slideshow:10000, hideflash: true});
		
				$("#custom_content a[rel^='prettyPhoto']:first").prettyPhoto({
					custom_markup: '<div id="map_canvas" style="width:260px; height:265px"></div>',
					changepicturecallback: function(){ initialize(); }
				});

				$("#custom_content a[rel^='prettyPhoto']:last").prettyPhoto({
					custom_markup: '<div id="bsap_1259344" class="bsarocks bsap_d49a0984d0f377271ccbf01a33f2b6d6"></div><div id="bsap_1237859" class="bsarocks bsap_d49a0984d0f377271ccbf01a33f2b6d6" style="height:260px"></div><div id="bsap_1251710" class="bsarocks bsap_d49a0984d0f377271ccbf01a33f2b6d6"></div>',
					changepicturecallback: function(){ _bsap.exec(); }
				});
			});
			</script>

</head>
<body >
    <div class="page">
			
			
			<ul class="gallery clearfix">
				
			</ul>
			
			
            <div id="pagetitle">
                 <a href="index.jsp"><div id="title" class="titletext"><span class="fontback"></span></div><a>
            </div>

                   <ul id="linkmenu">
                     <li><a href="chord.jsp">常用和絃與把位</a></li>
                     <li><a href="specIndex.jsp">個人吉他譜</a></li>
                       <li><a href="ScanShare.do">琴譜分享區</a></li>
                       <li><a href="resource.jsp">吉他相關資源</a></li>
                    </ul>
			<div id="contenttext">
			
			<div style="text-align:center; font-size:30px; color:forestgreen;">本區提供許多動聽的吉他演奏曲譜提供下載</br></br></div>
			
			
			<div id="table" class="gallery clearfix">
			<table class="fancytable"  align="left">
			<tbody>
			<tr class="headerrow01">
			<td onclick="change('KegiYdo4Blk','1')"><a href="http://www.youtube.com/watch?v=KegiYdo4Blk" rel="prettyPhoto">曲名 : Blue Bird(ブルーバード) / 作者 : lonlonjp / 格式 : pdf</a>
			
			<form action="download.do" style="margin:0px;display: inline" method="get">
			<input type="text" name="num" value="1" style="display:none;width:1px">
			<input type="submit" class="myButton" value="下載此曲譜"  name="1" >
			</form>
			</td>	
			</tr>
			<tr class="headerrow02">
			<td onclick="change('2lUG9UhZeO4','2')"><a href="http://www.youtube.com/watch?v=2lUG9UhZeO4" rel="prettyPhoto">曲名 : 明日天氣晴 / 作者 : 盧家宏 / 格式 : gp5</a>
			<form action="download.do" style="margin:0px;display: inline" method="get">
			<input type="text" name="num" value="2" style="display:none;width:1px">
			<input type="submit" class="myButton" value="下載此曲譜"  name="1" >
			</form>
			</td>
			</tr>
			<tr class="headerrow03">
			<td onclick="change('hNjM0P1AjWg','3')"><a href="http://www.youtube.com/watch?v=hNjM0P1AjWg" rel="prettyPhoto">曲名 : 缺角地圖 / 作者 : 董運昌 / 格式 : pdf</a>
			<form action="download.do" style="margin:0px;display: inline" method="get">
			<input type="text" name="num" value="3" style="display:none;width:1px">
			<input type="submit" class="myButton" value="下載此曲譜"  name="1" >
			</form>
			</td>
			</tr>
			<tr class="headerrow04">
			<td onclick="change('M6RbfVzFL3c','4')"><a href="http://www.youtube.com/watch?v=M6RbfVzFL3c" rel="prettyPhoto">曲名 : Fight! / 作者 : Kotaro oshio  / 格式 : gp5 </a>
			<form action="download.do" style="margin:0px;display: inline" method="get">
			<input type="text" name="num" value="4" style="display:none;width:1px">
			<input type="submit" class="myButton" value="下載此曲譜"  name="1" >
			</form>
			</td>
			</tr>
			<tr class="headerrow05">
			<td onclick="change('ywk_sSzLVhY','5')"><a href="http://www.youtube.com/watch?v=ywk_sSzLVhY" rel="prettyPhoto">曲名 : 雨中華爾茲 / 作者 : 伍伍慧 / 格式 : gp5</a>
			<form action="download.do" style="margin:0px;display: inline" method="get">
			<input type="text" name="num" value="5" style="display:none;width:1px">
			<input type="submit" class="myButton" value="下載此曲譜"  name="1" >
			</form>
			</td>
			</tr>
			<tr class="headerrow06">
			<td onclick="change('OrZ5ExQ86NA','6')"><a href="http://www.youtube.com/watch?v=OrZ5ExQ86NA" rel="prettyPhoto">曲名 : 奇蹟之山 / 作者 : 岸部真明 / 格式 : gp5</a>
			<form action="download.do" style="margin:0px;display: inline" method="get">
			<input type="text" name="num" value="6" style="display:none;width:1px">
			<input type="submit" class="myButton" value="下載此曲譜"  name="1" >
			</form>
			</td>
			</tr>
			<tr class="headerrow07">
			<td onclick="change('f2ebmV-Z3eM','7')"><a href="http://www.youtube.com/watch?v=f2ebmV-Z3eM" rel="prettyPhoto">曲名 : Twilight / 作者 : Kotaro oshio / 格式 : gtp</a>
			<form action="download.do" style="margin:0px;display: inline" method="get">
			<input type="text" name="num" value="7" style="display:none;width:1px">
			<input type="submit" class="myButton" value="下載此曲譜"  name="1" >
			</form>
			</td>
			</tr>
			<tr class="headerrow08">
			<td onclick="change('FpLVL7X4gOE','8')"><a href="http://www.youtube.com/watch?v=FpLVL7X4gOE" rel="prettyPhoto">曲名 : Wings You Are The Hero/作者:Kotaro oshio/格式:gtp </a>
			<form action="download.do" style="margin:0px;display: inline" method="get">
			<input type="text" name="num" value="8" style="display:none;width:1px">
			<input type="submit" class="myButton" value="下載此曲譜"  name="1" >
			</form>
			</td>
			</tr>
			<tr class="headerrow09">
			<td onclick="change('5RbaL1oSYBU','9')"><a href="http://www.youtube.com/watch?v=5RbaL1oSYBU" rel="prettyPhoto">曲名:Saving All My Love For You /作者:董運昌/格式:gp5 </a>
			<form action="download.do" style="margin:0px;display: inline" method="get">
			<input type="text" name="num" value="9" style="display:none;width:1px">
			<input type="submit" class="myButton" value="下載此曲譜"  name="1" >
			</form>
			</td>
			</tr>
			<tr class="headerrow10">
			<td onclick="change('gFlTp9DudH8','10')"><a href="http://www.youtube.com/watch?v=gFlTp9DudH8" rel="prettyPhoto">曲名 : Tune in Conan / 作者 : 名偵探柯南配樂 / 格式 : gp5 </a>
			<form action="download.do" style="margin:0px;display: inline" method="get">
			<input type="text" name="num" value="10" style="display:none;width:1px">
			<input type="submit" class="myButton" value="下載此曲譜"  name="1" >
			</form>
			</td>
			</tr>
			<tr class="headerrow11">
			<td onclick="change('fTBquU3wE8E','11')"><a href="http://www.youtube.com/watch?v=fTBquU3wE8E" rel="prettyPhoto">曲名 : night drivers / 作者 : franco morone / 格式 : gp4 </a>
			<form action="download.do" style="margin:0px;display: inline" method="get">
			<input type="text" name="num" value="11" style="display:none;width:1px">
			<input type="submit" class="myButton" value="下載此曲譜"  name="1" >
			</form>
			</td>
			</tr>
			<tr class="headerrow12">
			<td onclick="change('fueyqB8upo4','12')"><a href="http://www.youtube.com/watch?v=fueyqB8upo4" rel="prettyPhoto">曲名 : Hanabi(Bleach Ending 7) / 作者 : lonlonjp / 格式 : pdf</a>
			<form action="download.do" style="margin:0px;display: inline" method="get">
			<input type="text" name="num" value="12" style="display:none;width:1px">
			<input type="submit" class="myButton" value="下載此曲譜"  name="1" >
			</form>
			</td>
			</tr>
			<tr class="headerrow13">
			<td onclick="change('7VUryIWzDeQ','13')"><a href="http://www.youtube.com/watch?v=7VUryIWzDeQ" rel="prettyPhoto">曲名 : 丸の内サディスティック / 作者 : 武士桑 / 格式 : gp5</a>
			<form action="download.do" style="margin:0px;display: inline" method="get">
			<input type="text" name="num" value="13" style="display:none;width:1px">
			<input type="submit" class="myButton" value="下載此曲譜"  name="1" >
			</form>
			</td>
			</tr>
			<tr class="headerrow14">
			<td onclick="change('R_5DEtTu-vI','14')"><a href="http://www.youtube.com/watch?v=R_5DEtTu-vI" rel="prettyPhoto">曲名 : 相思堤的偶遇 / 作者 : 黃家偉 / 格式 : gp5 </a>
			<form action="download.do" style="margin:0px;display: inline" method="get">
			<input type="text" name="num" value="14" style="display:none;width:1px">
			<input type="submit" class="myButton" value="下載此曲譜"  name="1" >
			</form>
			</td>
			</tr>
			<tr class="headerrow15">
			<td onclick="change('hNjM0P1AjWg','15')"><a href="http://www.youtube.com/watch?v=hNjM0P1AjWg" rel="prettyPhoto">曲名 : 夢中的婚禮 / 作者 : 羅翔 / 格式 : pdf</a>
			<form action="download.do" style="margin:0px;display: inline" method="get">
			<input type="text" name="num" value="15" style="display:none;width:1px">
			<input type="submit" class="myButton" value="下載此曲譜"  name="1" >
			</form>
			</td>
			</tr>
			
			</tbody>
			</table>
			<div id = "lightbox">
			
			</div>
			<div id="download">
			
			
			</div>
			
	
			
    
    </div>

</body>
</html>

