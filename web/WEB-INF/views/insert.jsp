<%--
  Created by IntelliJ IDEA.
  User: tjdbswo
  Date: 2021-02-18
  Time: 오후 5:48
  To change this template use File | Settings | File Templates.
--%>
<%@include file = "includes/header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>

    #frm {
        margin-top : 50px;
        margin-left : 45px;
    }

</style>
<body>
    <form id="frm" method="post" action="/register">
        <div>
            <label>이름</label>
            <div>
                <input type='text' name='name' id='name' value='' required="required" size='40' style='width: 25%;'>
            </div>
        </div>
        <div>
            <label>회사</label>
            <div>
                <select id= "com_id" name = "com_id">
                    <option value="1" <c:if test="${com_id == 1}"> selected </c:if>>삼성전자</option>
                    <option value="2" <c:if test="${com_id == 2}"> selected </c:if>>엘지전자</option>
                    <option value="3" <c:if test="${com_id == 3}"> selected </c:if>>TNC</option>
                </select>
            </div>
        </div>
        <div>
            <label>팀</label>
            <div>
                <select id="team_id" name="team_id">
                    <option value="1" <c:if test="${team_id == 1}"> selected </c:if>>개발팀</option>
                    <option value="2" <c:if test="${team_id == 2}"> selected </c:if>>경영팀</option>
                    <option value="3" <c:if test="${team_id == 3}"> selected </c:if>>회계팀</option>
                </select>
            </div>
        </div>
        <div>
            <label>급여</label>
            <div>
                <input type="text" name='salary' id='salary' value="" size='40' style='width: 25%;'>
                <button type="submit" id="btn_ins">등록</button>
            </div>
        </div>
    </form>
</body>


</html>
