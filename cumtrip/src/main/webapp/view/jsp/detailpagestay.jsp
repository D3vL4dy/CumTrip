<%@page import="cumtrip.vo.MemberVO"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.inicis.std.util.SignatureUtil"%>
<%@page import="java.util.*"%>

    
<!DOCTYPE html>
<html>
<head>
<%
	
	 String url = request.getRequestURI();
	 String query = request.getQueryString();
	 	session.setAttribute("url", url+"?"+query);
	 
	 %>
<meta charset="UTF-8">
<title>Lodding..</title>
<link rel="shortcut icon" type="image/x-icon" href="../images/titleLogo.png">


  
  
   <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
 
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

 




 <link rel="stylesheet" href="/cumtrip/view/css/fakeLoader.css"> 
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="<%= request.getContextPath() %>/view/js/main.js"></script> 
<script src="<%= request.getContextPath() %>/view/admin/js/typeahead.bundle.js"></script>
      <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=uhaf2smrg5"></script>

    <script type='text/javascript' src='//code.jquery.com/jquery-1.8.3.js'></script>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/css/bootstrap-datepicker3.min.css">
    <script type='text/javascript' src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/js/bootstrap-datepicker.min.js"></script>
  

  <link rel="stylesheet" href="<%= request.getContextPath() %>/view/css/main.css">
 <link rel="stylesheet" href="<%= request.getContextPath() %>/view/css/font.css">
  
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
<script  src="../js/typeahead.bundle.js"></script>
  
  	<%
  	String stayno = request.getParameter("stayno");
  	MemberVO vo = (MemberVO)session.getAttribute("loginMember");	
  	if(vo !=null){
  	String id = vo.getMem_email();}
  	%>

    <script type='text/javascript'>

    $(function(){

        $('.input-group.date').datepicker({

            calendarWeeks: false,

            todayHighlight: true,

            autoclose: true,

            format: "yyyy/mm/dd",

            language: "kr"

        });

    });

$(function(){
	$.fn.datepicker.dates['kr'] = {
		days: ["일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일", "일요일"],
		daysShort: ["일", "월", "화", "수", "목", "금", "토", "일"],
		daysMin: ["일", "월", "화", "수", "목", "금", "토", "일"],
		months: ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
		monthsShort: ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"]
	};

})
 
 
</script> 
 
    
<style>
.hgg1{
border-bottom: 1px solid #666;
    padding-bottom: 15px;
    margin-bottom: 0;
}

.etrbg1{
    display: inline-block;
    margin-left: 15px;
}
.qwee1{
margin-bottom: 5px;
}

.card{
border:0;
}

.qwe_to1{
display: inline-block;
    width: 100%;
    padding: 10px;
    border: 1px solid #666;
    position: relative;
}

.profile{
	float : left;
	width : 50px;
	height: 50px;
	border-radius: 50%;
}

.csdd11{
    background: #fff;
    padding: 40px;
    margin-bottom: 40px;
    color: #ff9614 !important;
    border-top: 2px solid #000;
    letter-spacing: -2px;
    border-bottom: 2px solid #000;
}
  
.card-body{
	width : 300px;
	height: 400px;
	 float : left;
}

#web{
	text-decoration: underline;

}
.accordion-button{
    border: 1px solid;
    margin-top: 20px;
}

#demo{
    width: 500px;
    height: 400px;
    float: right;
    position: absolute;
    right: 10px;
}

.carousel-inner{

}

.content{
    margin-bottom: 20px;
}

.clear{
	clear :both;
}
#localintro, #review {
}
#restaurant, #space, #reviewscore{
    width: 370px;
    float: left;
    margin-right: 5px;
}
#map{
    width: 430px;
    height: 471px;
    float: right;
    right: 0;
    border: 1px solid #666;
    margin-top: 60px;
}
.aroundimg{
	width: 150px;
	height: 150px;
	float : left;
	
}
.around{
    height: 150px;
    margin: 10px;
}
	
}
#reviewlist{
	float :right;
	width: 550px;

}
  .star {
    position: relative;
    font-size: 2rem;
    color: #ddd;
  }
  
  .star input {
    width: 100%;
    height: 100%;
    position: absolute;
    left: 0;
    opacity: 0;
    cursor: pointer;
  }
  
  .star #substar {
    width: 0;
    position: absolute; 
    left: 0;
    color: red;
    overflow: hidden;
    pointer-events: none;
  }
  .comment{
  	border : 0.1px solid whitegray;
  	text-align: center
  
  }
    .carousel-inner img {
    width: 100%;
    height:400px;
  }

  .reivewphoto{
  	width: 300px;
  	height: 300px;
  }
  #book{
  
  }
  label{
  	margin : 10px;
  	font-size : 15px;
  }
  .roomtable{
    float: right;
    width: 70%;
    height: 250px;
    border-top: 2px solid #000;
    padding-top: 20px;
    border-bottom: 2px solid #000;
  
  }
  .roompay{
  vertical-align: middle;
  }
  
  .roominfo2{
  float: left;
  width: 28%; 
  }
  .option{
  	text-align: left;
  
  }
  .roompay{
  	text-align: right;
  }
  .firsttr{
     width: 150px;
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
    background: #fff1d2;
  }
  .roomphoto{
  	width: 200px;
  	height: 200px;
  
  }
  .collapse {
    display: none;
    visibility: visible;
  }
  #payinfo{
  	width: 400px;
  	height: 500px;
  
  }
  
 .btn1, .falsebtn1 {
	border: none;
	margin: auto 17px;
	display: inline-block;
}

.btn2, .falsebtn2 {
	border: none;
}
.date{
	display: inline-block;
}
.re{
	margin: 60px;
}

.modify, .falsemodify{
	margin-left: 260px;
	display: inline-block;
}
.delete, .falsedelete{
	margin-left: 10px;
}
.id {
	display: inline-block;
}
.collapse {
    display: block;
    visibility: visible;
}


.label1{
	background-color: #288C28;
	border-color: white;
	border-radius: 10px;
	font-family: 'twayair', sans-serif;
	color: white;
	width: 120px;
	text-align: center;
    line-height: 35px;
}

#aa{
width: 1200px;
    padding-top: 50px;
    margin: auto;
    padding-bottom: 100px;

}

</style>  
  


<%
String tle = "";
%>
  <script type="text/javascript">

  
  	$(function(){
  		stayno = "<%=stayno%>";
  		$.ajax({
  			url : "/cumtrip/detailstay.do",
  			type :'post',
  			async:false,
  			data : {"stayno" : stayno},
  			success : function(res){
  				str = '<p><h3 class="f3">'+res.stay_name +'</h3></p>';
  				tle=res.stay_name;
  				$("#name").append(str);
  				$("#intro").append(res.stay_ex);
  				location2 = res.stay_location;
  				$("#addr").text(location2);
  				midx = res.stay_x;
  				midy = res.stay_y;
  				
  				$('.inputstayno').append('<input type="hidden" value="'+stayno+'" name="stayno">');
  				
  				
  			    first = location2.indexOf(" ");
  				temp = location2.substr(first+1);
  				second = temp.indexOf(" ");
  				si = location2.substr(0, first);
  				gun = location2.substr(first+1,second);
  			},
  			
  			error: function(xhr){
  			},
  			dataType: 'json'
  		})
  		
  		$.ajax({
  			
  			url: "/cumtrip/selectonestayphoto.do",
  			type: "post",
  			data:{"stayno" : stayno },
  			success : function(res){
  				str = "";
  				$.each(res, function(i, v){
  					
  				if(i==0){
  				str += '<div class="carousel-item active">';
  			    str += '<img src="/cumtrip/SPhoto.do?filename='+v+'" alt="'+v+'" class="slidephoto" >';
  			    str += '</div>';
  				}else{
  			    
  			    str += '<div class="carousel-item">';
  			    str += '<img src="/cumtrip/SPhoto.do?filename='+v+'" alt="'+v+'" class="slidephoto" >';
  			    str += '</div>';}
  				})
  				$('.carousel-inner').html(str);
  			},
  			error: function(xhr){
  				alert(xhr.status)
  			},
  			dataType : 'json'
  		})
  		
  			$.ajax({
  		
  			url: "/cumtrip/aroundspace.do",
  			type: "get",
  			data:{"si" : si,
  				 "gun" : gun},
  			success : function(res){
  				str = "";
  				$.each(res, function(i, v){
  				str += '<div class="around">';
  			    str += '<a href="detailpage.jsp?stayno='+v.mid_no+'"><img src="/cumtrip/TPhoto.do?filename='+v.photo_path+'" alt="'+v.photo_path+'" class="aroundimg"></a>';
  			    str += '<div class="etrbg1"><p class="f4 qwee1" >'+v.mid_name+'</p>';
  			    str += '<p>'+v.main_cate+'</p></div>';
  			    str += '</div>';
  				})
  				$('#space').append(str);
  			}
  		})
  			$.ajax({
  			
  			url: "/cumtrip/aroundrestaurant.do",
  			type: "get",
  			async:false,
  			data:{"si" : si,
 				 "gun" : gun},
  			success : function(res){
  				str = "";
  				$.each(res, function(i, v){
  				str += '<div class="around">';
  			    str += '<a href="detailpage.jsp?stayno='+v.mid_no+'"><img src="/cumtrip/FPhoto.do?filename='+v.photo_path+'" alt="'+v.photo_path+'" class="aroundimg"></a>';
  			    str += '<div class="etrbg1"><p class="f4 qwee1">'+v.mid_name+'</p>  ';
  			    str += '<p>'+v.main_cate+'</p></div>';
  			    str += '</div>';
  				})
  				$('#restaurant').append(str);
  			},
  			error : function(xhr){
  				alert(xhr.status)
  			},
  			dataType:'json'
  		})
  		
  			$.ajax({
  			url: "/cumtrip/selectallstayreview.do",
  			type : "post",
  			data: {
  				"stayno" : stayno
  			},
  			success: function(res){
  				 
  				$.each(res, function(i,v){
  	  				str  = '<div class="detailreview">';
  	  			   	str += '<div>';
  	  			   	str += '<img src="/cumtrip/Mphoto.do?filename='+v.mem_photo+'" class="profile"><span class="id">'+v.mem_email+'</span>';
  	  			    str += '<div id="d2">';
  	  			    <% 
  						//JSP문서에서 세션은 'session'이라는 이름으로 이미 생성되어 있다.
  						MemberVO loginMemVo = (MemberVO)session.getAttribute("loginMember");
  	  			    	if(loginMemVo !=null){
  	  			    %>
  	  			  	 if("<%=loginMemVo.getMem_email()%>" == v.mem_email ){
  						    str += '<input type="button" class="delete" idx="' + v.sre_no + '" value="삭제" style="width: 50px; height: 30px; float: right"></div>';
  			  			  	str += '<input type="button" class="modify" idx="' + v.sre_no + '" value="수정"  style="width: 50px; height: 30px; float: right">';
  	  			  			}
  	  			  <% }%>
  			   	str += '</div>';	
  			   	str += '<div class="clear"></div>';
  			   	str += '<span class="star">★★★★★<span style="width:'+v.sre_point*15 +'px;  position: absolute;  left: 0;';  
  			   	str += 'pointer-events: none;  color: red;    overflow: hidden;">★★★★★</span>';
  	 			str += '</span>';
  			   	str += '<div class="contentbox f4">';
  			   	str +=	'<h5 class="f4">'+v.sre_title+'</h5>';
  			   	str +=	'<p class="date">'+v.sre_date+'</p>';
  			   	
  	 			<%
	 				if(loginMemVo == null){ // 로그인 관련 세션이 없을 때
	 			%>
	 			str += '<button type="button" class="falsebtn1" data-toggle="modal" data-target="#loginModal"><img  src="../images/좋아요.png" style="width: 25px; height: 25px;"></button>';
	 			str += '<button type="button" class="falsebtn2" data-toggle="modal" data-target="#loginModal"><img  src="../images/신고.png" style="width: 27px; height: 26px;"></button>';
			    <%
			  		} else { //로그인관련 세션이 있을때(로그인이 되었을때)
			  	%>  	 			
			  	str += '<button type="button" class="btn1"><input type="hidden" value="'+v.sre_no+'" class="sreno"><img class="like1" src="../images/좋아요.png" style="width: 25px; height: 25px;"></button>';
			  	str += '<button type="button" class="btn2"><input type="hidden" value="'+v.sre_no+'" class="sreno"><img class="hate1" src="../images/신고.png" style="width: 27px; height: 26px;"></button>';
			  	<%	
			  		}
			    %>

  			   	str +=	'<div class="content">'+v.sre_content+'</div>';
  			   	if(typeof v.sre_imgpath != 'undefined'){
  			   	str +=  '<img src="/cumtrip/reviewphoto.do?filename='+v.sre_imgpath+'" class="reivewphoto">';}
  			   	str +=	'<div class="accordion accordion-flush">';
  			   	str +=  '<div class="accordion-item">';
  			    str += '<h2 class="accordion-header" id="flush-headingOne">';
  			    str +=  '<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse'+i+'" aria-expanded="false" aria-controls="flush-collapse'+i+'">';
  			    str +=   '댓글창<input type="hidden" value="'+v.sre_no+'" class="sreno"></button>';
  			    str += '</h2> ';
  			    str +='<div id="flush-collapse'+i+'" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">';
  			    str += '<div class="accordion-body"> </div>';
  			    str += '</div>';
  			    str += '</div>';
  			    str += '</div></div></div><hr>';
  			   	$('#reviewlist').append(str);
  			})
  			},
  			error: function(xhr){
  			},
  			dataType: 'json'
  			})
  					$(document).on('click','.accordion-button', function(){
  			 sreno = $(this).find('.sreno').val();
  			
  		   commentplace	 = $(this).parents('.accordion-item').find('.accordion-body')
  		   
  				$.ajax({
  					url : "/cumtrip/selectstaycomment.do",
  					type : 'get',
  					data : {"sreno" : sreno},
  					success : function(res){
  						
  						str = '<input type="text" name="reviewcontent" id="reviewcontent" placeholder="댓글추가" class="form-control"><br>';
  						str += '<input type="button" value="댓글달기" class="btn-success commentsubmit" style="float:right; background: #288C28 !important; line-height: 20px;" ><div class="clear"></div><br><hr>';
  						
  						if(res == ""){
  							str +="<br><div class='f4' id='nocomment'>등록된 댓글이 없습니다.</div>";
  							
  						}else{
  					
  						$.each(res, function(i,v){
  							str += '<div calss="commentdiv">';
  	  						str += '<p><span class ="cwriter">작성자: '+v.mem_email+'</span> <span style="float: right" class="cdate">작성일 : '+v.sco_date+'</span></p>';
  	  						str += '<br><p class="cinput">작성글 : <span  class ="ccomment">'+v.sco_content+'</span>';
  	  						<% if(loginMemVo != null){ %>
  	  					 if('<%=loginMemVo.getMem_email()%>' == v.mem_email ) {
  	  						str +=  '<input type ="hidden" class="scono" value="'+v.sco_no+'">';
  	  						str +=  '<input type ="button" class="commentmod" value="수정" style="float: right; width: 40px; line-height: 20px;" >';
  	  						str +=  '<input type ="button" class="commentdel" value="삭제" style="float: right; width: 40px; line-height: 20px;" >';
  	  					 }
  	  						<%}%>  	  						
  	  						str += '</p>';
  	  						str += '</div><hr>';
  						})
  					}
  						
  						$(commentplace).html(str);
  					},
  					
  					error: function(xhr){
  						alert(xhr.status);
  					},
  					dataType: 'json'
  				})
  			})
  			
  			
  			$(document).on('click', '.commentdel', function(){
  			result	= confirm("정말로 삭제하시겠습니까? ");
  			if(result == true){
  				scono = $(this).prev().prev().val();
  				 $(this).parent().parent().remove();
 				
  				$.ajax({
  					url: '/cumtrip/commentsdel.do',
  					type: 'get',
  					data : {"scono" : scono },
  					success: function(res){
  					
  					},
  					error: function(xhr){
  						
  					},
  					dataType: 'json'
  				})}
  			})
  			
  			$(document).on('click', '.commentmod', function(){
  				scono = $(this).prev().val();
  				ccomment = $(this).parent().parent().find('.ccomment').text();
  			
  				str = '수정글 : <input type="text" name="reviewcontent" class="reviewcontent" placeholder="댓글추가" class="form-control"><br>';
  				str +=  '<input type ="hidden" class="scono" value="'+scono+'">';
  				str += ' <input type="button" value="저장" style="float: right" class="rsave">';
  				str += ' <input type="button" value="취소" style="float: right" class="rcancle">';
  				str += '<div class="clear"></div><br>';
  				$(this).parent().parent().find('.cinput').html(str);
  			
  			})
  			
  			$(document).on('click', '.rsave',function(){
  			   ccomment = $(this).parent().find('.reviewcontent').val();
  				cdate	= $(this).parent().parent().find('.cdate');	
  					cinput =	$(this).parent().parent().find('.cinput');
					var today = new Date();

	  				var year = today.getFullYear();
	  				var month = ('0' + (today.getMonth() + 1)).slice(-2);
	  				var day = ('0' + today.getDate()).slice(-2);

	  				var dateString = year + '-' + month  + '-' + day;
	  				
  					$(cdate).text("작성일 : "+dateString);
				   
					
  				$.ajax({
  					url: '/cumtrip/commentsmod.do',
  					type: 'get',
  					data : {"scono" : scono,
  							"ccomment": ccomment
  								},
  					success : function(res){
  						str = '작성글 : <span  class ="ccomment">'+ccomment+'</span>';
  						str +=  '<input type ="hidden" class="scono" value="'+scono+'">';
	  					str +=  '<input type ="button" class="commentmod" value="수정" style="float: right; width: 40px; line-height: 20px;" >';
	  					str +=  '<input type ="button" class="commentdel" value="삭제" style="float: right; width: 40px; line-height: 20px;" >';
	  					$(cinput).html(str);
  					}, 
  					error : function(xhr){
  						
  					},
  					dataType: 'json'
  					
  				})
  				
  				
  				
  			})
  			
  			$(document).on('click','.rcancle',function(){
  				
  				str = '작성글 : <span  class ="ccomment">'+ccomment+'</span>';
  				str +=  '<input type ="hidden" class="com_no" value="'+scono+'">';
				str +=  '<input type ="button" class="commentmod" value="수정" style="float: right; width: 40px; line-height: 20px;" >';
				str +=  '<input type ="button" class="commentdel" value="삭제" style="float: right; width: 40px; line-height: 20px;" >';
				$(this).parent().parent().find('.cinput').html(str);
  			})
  				
  			
  			$(document).on('click','.commentsubmit',function(){
  				var today = new Date();

  				var year = today.getFullYear();
  				var month = ('0' + (today.getMonth() + 1)).slice(-2);
  				var day = ('0' + today.getDate()).slice(-2);

  				var dateString = year + '-' + month  + '-' + day;
  				
  				content = $(this).prev().prev().val();
  				scono =  $(this).parents('.accordion-item').find('.scono').val();
				$('#reviewcontent').val('');
				$(this).parents('.accordion-body').find('#nocomment').remove();
				
  				$.ajax({
  					url: '/cumtrip/insertstaycomment.do',
  					type : 'post',
  					data : {"content" : content,
  							"sreno" : sreno},
  					success: function(res){
  						str = '<div>';
  						
  						str += '<span>작성자: <% if(loginMemVo !=null){ %><%=loginMemVo.getMem_email() %>	 <% }%><span><p style="text-align: right">작성일 :'+dateString+' </p>';
  						str += '<p>작성글 : '+content+'';
  	  					str +=  '<input type ="button" class="commentmod" value="수정" style="float: right; width: 40px; line-height: 20px;" >';
  	  					str +=  '<input type ="button" class="commentdel" value="삭제" style="float: right; width: 40px; line-height: 20px;" >';
  						str +='<p>';
  						str += '</div><hr>';
  						$(commentplace).append(str);
  						
  					},
  					error: function(xhr){
  						
  					},
  					dataType : 'json'
  				})
  				
  				
  			} )
  			

  			$(document).on('click','.commentsubmit',function(){
  				var today = new Date();

  				var year = today.getFullYear();
  				var month = ('0' + (today.getMonth() + 1)).slice(-2);
  				var day = ('0' + today.getDate()).slice(-2);

  				var dateString = year + '-' + month  + '-' + day;
  				
  				content = $(this).prev().prev().val();
  				scono =  $(this).parents('.accordion-item').find('.scono').val();
				$('#reviewcontent').val('');
				$(this).parents('.accordion-body').find('#nocomment').remove();
				
  				$.ajax({
  					url: '/cumtrip/insertstaycomment.do',
  					type : 'post',
  					data : {"content" : content,
  							"sreno" : sreno},
  					success: function(res){
  						str = '<div>';
  						
  						str += '<span>작성자: <% if(loginMemVo !=null){ %><%=loginMemVo.getMem_email() %>	 <% }%><span><p style="text-align: right">작성일 :'+dateString+' </p>';
  						str += '<p>작성글 : '+content+'';
  	  					str +=  '<input type ="button" class="commentmod" value="수정" style="float: right; width: 40px; line-height: 20px;" >';
  	  					str +=  '<input type ="button" class="commentdel" value="삭제" style="float: right; width: 40px; line-height: 20px;" >';
  						str +='<p>';
  						str += '</div><hr>';
  						$(commentplace).append(str);
  						
  					},
  					error: function(xhr){
  						
  					},
  					dataType : 'json'
  				})
  				
  				
  			} )
  			
  			
  			
	 		$(document).on('click','.like1', function(){
	 			mreno = $(this).prev().val();
				$(this).attr('src', "../images/좋아요2.jpg" );
				
				$.ajax({
					url : "/cumtrip/InsertSrlikes.do",
					type : 'get',
					data : {"mreno" : mreno,
							"midno" : midno
					},
					success : function(res){
					},
					error : function(xhr){
					},
					dataType: 'json'
				})
			})
			
			$(document).on('click', '.hate1', function(){
				$(this).attr('src',"../images/신고2.jpg" );
			})
  			
  			
  			
  			$.ajax({
  				url: "/cumtrip/selectallroom.do",
  				tpye: 'get',
  				data : {"stayno": stayno },
  				success : function(res){
  					str = "";
  					$.each(res, function(i, v){
  					
  					str += '<div><div class="roominfo2" >';
  			    	str += '<img alt="'+v.spho_path+'" src="/cumtrip/SPhoto.do?filename='+v.spho_path+'" class="roomphoto">';
  			    	str += '<P class="roomgrade f4">'+v.room_grade+'</P>';
  			    	str += '</div>';
  			     	str += '<table border ="1" class="roomtable">';
  			    	str += '<tr class="firsttr f4">';
  			    	str += 	'<td class="f4">옵션</td>';
  			    	str += 	'<td></td>';
  			    	str += 	'<td class="roompay f4">오늘의 가격: 세금 및 수수료 불포함</td>';
  			    	str += '</tr>';
  			    	str += '<tr>';
  			    	str += 	'<td class="option f4">무료 취소</td>';
  			    	str += 	'<td><input type ="hidden" class="romnum f4" value="'+v.room_no+'"></td>';
  			    	str += 	'<td></td>';
  			    	str += '</tr>';
  			    	str += '<tr>';
  			    	str += 	'<td class="option f4">(체크인 24시간 전까지)</td>';
  			    	str += '<td></td>';
  			    	str += 	'<td class="roompay f4"><span class="roomprice">'+v.room_price+'</span>원</td>';
  			    	str += '</tr>';
  			    	str += '<tr>';
  			    	str += 	'<td class="option f4">현장 결제 가능</td>';
  			    	str += 	'<td></td>';
  			    	str += 	'<td></td>';
  			    	str += '</tr>';
  			    	str += '<tr>';
  			    	str += 	'<td class="option f4">아침 식사 추가 가능(현장에서 결제)</td>';
  			    	str += 	'<td></td>';
  			    	str += 	'<td class="roompay"><input type="button" value="예약" class="booksubmit" data-toggle="modal" data-target="#payModal"></td>';
  			    	str += '</tr>  </table></div><div class="clear"></div><br><hr><br>';
  			  	
  					})
  					$('.roominfo').html(str);
  			
  				},
  				error : function(xhr){
  					alert(xhr.status)
  				},
  				dataType: 'json'
  			})
  			$(document).on('click','#adapt',function(){
  				
  				checkindate = $('#checkindate').val();
				checkoutdate = $('#checkoutdate').val();
				resultdate = new Date(checkoutdate)- new Date(checkindate);
				resultdate = resultdate/(1000*60*60*24);
				
			 var cost = document.getElementsByClassName('roomprice');
			 
			 for(let i=0; i<cost.length; i++){
			   var totalprice = 	$('.roomprice').eq(i).text()*resultdate;
			       $('.roomprice').eq(i).text(totalprice);
			 }
  			})
  			
  			
  			
  			
			$(document).on('click', '.booksubmit',function(){
			  psrc =	$(this).parents('.roomtable').prev().find('.roomphoto').attr('src');
			  pprice = $(this).parents('.roomtable').find('.roomprice').text();	  
			  promnum = $(this).parents('.roomtable').find('.romnum').val();	  
			  checkindate
			  checkoutdate
			  resultdate
			  pgrade = $(this).parents('.roomtable').prev().find('.roomgrade').text();
			  $('#checkindate').text(checkindate);
			  $('#checkoutdate').text(checkoutdate);
			  $('#period').text("총 숙박 기간: " +resultdate+"박");
			  $('.choiceroom').text(pgrade);
			  $('#roomphoto').attr('src', psrc);
			  $('#roompay').text(pprice);
			  $('#tex').text(pprice/10);
			  totalpay = parseInt(pprice)+parseInt(pprice/10 );
			  $('#totalpay').text(totalpay);	
			  $('#totalprice').attr('value', totalpay);
			  $('#roomname').attr('value', pgrade);
			  $('#proomnum').attr('value',promnum);
			  $('#pprice').attr('value',totalpay);
			  $('#pcheckindata').attr('value',checkindate);
			  $('#pcheckoutdata').attr('value',checkoutdate);
			  personnum =  $('#personnum').val();
			  $('#ppersonnum').attr('value',parseInt(personnum));
			  
			})
	
  		var HOME_PATH = window.HOME_PATH || '.';
  		var cityhall = new naver.maps.LatLng(midx, midy),
  		    map = new naver.maps.Map('map', {
  		        center: cityhall,
  		        zoom: 18
  		    }),
  		    marker = new naver.maps.Marker({
  		        map: map,
  		        position: cityhall
  		    });

  
  		var infowindow = new naver.maps.InfoWindow({
  		    maxWidth: 140,
  		    backgroundColor: "#eee",
  		    borderColor: "#2db400",
  		    borderWidth: 5,
  		    anchorSize: new naver.maps.Size(30, 30),
  		    anchorSkew: true,
  		    anchorColor: "#eee",
  		    pixelOffset: new naver.maps.Point(20, -20)
  		});

  		naver.maps.Event.addListener(marker, "click", function(e) {
  		    if (infowindow.getMap()) {
  		        infowindow.close();
  		    } else {
  		        infowindow.open(map, marker);
  		    }
  		});
  		 drawStar = (target) => {
 		    $('.star span').css({ 'width': target.value*15 });
 		    var star = '<p>별점 '+ target.value + '점</p>'; 
 		    $('#starlabel').html(star);
 		  }
  		 
  		 
  		 
		$('#inputsubmit').on('click', function(){
			$('#input').submit();
			
		})
		$('#inputsubmit2').on('click',function(){
			$('#inputphoto').submit();
			
		})
		$('#payclick').on('click', function(){
		
			$('#formpay').submit();
		})
		
		
		
		$('#upinputsubmit').on('click',function(){
			$('#upinput').submit();
		})
		
		$('#deinputsubmit').on('click',function(){
			$('#deinput').submit();
		})
		
		// 수정버튼 클릭 이벤트 
		$(document).on('click', '.modify', function(){
			
			//alert($(this).attr('idx'));
			
			$('#modifyModal .sreno').val($(this).attr('idx'));
			$('#modifyModal').modal('show');
			$('.sreno').attr('value', sreno);
			
		})
					
		
		// 삭제버튼 클릭 이벤트 
		$(document).on('click', '.delete', function(){
			
			//alert($(this).attr('idx'));
			
			$('#deleteModal .sreno').val($(this).attr('idx'));
			$('#deleteModal').modal('show');
			$('.sreno').attr('value', sreno);
		})
		
  		$('.close').on('click',function(){
  			$(this).parents('.modal').modal('hide');
  		})
 
  	})
  	
  </script>
  
 <!-- 로딩중 -->
<link rel="stylesheet" href="<%= request.getContextPath() %>/view/css/fakeLoader.css">
<script src="<%= request.getContextPath() %>/view/js/fakeLoader.js"></script> 
</head>
<body>

	<header id="header"><!-- 상단 헤더 불러오기 -->
		<article style="margin: 5px 18%;">
			<div class="box" style="display:table; width: 100%;">
				<div class="backgroundimg">
					<span class="icon"></span>
				
					
					<input type="search" autocomplete="off" spellcheck="false"  class="mainsch typeahead tt-query" placeholder="어디로 가시나요?" >
				</div>
			</div>
		</article>
	</header>
<div id="aa">
	<div id ="name"></div>
  	<div class="qwe_to1">
		<div class="card-body Light card " id="intro" style="width: 600px;">
			<h3 class="f1">소개</h3><br>
		</div>
     
		<div id="demo" class="carousel slide" data-ride="carousel">
  
			<!-- The slideshow -->
			<div class="carousel-inner" style ="width:500px; height: 400px;">
		 	</div>
 
			<!-- Left and right controls -->
			<a class="carousel-control-prev" href="#demo" data-slide="prev">
				<span class="carousel-control-prev-icon"></span>
			</a>
			<a class="carousel-control-next" href="#demo" data-slide="next">
		<span class="carousel-control-next-icon"></span>
			</a>
		</div>
	</div>
	
	<div class="clear"></div><br><br>
	<div id="localintro">
		<h3 class="f1">지역 설명</h3>
		<p id="addr" class="f4"></p><br>
		<h3 class="f1">베스트 주변</h3>
		<div id="restaurant">
			<h5 class="f4 hgg1">음식점</h5><br>
		</div>
		<div id="space">
			<h5 class="f4 hgg1">관광명소</h5><br>
		</div>
		<div id="map" >
		</div>
	</div>
	<div class="clear"></div>
	<hr><br><br>
	<div id = "book" >
		<div class="container" style="text-align: center">
	
			<label style="float : left;" class="f4">체크인</label> 
			<div class="input-group date" style="width:200px; float : left;">
				<input type="date" class="form-control" id="checkindate" style=" width: 200px">
					<span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
	        </div>
	        
	        <label style="float : left;" class="f4">체크아웃</label>  
	        <div class="input-group date" style="width:200px; float : left;">
				<input type="date" class="form-control" id="checkoutdate"  style=" width: 200px">
					<span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
	        </div>
			<label style="float : left;" class="f4">인원수</label>
			<div div class="input-group" style="width:200px; float : left;">
				<input type="number" class="form-control" value="1" min="0" max="10" step="1" id="personnum" >
			</div>
			<div div class="input-group" style="width:200px; float : left; margin-left: 20px;">
				<input type="button" class="form-control" value="적용" id="adapt">
			</div>
		</div>
	    
	    <div style="text-align: center;">
	    	<h3 class="f4 csdd11">지금 예약하고 계획 변경 시 무료로 취소하세요.</h3>
	    </div>
	    
	    <div class="roominfo" ></div>
	</div>
	
	<div class="clear"></div>
	<div id="review">
		<h3 class="f1">리뷰 작성</h3>
		<%
			MemberVO loginMemVo2 = (MemberVO)session.getAttribute("loginMember");
	 	 	if(loginMemVo2 !=null){ // 로그인 
	 	 %>
			<input type = "button" value ="리뷰작성하기" class= "btn-outline-secondary" style="margin: 5px; line-height: 30px;" data-toggle="modal" data-target="#myModal" >
			<input type = "button" value ="사진업로드" class="btn-outline-secondary" data-toggle="modal" data-target="#myModal2" style="line-height: 30px;">
	 	 <% 		
	 	 	} else { // 로그인 아직
	 	 %>
	 		 <input type = "button" value ="리뷰작성하기" class= "btn-outline-secondary" style="margin: 5px; line-height: 30px;" data-toggle="modal" data-target="#loginModal" >
	 		 <input type = "button" value ="사진업로드" class="btn-outline-secondary" data-toggle="modal" data-target="#loginModal" style="line-height: 30px;">
	 	 <% 		
	 	 	}
		 %>
		<br><br>
		<div>
			<h3 class="f1">리뷰</h3>
			<div id="reviewscore">리뷰 스코어</div>
			<div id="reviewlist"></div>
		</div>
	</div>
	<div class="clear"></div>

</div>
	<footer id="footer"><!-- 하단불러오기 --></footer>
	<!-- Copyright(c)2021 Hong -->

<!-- 로딩중 -->
<div class="fakeLoader"></div>
 <script src="<%= request.getContextPath() %>/view/js/fakeLoader_speed.js"></script>
</body>

	<div class="modal" id="myModal">
		<div class="modal-dialog">
			<div class="modal-content" style="border-radius: 30px 30px 30px 30px;">
				<div class="modal-header" style="border-radius: 30px 30px 0px 0px;">
		    		<h4 class="modal-title f4" style="color:white; font-size:1.3em;">리뷰 작성</h4>                                           
		    		<button type="button" class="close" data-dismiss="modal">&times;</button>
		    	</div>                                                                                   
		    	<div class="modal-body">                                                                  
		  			<form id="input" action='/cumtrip/insertsreview.do' method="post"  enctype="multipart/form-data" >
		    			<table>                                                                          
		     				<tr>                                                                                    
		     					<td style="text-align: left">
		     						<label class="f4">리뷰 제목</label>                                                                   
		     						<input type="text" name ="title" placeholder="제목을 입력해 주세요." style="width: 300px">
		     					</td>
		    				</tr>  
		    				<tr>
		    					<label id='starlabel' class="f4">별점</label><br>
		    					<span class="star">★★★★★
	 				 				<span id="substar">★★★★★</span>
	 				 				<input type="range" oninput="drawStar(this)" value="1" step="1" min="0" max="10" id='star' name="point">
								</span>
							</tr>
		     				<tr>                                                                                     
		     					<td colspan = '2' style="text-align: left" class="f4">리뷰 내용<br>                                                                      
		     						<textarea name="content" placeholder="내용을 입력해 주세요." style="width: 
; height: 200px; boarder: none; resize: none; margin: 7px 0px 0px 0px;"></textarea>
		     					</td>   		                                 
		     				</tr>                                                                                  
		     				<tr>
		     					<td colspan='2' style="text-align: left; font-weight: bold" class="f4"><br>
			     					<label class="label1" for="input-file">사진첨부</label>
			     					<input type="file" id="input-file" name="file" style="display: none"/>    
			     					<span class="inputmidno"></span>  
			     				</td>                                                                         
		     				</tr>                                                                                                                                                                        
		    			</table>
					</form>   
		    	</div>                                                                          
		     	<div class="modal-footer">
		    		<input type="button" value="입력" id="inputsubmit" class="btn btn-success" style="background-color: #FF9614; border-color: white; width: 120px;">  
		    		<button type="button" class="btn btn-danger" data-dismiss="modal" style="background-color: #FF9614; border-color: white; border-radius: 10px; width: 120px;">Close</button>  
		     
		   		</div>
		   	</div>
		</div>
	</div>     
		   
		   
	<div class="modal" id="myModal2">
		<div class="modal-dialog">
			<div class="modal-content" style="border-radius: 30px 30px 30px 30px;">
				<div class="modal-header" style="border-radius: 30px 30px 0px 0px;">
		    		<h4 class="modal-title" class="f1" style="color:white; font-size:1.3em;">사진 업로드</h4>                                           
		    		<button type="button" class="close" data-dismiss="modal">&times;</button>
		    	</div> 
		    	<div class="modal-body">                                                                  
		    		<h4 class="f4">업로드할 사진을 선택하세요.</h4> 
		  			<form id="inputphoto" action='/cumtrip/insertphotorestaurant.do' method="post"  enctype="multipart/form-data" >
		    			<table>                                                                          
		     				<tr>                                                                                    
		     					<td style="text-align: left">
		     						<input type="file" name="file" class="form-control" multiple>    
		     						<span class="inputstayno"></span>   
		     					</td> 
		     				</tr>                                                                                                                                                                        
		    			</table>
		 			</form>   
				</div>                                                                          
				<div class="modal-footer">
					<input type="button" value="업로드" id="inputsubmit2" class="btn btn-success" style="background-color: #FF9614; border-color: white; width: 120px;">
					<button type="button" class="btn btn-danger" data-dismiss="modal" style="background-color: #FF9614; border-color: white; border-radius: 10px; width: 120px;">Close</button>  
				</div>
			</div>
		</div>
	</div>   
		   
		   
	<div class="modal" id="payModal">
		<div class="modal-dialog">
			<div class="modal-content" style="border-radius: 30px 30px 30px 30px;">
				<div class="modal-header" style="border-radius: 30px 30px 0px 0px;">
		    		<h4 class="modal-title f1" style="color:white;">내 예약 정보 확인</h4>                                           
		    		<button type="button" class="close" data-dismiss="modal">&times;</button>
		    	</div>                                                                                   
		    	<div class="modal-body">
		   			<form action="INIStdPayRequest.jsp" id="formpay" >                                                             
		    			<table border="1" id="payinfo">
							<tr>
								<td colspan='2'>
									<h3 style="text-align: center" class="f1">내 예약 정보</h3>
								</td>
							</tr>
							<tr style="text-align: left;">
								<td style=" padding-left: 30px">
									<p class="f4">체크인</p>
									<p id="checkindate"></p>
									<p class="f4">15:00부터</p>
								</td>
								<td  style=" padding-left: 30px">
									<p class="f4">체크인</p>
									<p id="checkoutdate"></p>
									<p class="f4">12:00까지</p>
								</td>
							</tr>
							<tr style="text-align: left">
								<td colspan='2'  style=" padding-left: 30px" >
									<p id="period"> </p>
								</td>
							</tr>
							
							<tr style="text-align: left ">
								<td  colspan='2'  style=" padding-left: 30px">
									<p class="f4">선택 객실 :</p>
									<p class="choiceroom"></p>
									<img id="roomphoto" style="width: 200px; height:200px">
								</td>
							</tr>
							
							<tr><td colspan='2'><hr></td></tr>
							<tr><td colspan='2' class="f4">결제 요금 내역</td></tr>
							<tr>
								<td class="choiceroom"></td>
								<td id="roompay"></td>
							</tr>
							<tr>
								<td class="f4">부가세 10%</td>
								<td id="tex"></td>
							</tr>
							<tr>
								<td class="f4">총 금액</td>
								<td id="totalpay"></td>
							</tr>
							<tr>
								<td class="inputstayno">							
									<input type="hidden" name="checkindata" id="pcheckindata">	
									<input type="hidden" name="roomname" id="roomname">	
									<input type="hidden" name="totalprice" id="totalprice">	
									<input type="hidden" name="checkoutdata" id="pcheckoutdata">	
									<input type="hidden" name="personnum" id="ppersonnum">
									<input type="hidden" name="romnum" id="proomnum">
								</td>
							</tr>	
						</table>
					</form>
		    	</div>
		    	                                                                          
		     	<div class="modal-footer">
		 			<button  style="padding:10px" id ="payclick"  class="f1" >결제요청</button>
		    		<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>  
		     
		   		</div>
			</div>
		</div>
	</div>     

					
					
					
		
				<!-- 로그인시작 -->
	
					<div class="modal fade" id="loginModal" role="dialog">
						<div class="modal-dialog">
							<div class="modal-content" style="border-radius: 30px 30px 30px 30px;">
								<div class="modal-header" style="border-radius: 30px 30px 0px 0px;">
									<h1 class="modal-title" align="center" class="f4" style="color:white; font-size:1.3em;">로그인</h1>
									<button type="button" class="close" data-dismiss="modal">×</button>
				
								</div>
				     			<div class="modal-body">
					         		<!-- 본문시작 -->
									<form id="login_form" action="<%= request.getContextPath() %>/sessionLogin.do" method="get">
						      			<label for="id" class="f4">ID</label><input type="text" class="form-control" id="id" name="memid" placeholder="id"><br>
						      			<label for="pass" class="f4">PASS</label><input type="text" class="form-control" id="pass" name="mempass" placeholder="pass"><br>
						      			<input type="submit" value="확인" id="login_button"  class="btn btn-dark"><br><br>
						      			<a href="<%= request.getContextPath() %>/view/jsp/memberLogin/findID.jsp" class="f4">아이디 찾기</a>
						      			<a href="<%= request.getContextPath() %>/view/jsp/memberLogin/findPass.jsp" class="f4">비밀번호 찾기</a>
						      			<a href="<%= request.getContextPath() %>/view/jsp/memberLogin/singIn.jsp" class="f4">회원가입</a>
						      		</form>
								</div>
							</div>
						</div>
				<!-- 로그인 마침 -->
			  
				<a href="<%= request.getContextPath() %>/view/jsp/memberLogin/singIn.jsp" class="topButton" id="SignUp">회원가입</a>
			</div>
		
			
			
			<div class="modal fade" id="modifyModal">
				<div class="modal-dialog">
					<div class="modal-content" style="border-radius: 30px 30px 30px 30px;">
						<div class="modal-header" style="border-radius: 30px 30px 0px 0px;">
		    				<h4 class="modal-title f4" style="color:white; font-size:1.3em;">리뷰 수정</h4>                                           
							<button type="button" class="close" data-dismiss="modal" >×</button>
						</div>                                                                                   
						<div class="modal-body">                                                                  
							<form id="upinput" method="post" action="/cumtrip/Upatesreview.do" enctype="multipart/form-data" >
								<table>                                                                          
									<tr>                                                                                    
										<td style="text-align: left"><label class="f4">리뷰 제목</label>                                                                   
											<input type="text" name ="title" placeholder="수정할 제목을 입력해 주세요." style="width: 300px">
											<input type="hidden" name="sreno" class="sreno" >
											
											
										</td>
									</tr>  
									<tr>
										<label id='starlabel' class="f4">별점</label><br>
										<span class="star">
											★★★★★
											<span id="substar">★★★★★</span>
											<input type="range" oninput="drawStar(this)" value="1" step="1" min="0" max="10" id='star' name="point">
										</span>
									</tr>	
									<tr>                                                                                     
										<td colspan = '2' style="text-align: left" class="f4">리뷰 내용<br>                                                                      
											<textarea name="content" placeholder="수정할 내용을 입력해 주세요." style="width: 100%; height: 200px; boarder: none; resize: none; margin: 7px 0px 0px 0px;"></textarea>
										</td>   		                                 
									</tr>                                                                                  
									<tr>
										<td colspan='2' style="text-align: left; font-weight: bold" class="f1"><br>
											<label class="label1" for="input-file">사진첨부</label>
											<input type="file" id="input-file2" name="file" style="display: none"/>
											<span class="inputmidno"></span>
										</td>                                                                        
									</tr>                                                                                                                                                                        
								</table>
							</form>   
						</div>                                                                          
						<div class="modal-footer">
							<input type="button" value="수정완료"  id="upinputsubmit" class="btn btn-success" style="background-color: #FF9614; border-color: white; width: 120px;">  
							<button type="button" class="close btn btn-danger" data-dismiss="modal" style="background-color: #FF9614; border-color: white; border-radius: 10px; width: 120px; opacity: 100 !important; height: 38px;">Close</button> 
						</div>
					</div>
				</div>	
			</div>	
	
			<!-- The Modal -->
			<div class="modal fade" id="deleteModal">
				<div class="modal-dialog">
					<div class="modal-content" style="border-radius: 30px 30px 30px 30px;">
						<div class="modal-header" style="border-radius: 30px 30px 0px 0px;">
	        				<h4 class="modal-title f4" style="color:white; font-size:1.3em;">리뷰 삭제</h4>
	        				<button type="button" class="close" data-dismiss="modal">×</button>
	        			</div>
	
						<!-- Modal body -->
						<div class="modal-body">
							<form id="deinput" method="post" action="/cumtrip/Deletesreview.do" >
								<input type="hidden" name="sreno" class="sreno" >
								<span class="inputstayno"></span>
								<label class="f4">리뷰를 삭제하시겠습니까?</label>
							</form> 
						</div>
					
	
						<!-- Modal footer -->
						<div class="modal-footer">
							<input type="button" value="삭제" id="deinputsubmit" class="btn btn-success" style="background-color: #FF9614; border-color: white; width: 120px;"> 
							<button type="button" class="close btn btn-danger" data-dismiss="modal" style="background-color: #FF9614; border-color: white; border-radius: 10px; width: 120px; opacity: 100 !important; height: 38px;">Close</button> 
						</div>
					</div>
				</div>
			</div>				
						
		   

</html>