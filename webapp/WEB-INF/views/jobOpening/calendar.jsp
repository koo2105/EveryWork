<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
Calendar cal = Calendar.getInstance();
String strYear = request.getParameter("year");
String strMonth = request.getParameter("month");
 

int year = cal.get(Calendar.YEAR);
int month = cal.get(Calendar.MONTH);
int date = cal.get(Calendar.DATE);
 
if(strYear != null)
{
  year = Integer.parseInt(strYear);
  month = Integer.parseInt(strMonth);
 
}else{
 
}
//년도/월 셋팅
cal.set(year, month, 1);
 
int startDay = cal.getMinimum(java.util.Calendar.DATE);
int endDay = cal.getActualMaximum(java.util.Calendar.DAY_OF_MONTH);
int start = cal.get(java.util.Calendar.DAY_OF_WEEK);
int newLine = 0;
 
//오늘 날짜 저장.
Calendar todayCal = Calendar.getInstance();
SimpleDateFormat sdf = new SimpleDateFormat("yyyMMdd");
int intToday = Integer.parseInt(sdf.format(todayCal.getTime())); %>
<!DOCTYPE html>
<html>
<HEAD>
       <TITLE>캘린더</TITLE>
       <meta http-equiv="content-type" content="text/html; charset=utf-8"> 
      <script src="resources/jsLib/jquery-3.2.1.min.js"></script>
      <script src="resources/jsLib/namchulAjax.js"></script>
     <script>

    

     </script>
       <style TYPE="text/css">
             td {font-family: "돋움"; font-size: 9pt; color:#595959;}
             th {font-family: "돋움"; font-size: 9pt; color:#000000;}
             select {font-family: "돋움"; font-size: 9pt; color:#595959;}
             .divDotText {
             overflow:hidden;
             text-overflow:ellipsis;
             }


       </style>
</HEAD>
<BODY>
<form name="calendarFrm" id="calendarFrm" action="" method="post">
<DIV id="content" style="width:994px;">

<table width="100%" border="0" cellspacing="1" cellpadding="1">
</table>
<!--날짜 네비게이션  -->
<table width="100%" border="0" cellspacing="1" cellpadding="1" id="KOO" bgcolor="#F3F9D7" style="border:1px solid #CED99C">
 
<tr>
<td height="60">
       <table width="100%" border="0" cellspacing="0" cellpadding="0">
       <tr>
             <td height="10">
             </td>
       </tr>

       <tr>
             <td align="center" >
                     <a href="#" onclick="movecal(<%=year-1%>,<%=month%>)"><b>&lt;&lt;</b></a>
                    <%if(month > 0 ){ %>
                   <a href="#" onclick="movecal(<%=year%>,<%=month-1%>)"><b>&lt;</b></a>
                    <%} else {%>
                           <b>&lt;</b>
                    <%} %>
                    &nbsp;&nbsp;
                    <%=year%>년
                    <%=month+1%>월
                    &nbsp;&nbsp;
                    <%if(month < 11 ){ %>
                    <a href="#" onclick="movecal(<%=year%>,<%=month+1%>)"><b>&gt;</b></a>
                    <%}else{%>
                           <b>&gt;</b>
                    <%} %>
                   <a href="#" onclick="movecal(<%=year+1%>,<%=month%>)"><b>&gt;&gt;</b></a>
             </td>
       </tr>
       </table>
</td>
</tr>
</table>
<table border="0" cellspacing="1" cellpadding="1" bgcolor="#FFFFFF">
<THEAD>
<TR bgcolor="#CECECE">
       <TD width='142px'>
       <DIV align="center"><font color="red">SUN</font></DIV>
       </TD>
       <TD width='142px'>
       <DIV align="center">MON</DIV>
       </TD>
       <TD width='142px'>
       <DIV align="center">TUE</DIV>
       </TD>
       <TD width='142px'>
       <DIV align="center">WED</DIV>
       </TD>
       <TD width='142px'>
       <DIV align="center">THR</DIV>
       </TD>
       <TD width='142px'>
       <DIV align="center">FRI</DIV>
       </TD>
       <TD width='142px'>
       <DIV align="center"><font color="#529dbc">SET</font></DIV>
       </TD>
</TR>
</THEAD>
<TBODY>
<TR>
<%
//처음 빈공란 표시
for(int index = 1; index < start ; index++ )
{
  out.println("<TD >&nbsp;</TD>");
  newLine++;
}
       
for(int index = 1; index <= endDay; index++)
{
       String color = "";
 
       if(newLine == 0){          color = "RED";
       }else if(newLine == 6){    color = "#529dbc";
       }else{                     color = "BLACK"; };
 
       String sUseDate = Integer.toString(year); 
       sUseDate += Integer.toString(month+1).length() == 1 ? "0" + Integer.toString(month+1) : Integer.toString(month+1);
       sUseDate += Integer.toString(index).length() == 1 ? "0" + Integer.toString(index) : Integer.toString(index);
 
       int iUseDate = Integer.parseInt(sUseDate);
       String backColor = "#EFEFEF";
       if(iUseDate == intToday ) {
             backColor = "#c9c9c9";
       }
       out.println("<TD valign='top' align='left' height='92px' bgcolor='"+backColor+"' nowrap>");
       %>
       <font color='<%=color%>'>
             <%=index %>
       </font> 

       <%
       out.println("<BR>");
       out.println("<a href='#' onclick='jDetailOpen()'>누르면 div가 나와라</a>");
       out.println("<div> 들어가나?</div>");
       out.println("<div> 들어가나?</div>");
       out.println("<div> 들어가나?</div>");
       out.println("<div> 들어가나?</div>");
       out.println("<div> 들어가나?</div>");
       out.println("<div> 들어가나?</div>");
       out.println("<div> 들어가나?</div>");
       out.println("<div> 들어가나?</div>");
       out.println("<div> 들어가나?</div>");
       out.println("<div> 들어가나?</div>");
       out.println("<div> 들어가나?</div>");
       out.println("<div> 들어가나?</div>");
       out.println("<div> 들어가나?</div>");
       out.println("<BR>");

       //기능 제거 
       out.println("</TD>");
       newLine++; 
       if(newLine == 7)
       {
         out.println("</TR>");
         if(index <= endDay)
         {
           out.println("<TR>");
         }
         newLine=0;
       }
}
//마지막 공란 LOOP
while(newLine > 0 && newLine < 7)
{
  out.println("<TD>&nbsp;</TD>");
  newLine++;
}%>
</TR>
</TBODY>
</TABLE>
</DIV>
</form>
</BODY>
</html>