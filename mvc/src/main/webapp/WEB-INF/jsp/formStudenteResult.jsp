<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html>
<head>
<style>
table {
    width:100%;
}
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
th, td {
    padding: 5px;
    text-align: left;
}
table#t01 tr:nth-child(even) {
    background-color: #eee;
}
table#t01 tr:nth-child(odd) {
   background-color:#fff;
}
table#t01 th {
    background-color: black;
    color: white;
}
</style>
</head>
<body>
<img width="100" align=right src="https://image.spreadshirtmedia.com/image-server/v1/mp/designs/103850169,width=178,height=178/illuminatipng-long-sleeve-shirts.png">
<p style="font-size: 100px" align="center">UNIVERSIT� GROSSA</p>

<table style="font-size: 30px" id="t01">
    <tr align="left">
      <th>Matricola</th>
      <th>Cognome</th>
      <th>Nome</th>
      <!-- <th>Data di nascita</th> -->
      <th>Data d'iscrizione</th>
      <th>Sesso</th>
      <!-- <th>Luogo di nascita</th>
      <th>Link</th> -->
      <th>Corso di Laurea</th>
    </tr>
  	<tr align="left">
  	  <td>${stu.getStuMatricola()}</td>
      <td>${stu.getStuCognome()}</td>
      <td>${stu.getStuNome()}</td>
      <%-- <td>${stu.getStuDataNascita()}</td> --%>
      <td>${stu.getStuIscrizione()}</td>
      <td>${stu.getStuSesso()}</td>
      <td>${stu.getStuCorsoDiLaurea().getCdlNome()}</td>
      <%-- <td>${stu.getStuLuogoNascita()}</td>
      <td><a href="https://www.google.it/search?q=${stu.getStuCognome()}">${stu.getStuCognome()}</a><br></td> --%>
    </tr>
</table>

</body>
</html>