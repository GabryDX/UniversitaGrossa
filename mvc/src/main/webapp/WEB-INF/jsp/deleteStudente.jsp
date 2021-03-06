<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<html>
<head>
<link href="/corso/resources/css/grafica.css" rel="stylesheet" type="text/css">

<script type="text/javascript">

function check(event) {
	if(event.checked==true) {
	    //alert("Checked");
	    var a = event.target
	    prev = document.getElementById("lista").value
	    var lista = document.getElementById("lista").value
	    lista = lista + ";" + event.value
	    document.getElementById("lista").value = lista
	}
	else {
	    //alert("Unchecked");
		var lista = document.getElementById("lista").value
		lista = lista.replace(";"+event.value, "")
		document.getElementById("lista").value = lista
	}
}
</script>

</head>
<body>
	<a href="../universita">
		<img width="100" align=right src="https://image.spreadshirtmedia.com/image-server/v1/mp/designs/103850169,width=178,height=178/illuminatipng-long-sleeve-shirts.png">
	</a>
	<p id="uni"><spring:message code="label.universita"/></p>

	<%-- <h1>Numero studenti: ${stuList.size()}</h1> --%>

	<h1>Seleziona di studenti da rimuovere:</h1>
	<form:form method="POST" action="/corso/universita/mostraStudenteQuery"	modelAttribute="sdf">
		
		<form:hidden path="delete" id="lista" />
		
		<table style="font-size: 20px" class="t01">
			<tr align="left">
				<th></th>
				<th>Matricola</th>
				<th>Cognome</th>
				<th>Nome</th>
				<th>Data di nascita</th>
				<th>Data d'iscrizione</th>
				<th>Sesso</th>
				<th>Luogo di nascita</th>
				<th>Corso di laurea</th>
			</tr>
			<c:forEach var="stu" items="${sdf.studenti}">
				<tr align="left">
					<td><input type="checkbox" name="matricola" value="${stu.stuMatricola}" onClick="check(this)" /></td>
					<td>${stu.stuMatricola}</td>
					<td><a href="https://www.google.it/search?q=${stu.getStuCognome()}+${stu.getStuNome()}" target="_blank">${stu.getStuCognome()}</a></td>
					<td>${stu.stuNome}</td>
					<td>${stu.stuDataNascita}</td>
					<td>${stu.stuIscrizione}</td>
					<td>${stu.stuSesso}</td>
					<td>${stu.stuLuogoNascita}</td>
					<td>${stu.stuCorsoDiLaurea.getCdlNome()}<br></td>

				</tr>
			</c:forEach>
			<tr>
				<spring:message code="label.submit" var="btnlabel"/>
				<td colspan="9"><input type="submit" value="${btnlabel}" style="height:50px;width:100%"></td>
			</tr>
		</table>
		
		
		
	</form:form>

</body>
</html>
