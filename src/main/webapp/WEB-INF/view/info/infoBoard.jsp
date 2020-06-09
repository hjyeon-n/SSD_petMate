<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="site-section">
	<div class="container">
		<div class="section-title">
			<span class="caption d-block small">Categories</span>
			<h2>Politics</h2>
		</div>
		<div class="table-wrapper">
			<table class="table table-striped">
				<thead>
					<tr>
						<th>#</th>
						<th>글 제목</th>
						<th>작성자</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach var="infoList" items="${infoList}">
					<tr>
						<td>${infoList.boardNum}</td>
						<td><a href="<c:url value="/infoDetail">
						<c:param name="boardNum" value="${infoList.boardNum}"/>
						</c:url>">${infoList.boardTitle}</a></td>
						<td>${infoList.userID}</td>
					</tr>
				</c:forEach>
				<!-- 	<tr>
						<td>2</td>
						<td><a href="#">골골송 한번만 불러주세요</a></td>
						<td>양갱</td>
					</tr> -->
				</tbody>
			</table>
		</div>
		<div class="pagination-row" style="text-align: center;">
			<ul class="custom-pagination list-unstyled">
				<li><a href="#">1</a></li>
				<li class="active"><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">5</a></li>
				<li><a href="#">></a></li>
			</ul>
		</div>
		
		<div class="d-flex justify-content-center">
          		<select class="form-control form-control-sm" style="width:14%" id="searchType" name="searchType">
							<option value="boardTitle">게시글 제목</option>
							<option value="boardContent">내용</option>
							<option value="userID">작성자</option>
				</select>	
                <input type="text" style="width: 30%" class="form-control" placeholder="Search...">
                <button type="submit" class="btn btn-secondary" ><span class="icon-search"></span></button>
        </div>
        
	</div>
</div>
