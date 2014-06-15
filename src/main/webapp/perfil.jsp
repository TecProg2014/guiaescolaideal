<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Guia da Escola Ideal</title>
<script type="text/javascript" src="js/jquery-2.1.1.min.js"></script>
<script type="text/javascript"
	src="http://maps.googleapis.com/maps/api/js?sensor=TRUE"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#table_id td.y_n').each(function() {
			if ($(this).text() == 'false') {
				$(this).css('background-color', 'red');
			}
		});
	});

	$(document).ready(function() {
		$('#table_id td.y_n').each(function() {
			if ($(this).text() == 'true') {
				$(this).css('background-color', 'green');
			}
		});
	});
</script>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>

<style>
.localizacao {
	margin-top: 15px;
}

.mapa {
	height: 300px;
}

@media ( min-width : 992px) {
	.mapa {
		height: 480px;
	}
}

td {
	padding:5px;
}
</style>
</head>

<body>

	<p>
		Nome:${escola.nomeEscola} &nbsp; &nbsp; &nbsp; <br>
	</p>
	<hr />
	<table id="table_id">
		<tr>
			<th>Modalidade</th>
		</tr>
		<tr>
			<td>Sem Fins Lucrativos</td>
			<td class="${escola.seFinsLucrativos?'y':'n'}"></td>
			<td>Brasil Alfabetiza��o</td>
			<td class="${escola.brasilAlfabetizacao?'y':'n'}"></td>
			<td>Educa��o Indigena</td>
			<td class="${escola.educacaoIndigena?'y':'n'}"></td>
		</tr>
		<tr>
			<td>Acessibilidade</td>
			<td class="${escola.acessibilidade?'y':'n'}"></td>
		</tr>
		<tr>
			<th>Acesso</th>
		</tr>
		<tr>
			<td>Depende de Vias de Acesso</td>
			<td class="${escola.dependViasAcesso?'y':'n'}"></td>
		</tr>
		<tr>
			<th>Infra-Estrutura</th>
		</tr>
		<tr>
			<td>Cozinha</td>
			<td class="${escola.cozinha?'y':'n'}"></td>
			<td>Ber�ario</td>
			<td class="${escola.bercario?'y':'n'}"></td>
			<td>Secretaria</td>
			<td class="${escola.secretaria?'y':'n'}"></td>

		</tr>
		<tr>
			<td>Dispensa</td>
			<td class="${escola.despensa?'y':'n'}"></td>
			<td>Audit�rio</td>
			<td class="${escola.auditorio?'y':'n'}"></td>
			<td>Lavanderia</td>
			<td class="${escola.lavanderia?'y':'n'}"></td>
		</tr>
		<tr>
			<td>Refeit�rio</td>
			<td class="${escola.refeitorio?'y':'n'}"></td>
			<td>Almoxarifado</td>
			<td class="${escola.almoxarifado?'y':'n'}"></td>
			<td>Chuveiro</td>
			<td class="${escola.banheiroChuveiro?'y':'n'}"></td>
		</tr>
		<tr>



			<td>Alojamento Aluno</td>
			<td class="${escola.alojamentoAluno?'y':'n'}"></td>
		</tr>

		<tr>
			<th>Salas</th>
		</tr>
		<tr>
			<td>Sala de Leitura</td>
			<td class="${escola.salaLeitura?'y':'n'}"></td>
			<td>Sala de Atendimento Especializado</td>
			<td class="${escola.salaAtendimentoEspecializado?'y':'n'}"></td>
			<td>Sala Professor</td>
			<td class="${escola.salaProfessor?'y':'n'}"></td>
		</tr>
		<tr>
			<td>Sala Diretoria</td>
			<td class="${escola.salaDiretoria?'y':'n'}"></td>
		</tr>
		<tr>
			<th>Laborat�rios</th>
		</tr>
		<tr>
			<td>Laborat�rio de Inform�tica</td>
			<td class="${escola.labInformatica?'y':'n'}"></td>
			<td>Laborat�rio de Ci�ncias</td>
			<td class="${escola.labCiencias?'y':'n'}"></td>
		</tr>
		<tr>
			<th>Recrea��o</th>
		</tr>
		<tr>
			<td>Quadra de Esportes Coberta</td>
			<td class="${escola.quadraEsporteCoberta?'y':'n'}"></td>
			<td>Quadra de Esportes Descoberta</td>
			<td class="${escola.quadraEsporteDescoberta?'y':'n'}"></td>
			<td>P�tio Coberto</td>
			<td class="${escola.patioCoberto?'y':'n'}"></td>
		</tr>
		<tr>
			<td>P�tio Descoberto</td>
			<td class="${escola.patioDescoberto?'y':'n'}"></td>
			<td>Parque Infantil</td>
			<td class="${escola.parqueInfantil?'y':'n'}"></td>
		</tr>
		<tr>
			<th>Sanit�rios</th>
		</tr>
		<tr>
			<td>Sanit�rio Adequado Infantil</td>
			<td class="${escola.sanitarioAdequadoInfantil?'y':'n'}"></td>
			<td>Sanit�rio Fora do Pr�dio</td>
			<td class="${escola.sanitarioForaPredio?'y':'n'}"></td>
		</tr>
		<th>Servi�os</th>
		</tr>

		<tr>

			<td>Agua Filtrada</td>
			<td class="${escola.aguaFiltrada?'y':'n'}"></td>
			<td>Internet</td>
			<td class="${escola.internet?'y':'n'}"></td>
		</tr>

	</table>

	<div class="localizacao col-xs-12">
		<!-- Para que o mapa seja exibido em uma p�gina da Web, devemos reservar um espa�o para ele fazemos isso criando um
	elemento div nomeado e obtendo uma refer�ncia para esse elemento no modelo de objeto de documento (DOM) do navegador.-->
		<div id="endereco" class="col-xs-12 col-md-3">
			<div: class="col-xs-12">
		Bairro: ${escola.endereco.bairro}</div:>
			<div: class="col-xs-12">
		Rua: ${escola.endereco.rua} </div:>
			<div: class="col-xs-12">
		N�mero: ${escola.endereco.numero}</div:>
			<div: class="col-xs-12">
		Complemento: ${escola.endereco.complemento}</div:>
			<div: class="col-xs-12">
		CEP: ${escola.endereco.cep}</div:>
			<div: class="col-xs-12">
		Municipio: ${escola.endereco.municipio.nome}</div:>
		</div>
		<div id="map_canvas" class="col-xs-12 col-md-8 mapa"></div>
	</div>

	<script type="text/javascript">
		var map;
		var directionsDisplay;
		var directionsService = new google.maps.DirectionsService();
		var escolaLatLng;

		function inicializaPorPosicao(latitude, longitude) {
			escolaLatLng = new google.maps.LatLng(latitude, longitude);
			inicializaMapa(escolaLatLng);
			verificaPosicaoUsuario();
			marcaEscola();
		}

		function inicializaMapa(posicao) {
			/*
			 * Para inicializar um mapa, primeiro devemos criar um objeto Map options 
			 * para conter vari�veis de inicializa��o do mapa.
			 */
			var mapOptions = {
				// Para centralizar o mapa no ponto espec�fico da (latitude, longitude)
				center : posicao,
				zoom : 15,
				// Defini��o do tipo de mapa: ROADMAP - exibe os blocos 2D normais padr�o do Google Maps
				mapTypeId : google.maps.MapTypeId.ROADMAP
			};

			/*
			 * Instancia��o de um objeto do tipo Map. A classe JavaScript que representa 
			 * um mapa � a classe Map.
			 */
			map = new google.maps.Map(document.getElementById("map_canvas"),
					mapOptions);

			directionsDisplay = new google.maps.DirectionsRenderer();
			directionsDisplay.setMap(map);
			directionsDisplay.setPanel(document.getElementById("info-mapa"));
		}

		function verificaPosicaoUsuario() {
			if (navigator.geolocation) {
				navigator.geolocation.getCurrentPosition(success, erro);
			} else {
				erro();
			}
		}

		function success(position) {
			var enderecoPartida = new google.maps.LatLng(
					position.coords.latitude, position.coords.longitude);
			var enderecoChegada = escolaLatLng;

			var request = {
				origin : enderecoPartida,
				destination : enderecoChegada,
				travelMode : google.maps.TravelMode.DRIVING
			};

			directionsService.route(request, function(result, status) {
				if (status == google.maps.DirectionsStatus.OK) {
					directionsDisplay.setDirections(result);
				} else {
					marcaEscola();
				}
			});
		}

		function marcaEscola() {
			console.log("2");
			marker = new google.maps.Marker({
				map : map,
				draggable : false,
				position : escolaLatLng,
				title : "Localiza��o da escola."
			});
		}

		function erro(msg) {
			console.log(msg);
		}
	</script>
	<!-- Se Escola tem posicao ent�o -->
	<c:if test="${!escola.endereco.posicao.latitude.equals(\"ERROR\")}">
		<script>
			window.onload = inicializaPorPosicao(
					"${escola.endereco.posicao.latitude}",
					"${escola.endereco.posicao.longitude}");
		</script>
	</c:if>
	<script>
	$(".y").append( "<span class=\"glyphicon glyphicon-ok\"></span>" );
	$(".n").append( "<span class=\"glyphicon glyphicon-remove\"></span>" );
</script>
	<footer>@2014</footer>
</body>
</html>