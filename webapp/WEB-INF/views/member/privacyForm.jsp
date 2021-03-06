<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PrivacyForm</title>
<link rel="stylesheet" type="text/css"
	href="resources/jsLib/homeStyle.css">
<style>
.privacyForm {
	
}

.privacy-title {
	background-color: #bbb;
	color: white;
	text-align: center;
    padding:10px;
}

.privacy-main {
	background-color: white;
	width: 750px;
	position: absolute;
	left: 50%;
	margin-left: -325px;
	border: solid 1px #d8d8d8;
	border-radius: 5px;
	padding-bottom: 50px;
}

.privacy-container {
}
.privacy-content{
	padding:10px;
	overflow: auto;
}
ol {
    display: block;
    list-style-type: decimal;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
}
</style>
</head>
<body>
	<%@ include file="/WEB-INF/views/everyUsing/navBar.jsp"%>
	<div class="privacy-container">
		<div class="privacy-main">
			<div class="privacy-title">
				<h1>개인정보취급방침</h1>
			</div>
			<div class="privacy-content">
			<div class="privacy-contents">
        <h3>1. 개인정보의 처리 목적</h3>
        <p>&lt;앵커리어&gt; (‘http://jasoseol.com’이하 ‘자소설닷컴’) 은(는) 다음의 목적을 위하여 개인정보를 처리하고 있으며, 다음의 목적 이외의 용도로는 이용하지 않습니다.</p>
        <ol>
          <li>고객 가입의사 확인, 고객에 대한 서비스 제공에 따른 본인 식별.인증, 회원자격 유지.관리, 물품 또는 서비스 공급에 따른 금액 결제, 물품 또는 서비스의 공급.배송 등</li>
        </ol>
        <h3>2. 개인정보처리 위탁</h3>
        <ol>
          <li>&lt;앵커리어&gt; ('자소설닷컴') 은(는) 원활한 개인정보 업무처리를 위하여 다음과 같이 개인정보 처리업무를 위탁하고 있습니다.</li>
          <li>&lt;앵커리어&gt; ('http://jasoseol.com'이하 '자소설닷컴') 은(는) 위탁계약 체결시 개인정보 보호법 제25조에 따라 위탁업무 수행목적 외 개인정보 처리금지, 기술적․관리적 보호조치, 재위탁 제한, 수탁자에 대한 관리․감독, 손해배상 등 책임에 관한 사항을 계약서 등 문서에 명시하고, 수탁자가 개인정보를 안전하게 처리하는지를 감독하고 있습니다.</li>
          <li>위탁업무의 내용이나 수탁자가 변경될 경우에는 지체없이 본 개인정보 처리방침을 통하여 공개하도록 하겠습니다.</li>
        </ol>
        <h3>3. 정보주체의 권리, 의무 및 그 행사방법</h3>
        <p>이용자는 개인정보주체로서 다음과 같은 권리를 행사할 수 있습니다.</p>
        <ol>
          <li>정보주체는 &lt;기관/회사명&gt; (‘사이트URL’이하 ‘사이트명) 에 대해 언제든지 다음 각 호의 개인정보 보호 관련 권리를 행사할 수 있습니다.
            <ol>
              <li>개인정보 열람요구</li>
              <li>오류 등이 있을 경우 정정 요구</li>
              <li>삭제요구</li>
              <li>처리정지 요구</li>
            </ol>
          </li>
        </ol>
        <h3>4. 처리하는 개인정보의 항목 작성</h3>
        <ol>
          <li>&lt;앵커리어&gt; ('http://jasoseol.com'이하 '자소설닷컴') 은(는) 다음의 개인정보 항목을 처리하고 있습니다.
            <table class="table-1">
              <thead>
                <tr>
                  <th>수집방법</th>
                  <th>분류</th>
                  <th>수집항목</th>
                  <th>수집 및 이용 목적</th>
                  <th>보유 및 이용기간</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>회원가입</td>
                  <td>필수</td>
                  <td>아이디(이메일주소), 비밀번호, 닉네임(소셜계정)</td>
                  <td>회원의 가입 및 서비스 제공, 관리, CS</td>
                  <td>회원 탈퇴 시 3개월 이내에 파기</td>
                </tr>
                <tr>
                  <td>추천 공고 이용</td>
                  <td>선택</td>
                  <td>학교/전공, 선호하는 직무군</td>
                  <td>회원 맞춤형 채용공고 제공, 맞춤형 정보 및 광고 제공</td>
                  <td>회원 탈퇴 시 3개월 이내에 파기</td>
                </tr>
                <tr>
                  <td>서비스 이용</td>
                  <td>자동생성, 수집</td>
                  <td>쿠키, 서비스 이용기록, 모바일 기기 정보</td>
                  <td>
                    맞춤형 사용환경 제공, 접속자 관리,<br>
                    사용자 활동 통계 확인 및 이벤트/프로모션 이용
                  </td>
                  <td>회원 탈퇴 시 3개월 이내에 파기</td>
                </tr>
              </tbody>
            </table>
          </li>
        </ol>
        <h3>5. 개인정보 자동 수집 장치의 설치/운영 및 거부에 관한 사항</h3>
        <p>1) 쿠키란?</p>
        <ul>
          <li>
            <p>회사는 개인화되고 맞춤화된 서비스를 제공하기 위해서 이용자의 정보를 저장하고 수시로 불러오는 '쿠키(cookie)'를 사용합니다. </p>
          </li>
          <li>
            <p>쿠키는 웹사이트를 운영하는데 이용되는 서버가 이용자의 브라우저에게 보내는 아주 작은 텍스트 파일로 이용자 컴퓨터의 하드디스크에 저장됩니다. 이후 이용자가 웹 사이트에 방문할 경우 웹 사이트 서버는 이용자의 하드 디스크에 저장되어 있는 쿠키의 내용을 읽어 이용자의 환경설정을 유지하고 맞춤화된 서비스를 제공하기 위해 이용됩니다. </p>
          </li>
          <li>
            <p>쿠키는 웹사이트를 운영하는데 이용되는 서버가 이용자의 브라우저에게 보내는 아주 작은 텍스트 파일로 이용자 컴퓨터의 하드디스크에 저장됩니다. 이후 이용자가 웹 사이트에 방문할 경우 웹 사이트 서버는 이용자의 하드 디스크에 저장되어 있는 쿠키의 내용을 읽어 이용자의 환경설정을 유지하고 맞춤화된 서비스를 제공하기 위해 이용됩니다. </p>
          </li>
        </ul>

        <p>2) 회사의 쿠키 사용 목적</p>
        <ul>
          <li>
            <p>이용자들이 방문한 서비스의 맞춤형 사용환경 제공, 접속자 관리, 사용자 활동 통계 확인 등에 사용합니다.</p>
          </li>
        </ul>
        <p>3) 회사의 쿠키 사용 목적 </p>
        <ul>
          <li>
            <p>이용자는 쿠키 설치에 대한 선택권을 가지고 있습니다. 따라서 이용자는 웹브라우저에서 옵션을 설정함으로써 모든 쿠키를 허용하거나, 쿠키가 저장될 때마다 확인을 거치거나, 아니면 모든 쿠키의 저장을 거부할 수도 있습니다. (설정방법 예(인터넷 익스플로어의 경우) : 웹 브라우저 상단의 도구 &gt; 인터넷 옵션 &gt; 개인정보)</p>
          </li>
          <li>
            <p>다만, 쿠키의 저장을 거부할 경우에는 일부 서비스 이용에 어려움이 있을 수 있습니다.</p>
          </li>
        </ul>

        <h3>6. 개인정보의 파기</h3>
        <p>&lt;앵커리어&gt; ('자소설닷컴') 은(는) 원칙적으로 개인정보 처리목적이 달성된 경우에는 지체없이 해당 개인정보를 파기합니다. 파기의 절차, 기한 및 방법은 다음과 같습니다.</p>
        <ul>
          <li>파기절차
            <p>이용자가 입력한 정보는 목적 달성 후 별도의 DB에 옮겨져(종이의 경우 별도의 서류) 내부 방침 및 기타 관련 법령에 따라 일정기간 저장된 후 혹은 즉시 파기됩니다. 이 때, DB로 옮겨진 개인정보는 법률에 의한 경우가 아니고서는 다른 목적으로 이용되지 않습니다.</p>
          </li>
          <li>파기기한
            <p>이용자의 개인정보는 개인정보의 보유기간이 경과된 경우에는 보유기간의 종료일로부터 5일 이내에, 개인정보의 처리 목적 달성, 해당 서비스의 폐지, 사업의 종료 등 그 개인정보가 불필요하게 되었을 때에는 개인정보의 처리가 불필요한 것으로 인정되는 날로부터 5일 이내에 그 개인정보를 파기합니다.</p>
          </li>
        </ul>
        <h3>7. 개인정보의 안전성 확보 조치</h3>
        <p>&lt;앵커리어&gt; ('자소설닷컴') 은(는) 개인정보보호법 제29조에 따라 다음과 같이 안전성 확보에 필요한 기술적/관리적 및 물리적 조치를 하고 있습니다.</p>
        <ol>
          <li>개인정보 취급 직원의 최소화 및 교육
            <p>개인정보를 취급하는 직원을 지정하고 담당자에 한정시켜 최소화 하여 개인정보를 관리하는 대책을 시행하고 있습니다.</p>
          </li>
          <li>정기적인 자체 감사 실시
            <p>개인정보 취급 관련 안정성 확보를 위해 정기적(분기 1회)으로 자체 감사를 실시하고 있습니다.</p>
          </li>
          <li>내부관리계획의 수립 및 시행
            <p>개인정보의 안전한 처리를 위하여 내부관리계획을 수립하고 시행하고 있습니다.</p>
          </li>
          <li>개인정보의 암호화
            <p>이용자의 개인정보 및 비밀번호는 암호화 되어 저장 및 관리되고 있어 본인만이 알 수 있으며, 중요한 데이터에 대해서는 파일 및 전송 데이터를 암호화 하거나 파일 잠금 기능을 사용하는 등의 별도 보안기능을 사용하고 있습니다.</p>
          </li>
          <li>해킹 등에 대비한 기술적 대책
            <p>&lt; 앵커리어 &gt;(' 자소설닷컴 ')은 해킹이나 컴퓨터 바이러스 등에 의한 개인정보 유출 및 훼손을 막기 위하여 보안프로그램을 설치하고 주기적인 갱신·점검을 하며 외부로부터 접근이 통제된 구역에 시스템을 설치하고 기술적/물리적으로 감시 및 차단하고 있습니다.</p>
          </li>
          <li>개인정보에 대한 접근 제한
            <p>개인정보를 처리하는 데이터베이스시스템에 대한 접근권한의 부여,변경,말소를 통하여 개인정보에 대한 접근통제를 위하여 필요한 조치를 하고 있으며 침입차단시스템을 이용하여 외부로부터의 무단 접근을 통제하고 있습니다.</p>
          </li>
          <li>접속기록의 보관 및 위변조 방지
            <p>개인정보처리시스템에 접속한 기록을 최소 6개월 이상 보관, 관리하고 있으며, 접속 기록이 위변조 및 도난, 분실되지 않도록 보안기능 사용하고 있습니다.</p>
          </li>
          <li>비인가자에 대한 출입 통제
            <p>개인정보를 보관하고 있는 물리적 보관 장소를 별도로 두고 이에 대해 출입통제 절차를 수립, 운영하고 있습니다.</p>
          </li>
        </ol>
        <h3>8. 개인정보 보호책임자 작성</h3>
        <ol>
          <li>앵커리어(‘http://jasoseol.com’이하 ‘자소설닷컴) 은(는) 개인정보 처리에 관한 업무를 총괄해서 책임지고, 개인정보 처리와 관련한 정보주체의 불만처리 및 피해구제 등을 위하여 아래와 같이 개인정보 보호책임자를 지정하고 있습니다.
            <ul>
              <li>개인정보 보호책임자
                <ul>
                  <li>성명: 윤상호</li>
                  <li>직책: CEO</li>
                  <li>직급: CEO</li>
                  <li>연락처: 010-2212-4354, ysh@jasoseol.com<br>※ 개인정보 보호 담당부서로 연결됩니다.</li>
                </ul>
              </li>
              <li>개인정보 보호 담당부서
                <ul>
                  <li>부서명: 앵커리어</li>
                  <li>담당자: 윤상호</li>
                  <li>연락처: 010-2212-4354, ysh@jasoseol.com</li>
                </ul>
              </li>
            </ul>
          </li>
          <li>정보주체께서는 앵커리어(‘http://jasoseol.com’이하 ‘자소설닷컴) 의 서비스(또는 사업)을 이용하시면서 발생한 모든 개인정보 보호 관련 문의, 불만처리, 피해구제 등에 관한 사항을 개인정보 보호책임자 및 담당부서로 문의하실 수 있습니다. 앵커리어(‘http://jasoseol.com’이하 ‘자소설닷컴) 은(는) 정보주체의 문의에 대해 지체 없이 답변 및 처리해드릴 것입니다.</li>
        </ol>
        <h3>9. 개인정보 처리방침 변경</h3>
        <ol>
          <li>이 개인정보처리방침은 시행일로부터 적용되며, 법령 및 방침에 따른 변경내용의 추가, 삭제 및 정정이 있는 경우에는 변경사항의 시행 7일 전부터 공지사항을 통하여 고지할 것입니다.</li>
        </ol>
      </div>
			</div>
		</div>
	</div>
	
</body>
</html>