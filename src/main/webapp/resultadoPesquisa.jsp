<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Guia da Escola Ideal</title>

<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="css/freelancer.css" rel="stylesheet" type="text/css">

<!-- Fonts -->
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700'
	rel='stylesheet' type='text/css'>

<!-- IE8 support for HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
 <![endif]-->
 
</head>
<body>

	<%@ include file="navbar.jsp"%>
	<%@ include file="guia.jsp"%>
	<%@ include file="home.jsp"%>
	<%@ include file="selecionabusca.jsp"%>
	<%@ include file="faq.jsp"%>
	<%@ include file="quemsomos.jsp"%>
	<%@ include file="contato.jsp"%>
	<%@ include file="footer.jsp"%>
	<%@ include file="resultado.jsp"%>
	<%@ include file="pesquisaespecifica.jsp"%>
	<%@ include file="pesquisaideal.jsp"%>

	<script src="js/jquery-1.10.2.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
	<script src="js/classie.js"></script>
	<script src="js/cbpAnimatedHeader.js"></script>
	<script src="js/freelancer.js"></script>
	<script src="jquery-2.1.1.min.js" type="text/javascript" charset="utf-8"></script>

	<script>
	  	   function selectMode(id, value){
		    $("#"+id).change(function(event){
		      $("option:selected", $(this)).each(function(){
		         var obj = document.getElementById(id).value;
		    
		      if(obj != value){
		        $("#"+id).removeClass("disable").addClass("enable");
		      }else{
		        $("#"+id).removeClass("enable").addClass("disable");
		      }
		      });
		    });
		  }
	  	  
	  	 $(window).load(function() {
				$('#modal-resultado').modal('show');
		 });
	  	   
	  	 $(function(){
	  		selectMode('select_estado', 'x');
	  		selectMode('select_estado-ideal', 'x');
	  		selectMode('modalidade', 'x');
	  	 });
	  	 
	  	 function validaTexto(campo){
	  		 var regex = /[^a-zA-Z0-9�-� ]/g;
	  		 
	  		 return regex.test(campo);
	  	 }
	  	 
	  	function validaEspecifica()
	  	 {
	  		 var nome = form1.nome.value;
	  		 var estado = form1.estado.value;
	  		 var municipio = form1.municipio.value;
	  		 
	  		 if(nome == "")
	  			 {
	  			 	alert("Digite o nome da escola!");
	  			 	form1.nome.focus;
	  			 	return false;
	  			 }
	  		 
	  		 if(nome.length < 3)
	  			 {
	  			 	alert("Nome da escola deve ter no m�nimo 3 caracteres!");
	  			 	form1.nome.focus();
	  			 	return false;
	  			 }
	  		 
	  		if(estado == "")
	  			{
	  				alert("Selecione um estado!");
	  				form1.estado.focus();
	  				return false;
	  			}
	  		
	  		return true;
	  	 }
	  	
	  	 function validaIdeal(){
	  		 if(ideal.modalidade.value == 'x'){
	  			 alert("Campo modalidade n�o foi selecionado!");
	  			 return false;
	  		 }
	  		 
	  		if($("#select_estado-ideal option:selected").val() == 'x'){
	  			alert("Campo estado n�o foi selecionado!");
	  			return false;
	  		 }
	  		
	  		if(validaTexto(ideal.municipio.value)){
	  			alert('Munic�pio inv�lido!\nUso de caracteres inv�lidos.\n');
	  			return false;
	  			
	  		}
	  		
	  		 return true; 
	  	 }

	  	 
	  	 function validaContato()
	  	 {
	  		 var name = femail.name.value;
	  		 var assunto = femail.assunto.value;
	  		 var email = femail.email.value;
	  		 var mensagem = femail.mensagem.value;
	  		 
	  		 if(name == "")
	  			 {
	  			 	alert("Digite um nome!");
	  			 	femail.name.focus();
	  			 	return false;
	  			 }
	  		 if(assunto == "")
	  			 {
	  			 	alert("Digite um assunto!");
	  			 	femail.assunto.focus();
	  			 	return false;
	  			 }
	  		 if(email == "")
	  			 {
	  			 	alert("Digite um email!");
	  			 	femail.assunto.focus();
	  			 	return false;
	  			 }

	  		 if(mensagem == "")
	  			 {
	  			 	alert("Digite uma mensagem!");
	  			 	femail.mensagem.focus();
	  			 	return false;
	  			 }
			
	  		 return true;
	  	 }
	</script>
</body>

</html>
