
<!-- pesquisa especifica -->


<div class="portfolio-modal modal fade" id="modal-perfil"
	tabindex="-1" role="dialog" aria-hidden="true">
	<div class="modal-content">
		<div class="close-modal" data-dismiss="modal">
			<div class="lr">
				<div class="rl"></div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="modal-body">
						<h2>Pesquisar Escola Espec�fica</h2>
						<hr class="star-primary">
					</div>
					<div class="row">
						<div class="col-lg-8 col-lg-offset-2">
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
							<%@ include file="localizarEscola.jsp"%>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</div>


