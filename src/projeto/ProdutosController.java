package projeto;

import java.util.List;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;
import br.com.caelum.vraptor.validator.ValidationMessage;

@Resource
public class ProdutosController {
	private ProdutoDao dao;
	private Result result;
	private Validator validator;

	public ProdutosController(ProdutoDao dao, Result result, Validator validator) {
		this.dao = dao;
		this.result = result;
		this.validator = validator;
	}

	public void formulario() {
	}

	public List<Produto> lista() {
		return dao.listaTudo();
	}

	public void adiciona(Produto produto) {
		if (produto != null) {
			if (produto.getNome().isEmpty()){
				validator.add(new ValidationMessage("Coloque o nome do aluno!",	"Erro: "));
			}
			if (produto.getMateria().isEmpty())
				validator.add(new ValidationMessage(
						"Coloque a materia do aluno!", "Erro: "));
			if (produto.getNota() == null)
				validator.add(new ValidationMessage(
						"Coloque a nota do aluno!", "Erro: "));
			if (produto.getNota() < 0.0 || produto.getNota() > 10.0)
				validator.add(new ValidationMessage(
						"Nota deve ser entre 0 e 10!", "Erro: "));
			validator.onErrorForwardTo(ProdutosController.class).formulario();
		}
		try {
			dao.salva(produto);
		} catch (Exception exc) {
			String erro = "Erro: " + exc.getMessage();
			System.err.println(erro);
		} finally {
			result.redirectTo(ProdutosController.class).lista();
		}
	}

	public Produto edita(Long id) {
		return dao.carrega(id);
	}

	public void altera(Produto produto) {
		dao.atualiza(produto);
		result.redirectTo(ProdutosController.class).lista();
	}

	public void remove(Long id) {
		Produto produto = dao.carrega(id);
		dao.remove(produto);
		result.redirectTo(ProdutosController.class).lista();
	}

}
