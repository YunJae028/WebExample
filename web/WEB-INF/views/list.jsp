<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file = "includes/header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>
    #result {
        margin-top : 30px;
        margin-left : 45px;
    }

    #selcase {
        margin-top : 50px;
        margin-bottom: 10px;
    }

    table.tbl{
        /* 셀 사이의 공백 */
        border-collapse: separate;
        /* 셀 간 공백의 크기 조절 */
        border-spacing: 1px;
        /* 열의 너비를 자동 조절 */
        table-layout: fixed;
        /* 텍스트 정렬 */
        text-align: center;
        /* 줄 높이 지정 */
        line-height: 1.5;
        /*위 오른쪽 아래 왼쪽 요소 주위에 빈 공간 추가*/
        margin-bottom: 10px;
    }
    table.tbl th{
        /*셀 너비*/
        width : 140px;
        /*내부에 빈 공간*/
        padding : 10px;
        font-weight: bold;
        color : #fff;
        background : #8bcbff;
    }
    table.tbl td {
        width : 140px;
        padding : 10px;
        /*아래쪽 테두리 설정*/
        border-bottom : 1px solid #78767b;
    }
    table.tbl td button, #search {
        border : 0px;
        background: none;
        padding : 10px;
    }

    #btn_upd{
        height : 35px;
        border-radius: 5px;
        border: 1px solid #64aaff;
        color : #107aff;
        background-color: white;
    }

    button img{
        width : 20px;
        height : 20px;
    }


</style>

    <script>
        // 수정할 때 원래 있던 정보 불러오는 ajax 처리 구문
        function update_form(emp_id){
            $.ajax({
                url:"/updlist",
                type:"GET",
                dataType:"json",
                data: "emp_id=" + emp_id,
                success:function (data){
                    $('#emp_id').val(data.emp_id);
                    $('#name').val(data.name);
                    $('#com_id').val(data.com_id);
                    $('#team_id').val(data.team_id);
                    $('#salary').val(data.salary);
                    console.log(data);
                },
                error: function (request, status, error){
                    var msg = "ERROR : " + request.status + "<br>"
                    msg += + "내용 : " + request.responseText + "<br>" + error;
                    console.log(msg);
                }
            });
        }

    </script>
</head>

<body>
    <div id="result">
        <div id="selcase">
             <form id="fsearch" method="get" action='/search?sel'>
            <input type="text" id="sel" name="sel" placeholder="input name">
            <button id="search" type="submit"><img src="img/search.png"></button>
             </form>
        </div>
        <div id = seltable>
            <table class="tbl">
            <thead>
            <tr>
                <th scope="cols">사원번호</th>
                <th scope="cols">이름</th>
                <th scope="cols">회사</th>
                <th scope="cols">팀</th>
                <th scope="cols">급여</th>
                <th scope="cols"></th>
            </tr>
            </thead>
                <c:forEach items="${list}" var="list">
                <tbody>
                <tr>
                    <td><c:out value="${list.emp_id}"/></td>
                    <td><c:out value="${list.name}"/></td>
                    <td>
                        <c:choose>
                            <c:when test="${list.com_id == 1}">삼성전자</c:when>
                            <c:when test="${list.com_id == 2}">엘지전자</c:when>
                            <c:when test="${list.com_id == 3}">TNC</c:when>
                        </c:choose>
                    </td>
                    <td>
                        <c:choose>
                            <c:when test="${list.team_id == 1}">개발팀</c:when>
                            <c:when test="${list.team_id == 2}">경영팀</c:when>
                            <c:when test="${list.team_id == 3}">회계팀</c:when>
                        </c:choose>
                    </td>
                    <td><c:out value="${list.salary}"/></td>
                    <form id="del" method="post" action='/remove?emp_id=<c:out value="${list.emp_id}"/>'>
                    <td colspan="2"><button id = "bupd" type="button" onclick="update_form(<c:out value="${list.emp_id}"/>)"><img src="img/update.png"></button>
                    <button id = "bdel" type="submit"><img src="img/delete.png"></button></td></form>
                </tr>
                </tbody>
                </c:forEach>
            </table>
        </div>

        <div>
            <h3>수정</h3>
        </div>
        <div id="updinput">
            <form id="frm" method="post" action="/modify">
                <div>
        <%-- 사용자 인터페이스(UI) 요소의 라벨(label)을 정의--%>
                    <label>번호</label>
                    <div>
                        <input type='text' name='emp_id' id='emp_id' value='' placeholder="사용자 수정 불가" required="required" size='40' style='width: 25%;' readonly >
                    </div>
                </div>
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
                        <button type="submit" id='btn_upd'>수정</button>
                    </div>
                </div>

            </form>
        </div>
    </div>
</body>
</html>
