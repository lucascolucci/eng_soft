package teste;

import projeto.Produto;
import projeto.ProdutoDao;


public class AdicaoDeProduto {
	public static void main(String[] args) {
		Produto produto = criaProduto();
		new ProdutoDao().salva(produto);	}

		private static Produto criaProduto() {
		Produto produto = new Produto();
		produto.setNome("Aline Silva");
		produto.setMateria("Mac0300");
		produto.setNota(8.0);
		return produto;
	}
}
