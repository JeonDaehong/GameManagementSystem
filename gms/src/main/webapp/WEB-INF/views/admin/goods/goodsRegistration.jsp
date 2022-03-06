<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:if test="${sessionScope.loginId ne 'admin' }">
	<script>
		alert('ADMIN만 접근 가능한 페이지입니다.');
		location.href = '${contextPath}/main/main';
	</script>
</c:if>
<script>

	var regex = /^[0-9]+$/;

	function formValidationCheck(){
		
		var goodsName = document.getElementById('goodsName');
		if (goodsName.value == ""){
			alert("상품명은 반드시 입력해야 합니다.");
			goodsName.focus();
			return false;
		}
		
		var price = document.getElementById('price');
		if (price.value == ""){
			alert("가격은 반드시 입력해야 합니다.");
			price.focus();
			return false;
		}
		
		if (!price.value.match(regex)){
			alert("가격은 반드시 숫자로 입력해야 합니다.");
			price.focus();
			return false;
		}
		
		var discountRate = document.getElementById('discountRate');
		if (discountRate.value == ""){
			alert("할인률은 반드시 입력해야 합니다. (할인을 하지 않을 시, 0을 입력해주세요)");
			discountRate.focus();
			return false;
		}
		
		if (!discountRate.value.match(regex)){
			alert("할인률은 반드시 숫자로 입력해야 합니다.");
			discountRate.focus();
			return false;
		}
		
		var creCompany = document.getElementById('creCompany');
		if (creCompany.value == ""){
			alert("제작 회사는 반드시 입력해야 합니다.");
			creCompany.focus();
			return false;
		}
		
		var country = document.getElementById('country');
		if (country.value == ""){
			alert("국가는 반드시 입력해야 합니다.");
			country.focus();
			return false;
		}
		
		var remainCount = document.getElementById('remainCount');
		if (remainCount.value == ""){
			alert("입고 수량은 반드시 입력해야 합니다.");
			remainCount.focus();
			return false;
		}
		
		if (!remainCount.value.match(regex)){
			alert("입고 수량은 반드시 숫자로 입력해야 합니다.");
			remainCount.focus();
			return false;
		}
		
		var content = document.getElementById('content');
		if (content.value == ""){
			alert("상품 내용은 반드시 입력해야 합니다.");
			content.focus();
			return false;
		}
		
		var fileName = document.getElementById('fileName');
		if (fileName.value == ""){
			alert("이미지는 반드시 첨부해야 합니다.");
			fileName.focus();
			return false;
		}
		
		var pngCheck = fileName.value.slice(-3);
		if (pngCheck != "png" && pngCheck != "PNG" && pngCheck != "jpg" && pngCheck != "JPG"){
			alert("이미지는 png, PNG, jpg, JPG 파일만 업로드가 가능합니다.");
			fileName.focus();
			return false;
		}
		
		var secondFileName = document.getElementById('secondFileName');
		if (secondFileName.value == ""){
			alert("이미지는 반드시 첨부해야 합니다.");
			secondFileName.focus();
			return false;
		}
		
		var pngCheck = secondFileName.value.slice(-3);
		if (pngCheck != "png" && pngCheck != "PNG" && pngCheck != "jpg" && pngCheck != "JPG"){
			alert("이미지는 png, PNG, jpg, JPG 파일만 업로드가 가능합니다.");
			secondFileName.focus();
			return false;
		}
		
		var thirdFileName = document.getElementById('thirdFileName');
		if (thirdFileName.value == ""){
			alert("이미지는 반드시 첨부해야 합니다.");
			thirdFileName.focus();
			return false;
		}
		
		var pngCheck = thirdFileName.value.slice(-3);
		if (pngCheck != "png" && pngCheck != "PNG" && pngCheck != "jpg" && pngCheck != "JPG"){
			alert("이미지는 png, PNG, jpg, JPG 파일만 업로드가 가능합니다.");
			thirdFileName.focus();
			return false;
		}
		
		var fourthFileName = document.getElementById('fourthFileName');
		if (fourthFileName.value == ""){
			alert("이미지는 반드시 첨부해야 합니다.");
			fourthFileName.focus();
			return false;
		}
		
		var pngCheck = fourthFileName.value.slice(-3);
		if (pngCheck != "png" && pngCheck != "PNG" && pngCheck != "jpg" && pngCheck != "JPG"){
			alert("이미지는 png, PNG, jpg, JPG 파일만 업로드가 가능합니다.");
			fourthFileName.focus();
			return false;
		}
		
		return true;
		
}
		
</script>
<title>Insert title here</title>
</head>
<body>
<div class="nk-main">
        <!-- START: Breadcrumbs -->
        <div class="nk-gap-1"></div>
        <div class="container">
            <ul class="nk-breadcrumbs">
                <li><a href="${contextPath }/main/main">Home</a></li>
                <li><span class="fa fa-angle-right"></span></li>
                <li><a href="${contextPath }/goods/goodsList">Game Store</a></li>
                <li><span class="fa fa-angle-right"></span></li>
                <li><span>상품 등록</span></li>
            </ul>
        </div>
        <div class="nk-gap-1"></div>
        <!-- END: Breadcrumbs -->
        <div class="container">
            <div class="nk-store nk-store-checkout">
                <h3 class="nk-decorated-h-2"><span><span class="text-main-1">상품</span> 등록 정보</span></h3>
                <!-- START: Billing Details -->
                <div class="nk-gap"></div>
                <form action="${contextPath }/adminGoods/goodsRegistration"  method="post" onsubmit="return formValidationCheck()" enctype="multipart/form-data" class="nk-form">
                    <table class="table nk-table" style="border-color: red;">
						<tr style="border-color: red;">
							<td style="border-color: red;"> 상품명 </td>
							<td style="border-color: red;"><input name="goodsName" id="goodsName" type="text" class="form-control" style="border-color: white;" maxlength="50" placeholder="최대 50자"/></td>
						</tr>
						<tr style="border-color: red;">
							<td style="border-color: red;"> 상품 타입 </td>
							<td style="border-color: red;">
								<select id="goodsType" name="goodsType" class="form-control" style="border-color: white;">
									<option value="pc">PC</option>
									<option value="ps5">PS5</option>
									<option value="xbox">XBOX</option>
								</select>
							</td>
						</tr>
						<tr style="border-color: red;">
							<td style="border-color: red;"> 상품 장르 </td>
							<td style="border-color: red;">
								<select id="goodsGenre" name="goodsGenre" class="form-control" style="border-color: white;">
									<option value="rpg">RPG</option>
									<option value="fps">PS5</option>
									<option value="advencher">어드벤쳐</option>
									<option value="rts">RTS</option>
									<option value="fear">공포</option>
									<option value="datingSimulation">연애 시뮬레이션</option>
									<option value="etc">기타 장르</option>
								</select>
							</td>
						</tr>
						<tr style="border-color: red;">
							<td style="border-color: red;"> 가격 (원)</td>
							<td style="border-color: red;"><input name="price" id="price" type="text" class="form-control" style="border-color: white;" maxlength="5" placeholder="0 ~ 99999"/></td>
						</tr>
						<tr style="border-color: red;">
							<td style="border-color: red;"> 할인률 (%)</td>
							<td style="border-color: red;"><input name="discountRate" id="discountRate" type="text" class="form-control" style="border-color: white;" maxlength="2" placeholder="0 ~ 99"/></td>
						</tr>
						<tr style="border-color: red;">
							<td style="border-color: red;"> 제작 회사 </td>
							<td style="border-color: red;"><input name="creCompany" id="creCompany" type="text" class="form-control" style="border-color: white;" maxlength="50" placeholder="최대 50자"/></td>
						</tr>
						<tr style="border-color: red;">
							<td style="border-color: red;"> 제작 국가 </td>
							<td style="border-color: red;"><input name="country" id="country" type="text" class="form-control" style="border-color: white;" maxlength="20" placeholder="최대 20자"/></td>
						</tr>
						<tr style="border-color: red;">
							<td style="border-color: red;"> 입고 수량 </td>
							<td style="border-color: red;"><input name="remainCount" id="remainCount" type="text" class="form-control" style="border-color: white;" maxlength="4"/></td>
						</tr>
						<tr style="border-color: red;">
							<td style="border-color: red;">상품 설명</td>
							<td style="border-color: red;" align="center">
								<textarea class="form-control" name="content" id="content" maxlength="3000" placeholder="3000자 이내" rows="12" style="border-color: white;"></textarea>
							</td>
						</tr>
						<tr style="border-color: red;">
							<td style="border-color: red;"> 상품 이미지 1 (권장 : 472 x 512)</td>
							<td style="border-color: red;"><input name="fileName" id="fileName" type="file" /></td>
						</tr>
						<tr style="border-color: red;">
							<td style="border-color: red;"> 상품 이미지 2 (권장 : 1000 x 450)</td>
							<td style="border-color: red;"><input name="secondFileName" id="secondFileName" type="file" /></td>
						</tr>
						<tr style="border-color: red;">
							<td style="border-color: red;"> 상품 이미지 3 (권장 : 1000 x 450)</td>
							<td style="border-color: red;"><input name="thirdFileName" id="thirdFileName" type="file" /></td>
						</tr>
						<tr style="border-color: red;">
							<td style="border-color: red;"> 상품 이미지 4 (권장 : 1000 x 450)</td>
							<td style="border-color: red;"><input name="fourthFileName" id="fourthFileName" type="file" /></td>
						</tr>
					</table> 
                <div class="nk-gap-2"></div>
                <p align="center">
                	<input type="submit" value="상품 등록" class="nk-btn nk-btn-rounded nk-btn-color-main-1"> &nbsp;
	                <input type="reset" value="정보 다시 입력" class="nk-btn nk-btn-rounded nk-btn-color-main-1"> &nbsp;
	                <input type="button" value="상품 등록 취소" class="nk-btn nk-btn-rounded nk-btn-color-main-1" onclick="location.href='${contextPath}/goods/goodsList'">
                </p>
                </form>
                <blockquote class="nk-blockquote">
					<div class="nk-blockquote-author"><span>Game Management System 1.0</span></div>
				</blockquote>
            </div>
        </div>
    </div>
<div class="nk-gap-2"></div>
</body>
</html>