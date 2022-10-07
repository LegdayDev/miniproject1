<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>
<div class="container mt-3">
	<h2>기업 추천 리스트</h2>

	<table class="table table-hover">
		<thead>
			<tr>
				<th>추천수</th>
				<th>근무지</th>
				<th>기업명</th>
				<th>급여</th>
				<th>보유기술</th>
				<th>기업상세보기</th>

			</tr>
		</thead>
		<tbody>
			<tr>
				<td>99</td>
				<td>부산 진구</td>
				<td>그린 회사</td>
				<td>3천만원</td>
				<td>메타버스,AI</td>
				<td>
					<button type="button" class="btn btn-primary">기업 상세보기</button>
				</td>
			</tr>
			<tr>
				<td>공백</td>
				<td>공백</td>
				<td>공백</td>
				<td>공백</td>
				<td>공백</td>
				<td>
					<button type="button" class="btn btn-primary">기업 상세보기</button>
				</td>
			</tr>
		</tbody>
	</table>
</div>
<%@ include file="../layout/footer.jsp"%>