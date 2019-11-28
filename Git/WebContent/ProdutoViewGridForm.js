$(document)
		.ready(
				function() {
					$.fn.select = function() {
						$
								.ajax({
									type : "GET",
									url : "ProdutoControllerFiltro",
									data : {
										'search' : $("#txtFiltro").val()
									},
									dataType : "json",
									beforeSend : function() {
										$(this).prop('disabled', true);
									}
								})
								.done(
										function(d) {
											$("#myTable tbody").empty();
											if (d.data && d.data.length > 0) {
												$
														.each(
																d.data,
																function(index,
																		value) {
																	$(
																			"<tr></tr>")
																			.html(
																					"<td>"
																							+ value.categoria
																							+ "</td>"
																							+ "<td>"
																							+ value.descricao
																							+ "</td>"
																							+ "<td>"
																							+ value.preco
																							+ "</td>")
																			.appendTo(
																					"#myTable tbody");
																});
											}

											else {
												$("<tr></tr>")
														.html(
																"<td colspan=\"6\">Nenhum registro encontrado.</td>")
														.appendTo(
																"#myTable tbody");
											}
										})
								.fail(
										function() {
											alert("Ocorreu um erro durante o processamento.");
										}).always(function(r) {
									$(this).prop('disabled', false);
								});
					}
					$('#btnFiltrar').click(function() {
						$.fn.select();
					});
					$.fn.select();
				});
