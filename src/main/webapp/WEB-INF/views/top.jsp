<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>trip</title>
<link rel="stylesheet" href="css/top.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type="text/javascript">
  Kakao.init('8849659343ca7bb9d223082835140186'); // 초기화

  function sendLink() { // 카카오톡 공유하기
    Kakao.Link.sendDefault({
      objectType: 'text',
      text: '여행&날씨정보',
      link: {
        
        webUrl: 'https://developers.kakao.com/docs/js/kakaotalklink#텍스트-템플릿-보내기',
      },
    })
  }
  </script>

</head>

<body>

	<div class="logoarea">
				<!--S:Logo-->
		
				<!--//E:Logo-->
				<!--S:SNS버튼모음-->
		<ul class="sns_list" style="list-style: none;">
			<li class="sns-item"><a href="https://www.instagram.com/gocamping_official/" target="_BLANK"><img alt="인스타" src="res/img/인스타.png"></a></li>
			<li class="sns-item"><a href="javascript:sendLink()"><img alt="인스타" src="res/img/카톡.png"></a></li>
			<li class="sns-item"><a href="https://www.facebook.com/go2thecamping/" target="_BLANK"><span><img alt="페북" src="res/img/페북.png"></a></li>
			<li class="sns-item"><a href="https://blog.naver.com/gocamping_official" target="_BLANK"><img alt="유튭" src="res/img/유튭.png"></a></li>
					<!--<li class="sns03"><a href="https://www.youtube.com/channel/UCuCBPZUAgFBX0J1EVnkuXPQ" target="_BLANK">고캠핑 공식유튜브</a></li>-->
		</ul>
		<h1 id="logo">
			<a href="/list"><img alt="로고" src="res/img/logo.png"></a>
		</h1>				
	</div>
</body>
</html>
