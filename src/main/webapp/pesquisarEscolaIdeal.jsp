<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pesquisar Escola Ideal</title>

<script language="javascript" type="text/javascript">
	function validar() {
		
		var estado = form1.estado.value;
		var municipio = form1.municipio.value;
		var modalidade = form1.modalidade.value;
		var labinf = form1.labinf.value;
		var labcien = form1.labcien.value;
		
		if (estado == "") {
			alert('Selecione um estado');
			form1.estado.focus();
			return false;
		}
		
		if(modalidade == ""){
			alert('Selecione uma modalidade');
			form1.modalidade.focus();
			return false;
		}
		
		if(form1.labinf[0].checked==false && form1.labinf[1].checked==false){
			alert('Maque uma op��o para laborat�rio de inform�tica');
			return false;
		}
		
		if(form1.labcien[0].checked==false && form1.labcien[1].checked==false){
			alert('Maque uma op��o para laborat�rio de ciencias');
			return false;
		}
		
		var regExp = /[^A-Za-z0-9\s�-��-�]/;
	 	if(regExp.test(municipio)){
	 	 alert('Insira o munic�pio.');
	 	 return false;
	 	}
		
		return true;
	}
</script>

</head>
<body>
	<table>
		<form name="form1" action="realizarConsultaEscolaIdeal.jsp" method="post">

			<tr>
				<td>Modalidade de ensino:</td>
				<td><select name="modalidade">
						<option value="">Escolha a modalidade</option>
						<option value="Ensino Regular">Ensino Regular</option>
						<option value="Educacao Especial">Educa��o Especial</option>
						<option value="Educacao De Jovens E">EJA - Educa��o de Jovens e Adultos</option>
				</select></td>
			</tr>
			<tr>
				<td>Estado:</td>
				<td><select name="estado">
						<option value="">Escolha o Estado</option>
						<option value="Distrito Federal">Distrito Federal</option>
						<option value="Goias">Goi�s</option>
						<option value="Mato Grosso">Mato Grosso</option>
						<option value="Mato Grosso do Sul">Mato Grosso do Sul</option>
				</select></td>
			</tr>
			<tr>
				<td>Munic�pio</td>
				<td><input type="text" name="municipio" /></td>
			</tr>
			
			<tr><table>
			<tr>
				<td>Laborat�rio de inform�tica:</td> 
				<td><input type="radio" name="labinf" value="sim">Sim</td> 
				<td><input type="radio" name="labinf" value="n�o">N�o</td>
			</tr>
			
			
			<tr>
				<td>Laborat�rio de ci�ncias:</td>
				<td><input type="radio" name="labcien" value="sim">Sim</td> 
				<td><input type="radio" name="labcien" value="n�o">N�o</td>
			</tr>
			</table></tr>
			
			
			<tr><br>
				<td></td>
				<td><input type="submit" name="submit" onclick="return validar()" /></td>
			</tr>
		</form>
	</table>
</body>
</html>