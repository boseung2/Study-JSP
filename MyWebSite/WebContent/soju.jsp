<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주루마블</title>
<style>
	body {
	  	font-family: Arial, Helvetica, sans-serif;
	}
	
	div.all {
		display: flex;
	}
	
	button {
	  background-color: #f44336;
	  color: white;
	  padding: 15px 25px;
	  text-align: center;
	  text-decoration: none;
	  display: inline-block;
	}
	
    table, th, td {
        border: 1px solid black;
        border-collapse: collapse;
    }
    
    table {
        width: 80%;
        height: 600px;
        margin: 0;
        padding: 0;
    }
    
    .goldblock {
        background-color: rgb(233, 204, 132);
        text-align: center;
        width: 400px;
        height: 100px;
    }
    .whiteblock {
        background-color: white;
        text-align: center;
        width: 400px;
        height: 100px;
    }

    #center {
        font-size: 50px;
        text-align: center;
    }
</style>
</head>
<body>
<%
int random1 = (int) (Math.random() * 6 + 1);
int random2 = (int) (Math.random() * 6 + 1);
int sum = random1 + random2; 
%>
<div class="all">
<div class="a">
<table>
        <tr>
          <td class="goldblock" id="8">8</td>
          <td class="goldblock" id="9">9</td>
          <td class="goldblock" id="10">10</td>
          <td class="goldblock" id="11">11</td>
          <td class="goldblock" id="12">12</td>
          <td class="goldblock" id="13">13</td>
          <td class="goldblock" id="14">14</td>
          <td class="goldblock" id="15">15</td>
          <td class="goldblock" id="16">16</td>
          <td class="goldblock" id="17">17</td>
          <td class="goldblock" id="18">18</td>
          <td class="goldblock" id="19">19</td>
        </tr>
        <tr>
            <td class="goldblock" id="7">7</td>
            <td colspan="10" rowspan="6" id="center">주루마블</td>
            <td class="goldblock" id="20">20</td>
          </tr>
          <tr>
            <td class="goldblock" id="6">6</td>
            <td class="goldblock" id="21">21</td>
          </tr>
          <tr>
            <td class="goldblock" id="5">5</td>
            <td class="goldblock" id="22">22</td>
          </tr>
          <tr>
            <td class="goldblock" id="4">4</td>
            <td class="goldblock" id="23">23</td>
          </tr>
          <tr>
            <td class="goldblock" id="3">3</td>
            <td class="goldblock" id="24">24</td>
          </tr>
          <tr>
            <td class="goldblock" id="2">2</td>
            <td class="goldblock" id="25">25</td>
          </tr>
          <tr>
            <td class="goldblock" id="1">1</td>
            <td class="goldblock" id="36">36</td>
            <td class="goldblock" id="35">35</td>
            <td class="goldblock" id="34">34</td>
            <td class="goldblock" id="33">33</td>
            <td class="goldblock" id="32">32</td>
            <td class="goldblock" id="31">31</td>
            <td class="goldblock" id="30">30</td>
            <td class="goldblock" id="29">29</td>
            <td class="goldblock" id="28">28</td>
            <td class="goldblock" id="27">27</td>
            <td class="goldblock" id="26">26</td>
          </tr>
      </table>
</div>
<div class="b">
<% 
for(int i=1; i<=6; i++) {
	for(int j=1; j<=6; j++) {
		if(random1 == i && random2 == j) {
%>
<img src="/image/dice<%=random1 %>.jpg" alt="dice\"><br>
<img src="/image/dice<%=random2 %>.jpg" alt="dice\"><br>
<% 
				}
			}
		}
%>
<button onclick="document.location='soju.jsp'">Throw dice</button>
<%=sum %>
</div>
</div>
</body>
</html>