<jsp:useBean class="com.sda.jsp.Calculation" id="calc" scope="application"/>
<jsp:useBean class="com.sda.jsp.Calculation" id="calc2"/>

kwadrat z 5:
<%
  int result = calc.square(5);
  out.print(result);
%>
<br>

wartosc multiplier:
<jsp:getProperty property="multiplier" name="calc"/><br>

resultat metody multiply z 5*6:
<%
  out.print(calc.multiply(5));
%>
<br>

resultat metody multiply z 5*10:
<jsp:setProperty property="multiplier" name="calc" value="10"/>
<%
  out.print(calc.multiply(5));
%>
<br>

<jsp:getProperty property="multiplier" name="calc2"/><br>