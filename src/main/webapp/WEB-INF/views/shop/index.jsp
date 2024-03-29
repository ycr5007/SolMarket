<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="../include/shop_header.jsp" %>
<style>
.card{
color: black;
display:inline-block;
margin:20px 30px;
}
.card-wrapper{
align-items: center;
justify-content: center;
margin-left:200px;
}
.card-title-price{
text-decoration:line-through;
font-size: 16px;
}
/* 사이드바 래퍼 스타일 */

#page-wrapper {
  padding-left: 250px;
}

#sidebar-wrapper {
  position: absolute;
  width: 250px;
  height: 100%;
  margin-left: -250px;
  overflow-x: hidden;
  overflow-y: auto;
}

#page-content-wrapper {
  width: 100%;
  padding: 20px;
}
/* 사이드바 스타일 */

.sidebar-nav {
  width: 250px;
  margin: 0;
  padding: 0;
  list-style: none;
}

.sidebar-nav li {
  text-indent: 1.5em;
  line-height: 2.8em;
  margin: 12px 0;
}

.sidebar-nav li a {
  display: block;
  text-decoration: none;
  color: white;
}

.sidebar-nav li a:hover {
  color: #72aee6;
}
	
.sidebar-nav > .sidebar-brand {
  font-size: 2.3em;
  color: white;
  line-height: 3em;
}

.pagination{
	justify-content: center;
	padding: 20px;
}
</style>
<section class="bg-dark">


<div id="page-wrapper">
  <!-- 사이드바 -->
  <div id="sidebar-wrapper">
    <ul class="sidebar-nav">
      <li class="sidebar-brand">
        카테고리
      </li>
      <c:forEach var="category" items="${categoryList}" >
      	<li><a href="${category.categoryNo }" class="category-data">${category.categoryName}</a></li>
      </c:forEach>
    </ul>
  </div>
</div>
  <!-- /사이드바 -->
  <!-- 상품리스트 -->
<div class="card-wrapper">
	<c:forEach var="product" items="${product}" >
	<div class="card" style="width: 20rem;">
	  <img src="/ori_display/product/${product.productNo}" onerror="this.src='https://via.placeholder.com/320x300'" width="318" height="300" class="card-img-top" alt="...">
	  <div class="card-body">
	    <h5 class="card-title">${product.productName}</h5>
	    <h5 class="card-title-price">${product.productPrice}원</h5>
	    <h5 class="card-price"><fmt:parseNumber value ="${(product.productPrice - (product.productPrice*product.productSale * 0.01))}" integerOnly= "true" />원</h5>
	    
	    <a href="/shop/detail?productNo=${product.productNo}" class="btn btn-outline-primary">상품 보기</a>
	  </div>
	</div>
	</c:forEach> 
</div>
<!-- /상품리스트 -->

<!-- pagination start -->
<nav aria-label="Page navigation example">
  <ul class="pagination">
	  <c:if test="${pageDto.prev}"> <!-- prev가 true여야 이전버튼 활성화 -->
	  	<li class="paginate_button page-item previous">
	      <a class="page-link" href="${pageDto.startPage-1}" aria-label="Previous">
	        <span aria-hidden="true">&laquo;</span>
	        <span class="sr-only">Previous</span>
	      </a>
	    </li>
	   </c:if>
      
    <c:forEach var="idx" begin="${pageDto.startPage}" end="${pageDto.endPage}">
    	<!-- 활성화 중인 페이지 번호에 색으로 표시 -->
    	<li class="page-item ${pageDto.cri.pageNum==idx?'active':''}"><a class="page-link" href="${idx}">${idx}</a></li>
    </c:forEach>
    
    <c:if test="${pageDto.next}">
	    <li class="paginate_button page-item next">
	      <a class="page-link" href="${pageDto.endPage+1}" aria-label="Next">
	        <span aria-hidden="true">&raquo;</span>
	        <span class="sr-only">Next</span>
	      </a>
	    </li>
    </c:if>
  </ul>
</nav>

<!-- 페이지 링크를 처리할 폼 -->
<form action="/shop/index" id="actionForm">
	<input type="hidden" name="keyword" value="${cri.keyword }" />
	<input type="hidden" name="pageNum" value="${cri.pageNum}" />
	<input type="hidden" name="amount" value="9" />
</form>


</section>











<script src="/resources/js/shop_index.js"></script>
<%@ include file="../include/footer.jsp" %>