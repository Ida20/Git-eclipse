<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert titulo here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
</head>
<body>
	<!-- GRID -->
	<div class="container table-responsive">
		<div class="well col-md-12">
			//Mudei pelo eclipse
			//Mudei pelo github
			

			<div class="input-group">
				<input name="txtFiltro" id="txtFiltro" type="text"
					class="form-control" placeholder="Pesquisar"> <span
					class="input-group-btn">
					<button class="btn btn-primary" type="button" id="btnFiltrar">
						<span class="glyphicon glyphicon-search"></span>
					</button>
				</span>
			</div>
		</div>


		<table id="myTable"
			class="table table-striped table-condensed table-bordered">
			<thead>
				<tr>
					<th>Descricao</th>
					<th>Preco</th>
				</tr>
			</thead>
			<tbody>
			</tbody>
		</table>
	</div>


	<!-- FORM -->
	<div id="add_new_record_modal" class="modal fade" tabindex="-1"
		role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">Formulário de
						Produtos</h4>
				</div>
				<div class="modal-body">
					<form id="formProduto">
						<div class="form-group">
							<label for="descricao">Descricao</label> <input type="text"
								name="descricao" id="descricao" placeholder="Descricao do Produto"
								class="form-control" />
						</div>
						<div class="form-group">
							<label for="preco">Preco</label> <input type="text"
								name="preco" id="preco" placeholder="Preco do Produto"
								class="form-control" />
						</div>


						<div class="form-group">
							<button type="button" class="btn btn-default" id="btnCancelar"
								data-dismiss="modal">Cancelar</button>
							<button type="button" class="btn btn-primary" id="btnSalvar">Salvar</button>
						</div>
					</form>
					<div id="formResultado" class="alert alert-success"
						style="display: none;">
						<button type="button" class="close" data-dismiss="alert">x</button>
						<strong id="alertType">Successo</strong>: <span id="formMensagem">Sucesso
							ao salvar registro!</span>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="ProdutoViewGridForm.js"></script>
</html>
