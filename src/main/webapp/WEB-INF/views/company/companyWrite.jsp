<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>
<div class="container mt-3">
	<h2>기업명</h2>
	<form action="/action_page.php">
		<div class="flex">
			<div>
				<div>
					급여 : <select>
						<option selected="selected">2천</option>
						<option>4천</option>
						<option>5천</option>
						<option>협의</option>
					</select>
				</div>
				<div>
					학력 : <select>
						<option selected="selected">고졸</option>
						<option>대졸</option>
						<option>2,3년대</option>
					</select>
				</div>
				<div>
					경력 : <select>
						<option selected="selected">신입</option>
						<option>1년차</option>
					</select>
				</div>
			</div>
			<div>
				<form method="get" action="form-action.html">
					<p>필요기술</p>
					<label><input type="checkbox" name="color" value="Python ">
						Python </label> <label><input type="checkbox" name="color"
						value="Spring Framework"> Spring Framework</label> <label><input
						type="checkbox" name="color" value="AWS "> AWS </label> </br> <label><input
						type="checkbox" name="color" value="Git"> Git </label> <label><input
						type="checkbox" name="color" value="iOS"> iOS </label> <label><input
						type="checkbox" name="color" value="HTML"> HTML </label> <label><input
						type="checkbox" name="color" value="MySQL"> MySQL </label>
					<p>
						<input type="reset" value="Reset">
					</p>
				</form>
			</div>
		</div>
		<div class="mb-3 mt-3">
			<label for="comment">Comments:</label>
			<textarea id="content" class="form-control" rows="5"
				placeholder="내용을 입력해주세요."></textarea>
		</div>
		<button type="submit" class="btn btn-primary">작성완료하기</button>
	</form>
</div>
<%@ include file="../layout/footer.jsp"%>