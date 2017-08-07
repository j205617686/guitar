<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>心琴點播</title>
<link rel="stylesheet" type="text/css" href="css/style.css" media="screen">
<link rel="shortcut icon" href="./images/favicon.ico" />

<script type="text/javascript">



var currentNode;

var id=0;



var list='${filelist}';




var listnum=${filelistnum};

console.log(list);
console.log(listnum);

var list1=new Array();

var newlist =list.substring(1,list.length-1);


console.log(newlist);

list1=newlist.split(", ");

/*

var listDesc1='${desclist}';
var listDesc=new Array();
var newlistDesc =listDesc.substring(1,list.length-1);
listDesc=newlistDesc.split(", ");

*/

function start()
{

	
	currentNode=document.getElementById("tbody");
	
	
	for(var i=0;i<listnum;++i)
	{
		addPost(list1[i],"none");
	
	}
	
	
	
}


function addPost(name,desc)
{
	
	//var name=document.getElementById("filename").value;
	//var desc=document.getElementById("description").value;
	
	
	console.log(name);
	console.log(desc);
	
	
	var newtext=createNewNode1(name,desc);
		
	
	currentNode.appendChild(newtext);
}




function createNewNode1(name,desc)
{
	
	var newNode1=document.createElement("tr");
	var newNode2=document.createElement("td");
	var newNode3=document.createElement("a");
	
	
	newNode1.setAttribute("class","headerrow1")
	
	var temp=name.split(".");
	console.log(temp);
	var nameWithoutExtension=temp[0];
	
	
	newNode3.setAttribute("href","https://www.youtube.com/results?search_query="+nameWithoutExtension+" guitar");
	newNode3.setAttribute("target","_blank");
	text="檔案名稱 : " + name + "      " ;
	
	var node = document.createTextNode(text);
	newNode3.appendChild(node);
	
	
	
	
	var newNode4=document.createElement("form");
	newNode4.setAttribute("action","downloadShare.do");
	newNode4.setAttribute("style","margin:0px;display: inline");
	newNode4.setAttribute("method","get");
	
	var newNode5=document.createElement("input");
	var newNode6=document.createElement("input");
	
	newNode5.setAttribute("type","text");
	newNode5.setAttribute("name","which");
	newNode5.setAttribute("value",name);
	newNode5.setAttribute("style","display:none;width:1px");

	
	newNode6.setAttribute("type","submit");
	newNode6.setAttribute("class","myButton");
	newNode6.setAttribute("value","下載此曲譜");
	newNode6.setAttribute("name","1");
	
	
	newNode1.appendChild(newNode2);
	newNode2.appendChild(newNode3);

	newNode3.appendChild(newNode4);
	
	newNode4.appendChild(newNode5);
	newNode4.appendChild(newNode6);
	
	
	return(newNode1)
}
window.addEventListener("load",start,false)





</script>

</head>
<body >



    <div class="page">

	
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
			
			<div style="text-align:center; font-size:30px; color:forestgreen;">本區提供琴友們上傳吉他譜以供下載</br>
			點擊檔名可在youtube搜學相關吉他影片</br>
			點擊下載此曲譜即可下載</br></br></div>
			
			
			<div id="table">
			<table  class="fancytable"  align="left">
			<tbody id="tbody">
            <tr class="headerrow1">
			<td onclick="change('KegiYdo4Blk','1')"><a href="#">(範例)檔案名稱:愛我別走.pdf</a></td>
			
			</tr>
				
			</tbody>
			</table>
			
			
			</div>
			<div id="uploadDiv" align="right">
			<form  action="upload.do" method="post" enctype="multipart/form-data" >
           <!--   檔案名稱: <input  type="text"  style="width:250px;" name="filename" id="filename" value="" placeholder="請輸入曲名"><br>
              檔案敘述: <input   type="text"  style="width:250px;" name="description" id="description" value="暫無"><br> --> 
              請選擇文件: <input  type="file"   name="fileUpload"  ><br>
              <input  type="submit"   value="上傳"><input   type="reset"   value="取消">
            </form>
			<!--   <input  type="submit"   value="add list" id="addButton">-->
		
		
		
			
		
			<div>
			
			
			
			</div>


    
    
    </div>
    
                         
    
    
    
    
    
    
    
    


</body>
</html>
