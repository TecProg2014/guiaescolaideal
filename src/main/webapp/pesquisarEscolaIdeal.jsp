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
		var acessibilidade = form1.acessibilidade.value;
		var internet = form1.internet.value;
		var quadraCoberta = form1.quadraCoberta.value;
		var quadraDescoberta = form1.quadraDescoberta.value;
		var alojamentoAluno = form1.alojamentoAluno.value;
		
		if (estado == "") {
			alert('Selecione um estado');
			form1.estado.focus();
			return false;
		}
		
		var regExp = /[^A-Za-z0-9\s�-��-�]/;
	 	if(regExp.test(municipio)){
	 	 alert('Insira o munic�pio.');
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
			alert('Maque uma op��oo para laborat�rio de ciencias');
			return false;
		}

		if(form1.acessibilidade[0].checked==false && form1.acessibilidade[1].checked==false){
			alert('Maque uma op��o para acessibilidade');
			return false;
		}
		
		if(form1.internet[0].checked==false && form1.internet[1].checked==false){
			alert('Maque uma op��o para internet');
			return false;
		}
		
		if(form1.quadraCoberta[0].checked==false && form1.quadraCoberta[1].checked==false){
			alert('Maque uma op��o para quadra coberta');
			return false;
		}
		
		if(form1.quadraDescoberta[0].checked==false && form1.quadraDescoberta[1].checked==false){
			alert('Maque uma op��o para quadra descoberta');
			return false;
		}
		
		if(form1.alojamentoAluno[0].checked==false && form1.alojamentoAluno[1].checked==false){
			alert('Maque uma op��o alojamento para alunos');
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
			<br></br>
			<b>Modalidade:</b>
			<tr>
				<td>Institui��o sem fim lucrativo:</td>
				<td><input type="radio" name="fimlucrativo" value="sim">Sim</td> 
				<td><input type="radio" name="fimlucrativo" value="n�o">N�o</td>
				<td><input type="radio" name="fimlucrativo" checked='checked' value="">Tanto Faz</td>
			</tr>
			
			<tr>
				<td>Brasil Alfabetiza��o:</td>
				<td><input type="radio" name="brasilalfabet" value="sim">Sim</td> 
				<td><input type="radio" name="brasilalfabet" value="n�o">N�o</td>
				<td><input type="radio" name="brasilalfabet" checked='checked' value="">Tanto Faz</td>
			</tr>
			
			<tr>
				<td>Educa��o Ind�gena:</td>
				<td><input type="radio" name="indigena" value="sim">Sim</td> 
				<td><input type="radio" name="indigena" value="n�o">N�o</td>
				<td><input type="radio" name="indigena" checked='checked' value="">Tanto Faz</td>
			</tr>
			
			<tr>
				<td>Acessibilidade:</td>
				<td><input type="radio" name="acessibilidade" value="sim">Sim</td> 
				<td><input type="radio" name="acessibilidade" value="n�o">N�o</td>
				<td><input type="radio" name="acessibilidade" checked='checked' value="">Tanto Faz</td>
			</tr>
			
			<tr>
			<td></td>
			</tr>
				</tr>
			<tr>
			<td></td>
			</tr>
			<tr>
			<td><b>Salas</b></td>
			</tr>
			<tr>
				<td>Sala de leitura:</td> 
				<td><input type="radio" name="salaleitura" value="sim">Sim</td> 
				<td><input type="radio" name="salaleitura" value="n�o">N�o</td>
				<td><input type="radio" name="salaleitura" checked='checked' value="">Tanto Faz</td>
			</tr>
			<tr>
				<td>Sala de Atendimento Especializado:</td> 
				<td><input type="radio" name="salaatendimentoespecial" value="sim">Sim</td> 
				<td><input type="radio" name="salaatendimentoespecial" value="n�o">N�o</td>
				<td><input type="radio" name="salaatendimentoespecial" checked='checked' value="">Tanto Faz</td>
			</tr>
			<tr>
				<td>Sala Professor:</td> 
				<td><input type="radio" name="salaprofessor" value="sim">Sim</td> 
				<td><input type="radio" name="salaprofessor" value="n�o">N�o</td>
				<td><input type="radio" name="salaprofessor" checked='checked' value="">Tanto Faz</td>
			</tr>
			<tr>
				<td>Sala Diretoria:</td> 
				<td><input type="radio" name="saladiretoria" value="sim">Sim</td> 
				<td><input type="radio" name="saladiretoria" value="n�o">N�o</td>
				<td><input type="radio" name="saladiretoria" checked='checked' value="">Tanto Faz</td>
			</tr>
			<tr>
			<td><b>Laboratorios</b></td>
			</tr>
			<tr>
				<td>Laborat�rio de inform�tica:</td> 
				<td><input type="radio" name="labinf" value="sim">Sim</td> 
				<td><input type="radio" name="labinf" value="n�o">N�o</td>
				<td><input type="radio" name="labinf" checked='checked' value="">Tanto Faz</td>
			</tr>
			
			
			<tr>
				<td>Laborat�rio de ci�ncias:</td>
				<td><input type="radio" name="labcien" value="sim">Sim</td> 
				<td><input type="radio" name="labcien" value="n�o">N�o</td>
				<td><input type="radio" name="labcien" checked='checked' value="">Tanto Faz</td>
			</tr>
			
			</tr>
			<tr>
			<td><b>Sanit�rios</b></td>
			</tr>
			<tr>
				<td>Sanit�rio adequado infantil:</td> 
				<td><input type="radio" name="sanitarioinfantil" value="sim">Sim</td> 
				<td><input type="radio" name="sanitarioinfantil" value="n�o">N�o</td>
				<td><input type="radio" name="labinf" checked='checked' value="">Tanto Faz</td>
			</tr>
			
			
			<tr>
				<td>Laborat�rio de ci�ncias:</td>
				<td><input type="radio" name="labcien" value="sim">Sim</td> 
				<td><input type="radio" name="labcien" value="n�o">N�o</td>
				<td><input type="radio" name="labcien" checked='checked' value="">Tanto Faz</td>
			</tr>
			<tr>
			<td><b>Infra-Estrutura</b></td>
			</tr>
			<tr>
				<td>Cozinha:</td> 
				<td><input type="radio" name="cozinha" value="sim">Sim</td> 
				<td><input type="radio" name="cozinha" value="n�o">N�o</td>
				<td><input type="radio" name="cozinha" checked='checked' value="">Tanto Faz</td>
			</tr>
			<tr>
				<td>Dispensa:</td> 
				<td><input type="radio" name="dispensa" value="sim">Sim</td> 
				<td><input type="radio" name="dispensa" value="n�o">N�o</td>
				<td><input type="radio" name="dispensa" checked='checked' value="">Tanto Faz</td>
			</tr>
			<tr>
				<td>Refeitorio:</td> 
				<td><input type="radio" name="refeitorio" value="sim">Sim</td> 
				<td><input type="radio" name="refeitorio" value="n�o">N�o</td>
				<td><input type="radio" name="refeitorio" checked='checked' value="">Tanto Faz</td>
			</tr>
			<tr>
				<td>Alojamento Aluno:</td> 
				<td><input type="radio" name="alojamentoAluno" value="sim">Sim</td> 
				<td><input type="radio" name="alojamentoAluno" value="n�o">N�o</td>
				<td><input type="radio" name="alojamentoAluno" checked='checked' value="">Tanto Faz</td>
			</tr>
			<tr>
				<td>Ber�ario:</td> 
				<td><input type="radio" name="bercario" value="sim">Sim</td> 
				<td><input type="radio" name="bercario" value="n�o">N�o</td>
				<td><input type="radio" name="bercario" checked='checked' value="">Tanto Faz</td>
			</tr>
			<tr>
				<td>Auditorio:</td> 
				<td><input type="radio" name="auditorio" value="sim">Sim</td> 
				<td><input type="radio" name="auditorio" value="n�o">N�o</td>
				<td><input type="radio" name="auditorio" checked='checked' value="">Tanto Faz</td>
			</tr>
			<tr>
				<td>Almoxarifado:</td> 
				<td><input type="radio" name="almoxarifado" value="sim">Sim</td> 
				<td><input type="radio" name="almoxarifado" value="n�o">N�o</td>
				<td><input type="radio" name="almoxarifado" checked='checked' value="">Tanto Faz</td>
			</tr>
			<tr>
				<td>Secretaria:</td> 
				<td><input type="radio" name="secretaria" value="sim">Sim</td> 
				<td><input type="radio" name="secretaria" value="n�o">N�o</td>
				<td><input type="radio" name="secretaria" checked='checked' value="">Tanto Faz</td>
			</tr>
			<tr>
				<td>Lavanderia:</td> 
				<td><input type="radio" name="lavanderia" value="sim">Sim</td> 
				<td><input type="radio" name="lavanderia" value="n�o">N�o</td>
				<td><input type="radio" name="lavanderia" checked='checked' value="">Tanto Faz</td>
			</tr>
			<tr>
				<td>Chuveiro:</td> 
				<td><input type="radio" name="chuveiro" value="sim">Sim</td> 
				<td><input type="radio" name="chuveiro" value="n�o">N�o</td>
				<td><input type="radio" name="chuveiro" checked='checked' value="">Tanto Faz</td>
			</tr>
					
			<tr>
				<td>Internet:</td>
				<td><input type="radio" name="internet" value="sim">Sim</td> 
				<td><input type="radio" name="internet" value="n�o">N�o</td>
				<td><input type="radio" name="internet" checked='checked' value="">Tanto Faz</td>
			</tr>
			
			<tr>
			<td><b>Recrea��o:</b></td>
			</tr>
			<tr>
				<td>Quadra coberta:</td>
				<td><input type="radio" name="quadraCoberta" value="sim">Sim</td> 
				<td><input type="radio" name="quadraCoberta" value="n�o">N�o</td>
				<td><input type="radio" name="quadraCoberta" checked='checked' value="">Tanto Faz</td>
			</tr>
			
			<tr>
				<td>Quadra descoberta:</td>
				<td><input type="radio" name="quadraDescoberta" value="sim">Sim</td> 
				<td><input type="radio" name="quadraDescoberta" value="n�o">N�o</td>
				<td><input type="radio" name="quadraDescoberta" checked='checked' value="">Tanto Faz</td>
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