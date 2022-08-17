<%@ page import="model_p.MemberDTO" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: userk
  Date: 2022-08-13
  Time: 오후 6:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

    <script src="<c:url value="/jquery/"/>jquery-3.6.0.js"></script>
    <script src="<c:url value="/jquery/"/>jquery-ui.min.js"></script>
    <script>
        function selectAll(selectAll)  {
            const checkboxes = document.querySelectorAll('input[name="user"]');

            checkboxes.forEach((checkbox) => {
                checkbox.checked = selectAll.checked
            })
        }
    </script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css" integrity="sha512-1sCRPdkRXhBV2PBLUdRb4tMg1w2YPf37qatUFeS7zlBy7jJI8Lf4VHwWfZZfpXtYSLy85pkm9GaYVYMfw5BC1A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        *{
            margin: 0;
            padding: 0;
        }

        .wrapper{
            width: 100%;
            height: 100%;
        }
        header{
            height: 50px;
            display: flex;
            position: fixed;

        }

        header > label:nth-of-type(1){
            width: 50px;
            background: rgba(2, 2, 114, 0.884);
            color: #fff;
            text-align: center;
            padding-top: 13px;

        }

        header > label:nth-of-type(2){
            width: 189px;
            height: 37px;
            background: rgba(16, 16, 170, 0.918);
            text-align: center;
            padding-top: 13px;
        }


        #headline{
            width: 1330px;
            height: 40px;
            background: #fff;
            border-bottom: 1px solid rgb(184, 177, 177);
            padding-top: 15px;
            padding-left: 20px;
            margin-top: 50px;
            margin-left: 239px;
            position: fixed;
            flex-direction: row;

        }

        #headline > b{
            width: 100px;
            font-size: 20px;
        }

        #headline > input{
            float: right;
            margin: 0px 10px 50px 0px;

        }

        #main{
            width: 2000px;
            height: 2000px;
            margin: 0px 0px 0px 220px;
            padding: 120px 20px 20px 40px;
        }

        #main > div:first-of-type > input[type=button]{
            padding: 5px 3px 5px 3px;
            border-radius: 5px;
            border: 0;
            background: rgb(138, 169, 238);
            color: #fff;
            cursor: pointer;
            margin-top: 10px;
        }

        #main > div:nth-of-type(2){
            margin: 10px 0px 0px 0px;

        }

        #main > div:nth-of-type(2) > select{
            height: 25px;
            border-radius: 4px;
        }

        #main > div:nth-of-type(2) > input[type=text]{
            height: 22px;
        }

        #main > div:nth-of-type(2) > button{
            width: 25px;
            height: 25px;
        }

        table{
            border: 1px solid rgb(122, 115, 115);
            margin-top: 10px;

        }

        input[type="checkbox"]{
            margin-right: 5px;
        }

        tr:nth-of-type(5),
        tr:nth-of-type(6),
        tr:nth-of-type(9),
        tr:nth-of-type(10){
            background: rgba(227, 233, 240, 0.726);
        }

        th{
            border: 1px solid rgb(97, 88, 88);
            font-size: 13px;
            padding: 10px 0px 10px 0px;
        }
        td{
            border: 1px solid rgb(97, 88, 88);
            text-align: center;
            font-size: 13px;
            padding: 10px 0px 10px 0px;
        }

        tr > td > div > input[type=radio]{
            margin-left: 20px;
            width: 10px;
        }

        tr:first-of-type > th:first-child{
            height: 50px;
            padding: 10px;
            background: rgba(83, 104, 167, 0.856);
            color: #fff;
        }

        tr:first-of-type > th:nth-of-type(2),
        tr:first-of-type > th:nth-of-type(3){
            width:150px;
            background: rgba(83, 104, 167, 0.856);
            color: #fff;
        }

        tr:first-of-type > th:nth-of-type(4){
            width:100px;
            background: rgba(83, 104, 167, 0.856);
            color: #fff;
        }

        tr:first-of-type > th:nth-of-type(5),
        tr:first-of-type > th:nth-of-type(6),
        tr:first-of-type > th:nth-of-type(7){
            width:220px;
            background: rgba(83, 104, 167, 0.856);
            color: #fff;
        }

        tr:first-of-type > th:nth-of-type(9){
            width: 140px;
            background: rgba(83, 104, 167, 0.856);
            color: #fff;
        }

        tr:first-of-type > th:nth-of-type(8),
        tr:first-of-type > th:last-child{
            width: 50px;
            background: rgba(83, 104, 167, 0.856);
            color: #fff;
        }

        tr:nth-of-type(2) > th{
            background: rgba(83, 104, 167, 0.856);
            color: #fff;
        }

        tr:nth-of-type(3) > th:first-child,
        tr:nth-of-type(5) > th:first-child,
        tr:nth-of-type(7) > th:first-child,
        tr:nth-of-type(9) > th:first-child{
            height: 50px;
            padding: 10px;
        }

        tr:nth-of-type(2) > th:first-of-type,
        tr:nth-of-type(4) > th:first-of-type,
        tr:nth-of-type(6) > th:first-of-type,
        tr:nth-of-type(8) > th:first-of-type{
            width: 70px;
        }

    </style>
<<<<<<< HEAD
    <meta charset="UTF-8">
    <title>usermanagement</title>

=======
>>>>>>> origin/test

<div class="wrapper">

    <div id="headline">
        <b>회원관리</b>

    </div>

    <div id="main">
        <div>
            <input type="button" value="전체목록"/>
            <input type="button" value="총 회원수 3,548명"/>
            <input type="button" value="차단 0명"/>
            <input type="button" value="탈퇴 43명"/>
        </div>
        <div>
            <select name="sortfillter">
                <option selected>아이디</option>
                <option>닉네임</option>
                <option>이름</option>
                <option>이메일</option>
                <option>전화번호</option>
                <option>가입일시</option>
            </select>
            <input type="text">
            <button><i class="fa-solid fa-magnifying-glass"></i></button>
        </div>

        <table cellspacing="0" cellpadding="0" style="border-collapse:collapse">
            <tr>
                <th rowspan="2"><input type="checkbox" name="user" onclick="selectAll(this)">회원번호</th>
                <th>아이디</th>
                <th>이름</th>
                <th rowspan="2">SMS로그인</th>
                <th rowspan="2">주소</th>
                <th rowspan="2">상세주소</th>
                <th rowspan="2">휴대폰</th>
                <th rowspan="2">권한</th>
                <th rowspan="2">관리</th>
            </tr>
            <tr>
                <th>비밀번호</th>
                <th>닉네임</th>
            </tr>

            <c:forEach items="${adminData}" var="i">
                <tr>
                    <form action="AdminUserDelete" method="get">
                        <th rowspan="2"><input type="checkbox" name="user" value="${i.mem_id}">${i.mem_id}
                        </th>
                        <td>${i.mem_userid}</td>

                        <td>${i.mem_realname}</td>
                        <td rowspan="2">${i.mem_social}</td>

                        <td rowspan="2">${i.mem_address1}</td>
                        <td rowspan="2">${i.mem_address2}</td>
                        <td rowspan="2">${i.mem_phone}</td>
                        <td rowspan="2">${i.mem_level}</td>
                        <td rowspan="2">
                                <input type="submit" value="수정">
                                <input type="submit" value="삭제">
                        </td>
                    </form>
                </tr>
                <tr>
                    <td>${i.mem_password}</td>
                    <td>${i.mem_nickname}</td>
                </tr>
            </c:forEach>

        </table>
    </div>
</div>
<<<<<<< HEAD

=======
<script type="text/javascript">
    function selectAll(selectAll)  {
        const checkboxes = document.querySelectorAll('input[name="user"]');

        checkboxes.forEach((checkbox) => {
            checkbox.checked = selectAll.checked
        })
    }
</script>
>>>>>>> origin/test

