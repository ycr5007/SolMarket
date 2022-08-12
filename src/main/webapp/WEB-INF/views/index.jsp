<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./include/header.jsp" %>

<!-- 컨텐트 시작 -->
<section class="bg-dark">
    <div class="container pb-5 pt-4">
      <div class="row">
      
	<!-- 지도 -->
		<div class="col-lg-6 flex-fill" style="align-content: center">
            <div class="container mapmap border-0 bg-dark" style="padding: 20px 20px 20px 20px;">
	          	<div>
		          <img
					src="../resources/img/geo.png"
					usemap="#image-map"
					class="geomap"
					style="max-width: 100%; max-height: auto%; align-content: center"
		          />
		          <map name="image-map" id="image-map">
		            <area
		              target="_blank"
		              alt="강서구"
		              title="강서구"
		              href="/gangseo"
		              coords="40,168,39,183,36,196,28,207,26,221,15,227,10,235,4,251,4,262,20,270,28,278,32,283,43,279,58,275,72,271,80,273,88,286,99,297,114,295,121,282,124,270,140,266,140,260,122,244,114,232,103,222,93,217,64,185"
		              shape="poly"
		            />
		            <area
		              target="_blank"
		              alt="양천구"
		              title="양천구"
		              href="/yangcheon"
		              coords="125,283,128,272,138,272,145,283,150,296,142,305,141,324,134,339,122,341,115,333,106,331,95,336,85,342,77,336,68,334,71,319,71,294,69,283,71,276,79,280,84,293,95,301,105,301,116,299,121,290"
		              shape="poly"
		            />
		            <area
		              target="_blank"
		              alt="구로구"
		              title="구로구"
		              href="/guro"
		              coords="69,344,62,361,60,370,66,384,56,395,58,404,73,404,86,403,106,386,112,376,121,370,129,374,132,382,151,384,158,376,155,354,153,341,143,337,137,345,122,346,109,338,102,336,90,346,78,345,71,346"
		              shape="poly"
		            />
		            <area
		              target="_blank"
		              alt="영등포구"
		              title="영등포구"
		              href="/youngdeongpo"
		              coords="154,299,148,278,146,267,166,281,182,287,192,295,196,309,200,315,207,322,202,330,198,343,196,357,192,363,182,363,175,371,172,383,164,377,162,361,158,345,152,334,145,329,146,319,146,310"
		              shape="poly"
		            />
		            <area
		              target="_blank"
		              alt="금천구"
		              title="금천구"
		              href="/geumcheon"
		              coords="138,390,140,402,144,415,151,421,158,445,164,466,183,464,190,456,196,448,186,434,180,405,180,396,164,385"
		              shape="poly"
		            />
		            <area
		              target="_blank"
		              alt="관악구"
		              title="관악구"
		              href="/gwanak"
		              coords="177,387,184,393,190,434,198,443,207,455,216,465,233,466,247,462,264,450,278,438,288,428,276,404,265,403,252,390,243,375,226,372,212,370,204,372,200,378"
		              shape="poly"
		            />
		            <area
		              target="_blank"
		              alt="동작구"
		              title="동작구"
		              href="/dongjak"
		              coords="213,328,203,346,200,360,193,366,180,374,178,380,191,375,200,373,206,367,219,365,234,366,246,371,252,383,256,390,267,398,276,397,278,381,280,366,276,356,264,347,250,340,241,331,232,326"
		              shape="poly"
		            />
		            <area
		              target="_blank"
		              alt="서초구"
		              title="서초구"
		              href="/seocho"
		              coords="271,346,278,352,283,362,282,377,281,391,284,410,293,425,306,428,306,435,313,438,324,430,336,422,345,424,348,429,350,445,351,457,354,471,367,480,380,484,387,482,391,470,399,466,409,463,413,455,419,452,422,442,430,438,416,426,414,416,404,412,393,414,388,419,378,422,370,424,362,410,357,395,347,385,337,375,334,361,332,351,328,343,320,322,317,315,303,329,296,337,286,342"
		              shape="poly"
		            />
		            <area
		              target="_blank"
		              alt="강남구"
		              title="강남구"
		              href="/gangnam"
		              coords="330,305,322,309,324,318,328,327,330,343,337,354,339,371,344,378,355,387,362,394,366,409,370,416,383,417,390,412,401,407,414,407,418,413,421,423,433,433,445,434,455,431,460,425,465,422,455,403,451,388,442,383,437,372,424,369,407,364,394,346,392,330,392,321,374,315,360,305"
		              shape="poly"
		            />
		            <area
		              target="_blank"
		              alt="송파구"
		              title="송파구"
		              href="/songpa"
		              coords="398,326,397,347,415,363,427,367,438,370,447,381,456,387,461,406,468,417,471,423,479,411,486,411,490,399,500,392,503,380,509,370,512,365,492,357,486,351,484,345,489,332,478,325,468,317,462,306,464,295,464,287,458,286,448,299,438,312,430,322,415,324"
		              shape="poly"
		            />
		            <area
		              target="_blank"
		              alt="강동구"
		              title="강동구"
		              href="/gangdong"
		              coords="470,285,469,292,466,302,470,307,476,317,483,320,486,314,499,311,504,301,505,293,518,288,535,282,543,272,539,258,543,248,538,236,532,232,527,227,509,238,495,241,483,243,472,251,464,261,461,273,462,279"
		              shape="poly"
		            />
		            <area
		              target="_blank"
		              alt="마포구"
		              title="마포구"
		              href="/mapo"
		              coords="117,215,127,228,148,248,168,264,194,276,212,285,228,297,242,288,250,275,254,262,250,251,240,254,225,252,212,247,197,232,180,217,168,207,155,198,149,192,144,202,135,206,122,208"
		              shape="poly"
		            />
		            <area
		              target="_blank"
		              alt="서대문구"
		              title="서대문구"
		              href="/seodaemoon"
		              coords="188,204,184,212,192,224,199,232,210,242,218,248,232,252,245,252,256,246,256,238,245,226,248,214,250,200,249,186,242,180,241,172,235,173,230,182,223,187,218,190,212,198,204,198,194,197"
		              shape="poly"
		            />
		            <area
		              target="_blank"
		              alt="은평구"
		              title="은평구"
		              href="/eunpyeong"
		              coords="157,193,177,208,186,196,200,193,209,194,215,183,223,182,229,173,235,167,241,159,243,145,246,129,257,111,257,99,253,86,243,79,237,73,227,83,221,83,213,86,205,90,199,91,190,91,190,117,185,129,183,150,182,168,180,180,176,187,170,190"
		              shape="poly"
		            />
		            <area
		              target="_blank"
		              alt="용산구"
		              title="용산구"
		              href="/yongsan"
		              coords="258,269,253,279,246,289,234,301,238,306,250,319,261,329,273,331,286,327,298,315,308,307,318,297,322,291,317,276,308,271,296,271,286,264,272,264"
		              shape="poly"
		            />
		            <area
		              target="_blank"
		              alt="중구"
		              title="중구"
		              href="/joong"
		              coords="268,238,262,243,256,250,256,256,267,262,275,262,284,261,290,262,299,264,310,266,316,268,323,262,330,255,334,246,335,236,320,237,304,235,296,239,290,236,280,232"
		              shape="poly"
		            />
		            <area
		              target="_blank"
		              alt="종로구"
		              title="종로구"
		              href="/jongro"
		              coords="256,200,250,216,253,224,259,231,272,230,280,228,290,228,294,232,317,228,332,228,336,220,320,219,312,212,304,192,288,186,280,184,280,174,287,166,286,152,280,129,276,118,268,118,258,122,252,132,246,147,246,169,254,180,256,185,256,193"
		              shape="poly"
		            />
		            <area
		              target="_blank"
		              alt="성북구"
		              title="성북구"
		              href="/seongbook"
		              coords="282,116,287,110,294,119,305,125,314,130,320,141,325,154,334,160,343,159,358,159,366,153,371,146,375,138,381,144,386,150,392,153,400,156,401,163,398,169,381,172,373,176,367,183,362,190,356,194,349,201,342,207,338,216,326,216,320,213,316,204,310,192,304,186,294,184,284,180,288,173,293,166,291,155,284,132"
		              shape="poly"
		            />
		            <area
		              target="_blank"
		              alt="강북구"
		              title="강북구"
		              href="/gangbook"
		              coords="289,84,291,68,298,56,302,42,305,33,315,29,320,37,318,47,318,61,317,72,322,77,326,83,332,87,338,90,344,96,353,105,362,116,369,127,371,133,366,144,360,151,352,155,338,154,330,153,328,140,322,129,310,123,300,115,292,110,291,97"
		              shape="poly"
		            />
		            <area
		              target="_blank"
		              alt="도봉구"
		              title="도봉구"
		              href="/dobong"
		              coords="323,35,321,59,322,72,328,78,334,84,342,86,352,96,363,108,371,116,377,104,379,84,380,70,374,52,376,35,379,20,371,12,358,8,353,3,345,1,331,2,329,10,325,20"
		              shape="poly"
		            />
		            <area
		              target="_blank"
		              alt="노원구"
		              title="노원구"
		              href="/nowon"
		              coords="384,65,379,50,383,36,386,16,396,9,405,3,413,5,420,11,430,16,437,20,433,26,429,34,431,43,437,53,433,62,430,72,430,88,435,94,446,97,451,100,454,109,457,116,455,122,447,128,445,136,431,142,416,144,405,149,394,150,383,140,377,130,373,121,381,119,383,100,387,84"
		              shape="poly"
		            />
		            <area
		              target="_blank"
		              alt="동대문구"
		              title="동대문구"
		              href="/dongdaemoon"
		              coords="347,209,342,220,341,230,345,235,352,231,359,229,371,235,374,240,381,241,391,246,399,247,404,240,408,229,403,217,403,204,403,191,402,177,393,175,385,177,372,184,369,194,361,197,352,203"
		              shape="poly"
		            />
		            <area
		              target="_blank"
		              alt="성동구"
		              title="성동구"
		              href="/seongdong"
		              coords="339,238,339,246,335,254,329,260,325,270,323,282,326,292,337,290,350,290,361,293,371,299,381,302,385,294,387,284,392,278,396,269,399,254,387,250,372,241,365,233,353,234,348,239"
		              shape="poly"
		            />
		            <area
		              target="_blank"
		              alt="광진구"
		              title="광진구"
		              href="/gwangjin"
		              coords="413,235,407,247,403,259,401,272,397,280,390,291,386,304,395,308,409,308,423,306,431,296,442,283,448,270,448,258,441,258,437,250,435,238,439,232,435,227,429,233"
		              shape="poly"
		            />
		            <area
		              target="_blank"
		              alt="중랑구"
		              title="중랑구"
		              href="/joonglang"
		              coords="407,156,412,152,426,147,445,146,454,148,461,154,462,163,457,170,456,176,457,193,454,202,446,210,439,220,434,224,424,230,413,228,411,208,408,188,406,172"
		              shape="poly"
		            />
		          </map>
	          	</div>
        	</div>
      	</div>
	<!-- 지도 종료-->
      
	<!-- 마켓리스트 -->
		<div class="col-lg-6 mt-1 flex-fill">
	            <div id="marketlist" style="overflow:auto; width:auto; height:420px; align-content: center; padding: 10px 20px 20px 20px">
	            <div class="col-lg-12">
	                  <img
		              src="../resources/img/marketlistlogo.png"
		              style="max-width: 100%; height: auto; align-content: center"
		           	  />
	                  <ul class="list-unstyled templatemo-accordion">
	                      <li class="pb-3">
	                          <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="#">
	                              오픈중
								<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-down-circle" viewBox="0 0 16 16">
									<path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8zm15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM8.5 4.5a.5.5 0 0 0-1 0v5.793L5.354 8.146a.5.5 0 1 0-.708.708l3 3a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 10.293V4.5z"/>
								</svg>
	                          </a>
	                          <ul class="collapse show list-unstyled pl-3" id="openmarket">
	                              <c:forEach items='${list}' var="item" varStatus="">
	                              	<c:if test="${item.marketStatus==2}">
	                                	<li><a class="text-decoration-none market-detail" href="${item.marketNo}" data-gu="${item.marketLoc}">${item.marketName}</a></li>
	                                </c:if>
	                              </c:forEach>                              
	                          </ul>
	                      </li>
	                      <li class="pb-3">
	                          <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="#">
	                              오픈예정
								<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-down-circle" viewBox="0 0 16 16">
									<path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8zm15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM8.5 4.5a.5.5 0 0 0-1 0v5.793L5.354 8.146a.5.5 0 1 0-.708.708l3 3a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 10.293V4.5z"/>
								</svg>
	                          </a>
	                          <ul class="collapse show list-unstyled pl-3" id="willopenmarket">
	                              <c:forEach items='${list}' var="item" varStatus="">
	                              	<c:if test="${item.marketStatus==1}">
	                                	<li><a class="text-decoration-none market-detail" href="${item.marketNo}" data-gu="${item.marketLoc}">${item.marketName}</a></li>
	                                </c:if>
	                              </c:forEach>  
	                          </ul>
	                      </li>
	                  </ul>
	            </div>   
	     		</div>
		</div>
	<!-- 마켓리스트 종료 -->
	
		</div>
	</div>
</section>
<!-- 컨텐트 종료 -->

<!--  마켓리스트 마켓 연결 script -->
<script>
$(function(){
	
	$(".market-detail").click(function(e){
		e.preventDefault();
		
		let marketNo = $(this).attr('href');
		location.href = "/market/market_detail?marketNo=" + marketNo;
	})
	
})

let msg = "${msg}";
	if(msg != ""){
		alert(msg);
	}

</script>

<!--  마켓리스트 마켓 연결 script 종료 -->
    
<%@ include file="./include/footer.jsp" %>