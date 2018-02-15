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

a {
	text-decoration : none;
	color : #000;
}

</style>
</head>
<body>
<img width="100" align=right src="https://image.spreadshirtmedia.com/image-server/v1/mp/designs/103850169,width=178,height=178/illuminatipng-long-sleeve-shirts.png">
<p style="font-size: 100px" align="center">UNIVERSIT└ GROSSA</p>

<h2>Corso di Laurea: ${cm.cdl.cdlNome}</h2>
<h2>ID: ${cm.cdl.cdlId}</h2>
<h2>Durata: ${cm.cdl.cdlDurata}</h2>
<h2>Studenti iscritti: ${cm.cdl.cdlStudenti.size()}</h2>
<h2>Materie: ${cm.mats.size()}</h2>

<table style="font-size: 20px" id="t01">
    <tr align="left">
      <th>Matricola</th>
      <th>Cognome</th>
      <th>Nome</th>
      <th>Data di nascita</th>
      <th>Data d'iscrizione</th>
      <th>Sesso</th>
      <th>Luogo di nascita</th>
    </tr>
  <c:forEach var="stu" items="${cm.cdl.cdlStudenti}">
  	<tr align="left">
  	  <td>${stu.getStuMatricola()}</td>
      <td><a href="https://www.google.it/search?q=${stu.getStuCognome()}+${stu.getStuNome()}">${stu.getStuCognome()}</a></td>
      <td>${stu.getStuNome()}</td>
      <td>${stu.getStuDataNascita()}</td>
      <td>${stu.getStuIscrizione()}</td>
      <td>${stu.getStuSesso()}</td>
      <td>${stu.getStuLuogoNascita()}<br></td>
    </tr>
	</c:forEach>
</table>

<br><br><br>

<table style="font-size: 20px" id="t01">
    <tr align="left">
      <th>ID</th>
      <th>Materia</th>
      <th>Crediti</th>
      <th>Anno accademico</th>
      <th>Anno corso</th>
      <th>Studenti iscritti</th>
    </tr>
  <c:forEach var="mat" items="${cm.mats}">
  	<tr align="left">
  	  <td>${mat.id.matId}</td>
      <td>${mat.matNome}</td>
      <td>${mat.matCrediti}</td>
      <td>${mat.id.matAnnoAccademico}</td>
      <td>${mat.matAnnoCorso}</td>
      <td>${mat.matStudenti.size()}<br></td>
    </tr>
	</c:forEach>
</table>

</body>
</html>
