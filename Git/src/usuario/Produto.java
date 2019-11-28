package usuario;

public class Produto {
	private int pk_produto;	
	private String descricao;
	private String preco;
	
	public int getPk_produto() {
		return pk_produto;
	}
	public void setPk_produto(int pk_produto) {
		this.pk_produto = pk_produto;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public String getPreco() {
		return preco;
	}
	public void setPreco(String preco) {
		this.preco = preco;
	}

}