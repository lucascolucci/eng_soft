package teste;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import projeto.Produto;

public class AlteracaoDeProduto {
	public static void main(String[] args) {
		Configuration configuration = new Configuration();
		configuration.configure();
		SessionFactory factory = configuration.buildSessionFactory();
		Session session = factory.openSession();
		Produto produto = (Produto) session.load(Produto.class, 1L);
		Transaction tx = session.beginTransaction();
		produto.setNota(8.5);
		session.update(produto);
		tx.commit();
	}
}
