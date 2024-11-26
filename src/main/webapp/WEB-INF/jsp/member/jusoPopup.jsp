<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form id="form" name="form" method="post">
		<input type="hidden" id="confmKey" name="confmKey" value="U01TX0FVVEgyMDIyMDMyNTEwMTEyODExMjM4NzA="/>
		<input type="hidden" id="returnUrl" name="returnUrl" value=""/>
		<input type="hidden" id="resultType" name="resultType" value="1"/>
	</form>
</body>
<script>
var inputYn= "${param.inputYn}";
if(inputYn != "Y"){
	document.form.returnUrl.value = location.href;
	document.form.action="https://business.juso.go.kr/addrlink/addrLinkUrl.do"; //인터넷망
	//document.form.action="https://business.juso.go.kr/addrlink/addrMobileLinkUrl.do"; //모바일 웹인 경우, 인터넷망
	document.form.submit();
}else{
	opener.jusoCallBack("${param.roadAddrPart1}","${param.addrDetail}");
	window.close();
}
</script>
</html>