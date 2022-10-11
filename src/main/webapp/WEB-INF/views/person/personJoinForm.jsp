<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<div class="container">
	<div class="view">
		<h2 style="margin-top: 10px;">개인 회원가입</h2>
		<hr />
		<form>
			<div style="width: 500px;">
				<div class="d-flex justify-content-between" style="margin-bottom: 20px;">
					아이디 <input id="username" type="text" class="form-control" placeholder="아이디를 입력하세요">
				</div>
				<div class="d-flex justify-content-between" style="margin-bottom: 20px;">
					비밀번호 <input id="password" type="password" class="form-control" placeholder="비밀번호를 입력하세요">
				</div>
				<div class="d-flex justify-content-between" style="margin-bottom: 20px;">
					비밀번호 확인 <input id="passwordCheck" type="password" class="form-control" placeholder="비밀번호를 입력하세요">
				</div>
			</div>
			<hr />
			<div style="width: 500px;">
				<div class="d-flex justify-content-between" style="margin-bottom: 20px;">
					이름 <input id="personName" type="text" class="form-control" placeholder="이름을 입력하세요">
				</div>
				<div class="d-flex justify-content-between" style="margin-bottom: 20px;">
					연락처 <input id="personPhone" type="tel" class="form-control" placeholder="연락처를 입력하세요">
				</div>
				<div class="d-flex" style="margin-bottom: 20px;">
					성별 <input type="radio" name="gender" value="man">남 <input type="radio" name="gender" value="woman">여

				</div>
				<div class="d-flex justify-content-between" style="margin-bottom: 20px;">
					거주지 <input id="personPhone" type="text" class="form-control" placeholder="거주지를 입력하세요">
				</div>
				<div class="d-flex justify-content-between" style="margin-bottom: 20px;">

					학력 <select id="degree">
						<option>학력 선택</option>
						<option>고졸</option>
						<option>대졸전공</option>
						<option>대졸 비전공</option>
					</select>
				</div>
				<div class="d-flex justify-space-around " style="margin-bottom: 20px;">
					<label class="">경력</label> <select>
						<option>경력 선택</option>
						<option>신입</option>
						<option value="1">1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
						<option>5</option>
						<option>6</option>
						<option>7</option>
						<option>8</option>
						<option>9</option>
						<option>10</option>
					</select> <label class="">년차</label>
				</div>
				<div class="d-flex justify-content-between" style="margin-bottom: 20px;">
					이메일 <input id="personPhone" type="tel" class="form-control" placeholder="이메일을 입력하세요">
				</div>
				<div class="tech">
					<p>기술 스택</p>
					<div class="d-flex justify-content-end">
						<c:forEach var="skill" items="${skillList}">
							<label><input type="checkbox" name="" value="">${skill}</label>
						</c:forEach>
					</div>

				</div>
				<button class="nextbutton" type="submit">가입완료</button>
			</div>
		</form>
	</div>
</div>
<%@ include file="../layout/footer.jsp"%>