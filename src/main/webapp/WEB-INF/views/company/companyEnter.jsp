<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>
 <header class="bg-white py-5">
            <div class="container px-5">
                <div class="row gx-5 align-items-center">
                    <div class="col-lg-8 col-xl-7 col-xxl-6">
                        <div class="text-center text-xl-start">
                            <h1 class="display-5 fw-bolder text-dark mb-2">기업 회원가입</h1>
                        </div>

                    </div>
                    <html>

                    <head>
                        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
                            rel="stylesheet">
                    </head>


                    </html>
                </div>
            </div>
        </header>

        <section class="py-5">
            <div class="container">
                <div class="view">
                    <div class="mb-3 mt-3">
                        <label for="uname">기업 이름</label>
                        <input id="uname" type="text" class="form-control" value="" readonly="readonly">
                    </div>
                    <div class="mb-3">
                        <label for="email">기업 이메일</label>
                        <input id="email" type="email" class="form-control" value="">
                    </div>
                    <div class="mb-3">
                        <label for="email">기업 전화번호 ( - 없이 입력하시오 )</label>
                        <input id="email" type="email" class="form-control" value="">
                    </div>
                    <div class="mb-3">
                        <form class="tech">
                            <p>기업이 요구하는 기술</p>
                            <label><input type="checkbox" name="" value="">기술명</label>
                            <label><input type="checkbox" name="" value=""> 기술명</label>
                            <label><input type="checkbox" name="" value=""> 기술명</label>
                            <label><input type="checkbox" name="" value=""> 기술명</label>
                            <label><input type="checkbox" name="" value=""> 기술명</label>
                            <label><input type="checkbox" name="" value=""> 기술명</label>
                            <label><input type="checkbox" name="" value=""> 기술명</label>
                            <label><input type="checkbox" name="" value=""> 기술명</label>
                            <label><input type="checkbox" name="" value=""> 기술명</label>
                            <label><input type="checkbox" name="" value=""> 기술명</label>
                            <label><input type="checkbox" name="" value=""> 기술명</label>

                        </form>
                        <p>
                            <input class="reset" type="reset" value="초기화">
                        </p>
                    </div>
                    <div class="mb-3">
                        <label for="email">기업 주소</label>
                        <input id="email" type="email" class="form-control" value="">
                    </div>
                    <div class="mb-3">
                        <label for="email">기업 설립연도</label>
                        <input id="email" type="email" class="form-control" value="">
                    </div>
                    <div class="mb-3">
                        <label for="email">기업 소개글</label>
                        <textarea class="companyself">

                        </textarea>
                    </div>
                    <button class="nextbutton">가입완료</button>
                </div>
            </div>
        </section>

<%@ include file="../layout/footer.jsp"%>