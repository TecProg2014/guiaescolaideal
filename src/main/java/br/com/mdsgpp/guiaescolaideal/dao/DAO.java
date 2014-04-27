package br.com.mdsgpp.guiaescolaideal.dao;

/**
 * 
 * @author Augusto
 *
 * Generalizando o valor de retorno da DAO;
 * As DAOs possuem m�todos com o mesmo comportamento, mas com retornos diferentes,
 * com o <V> a classe que implementar a DAO ter� que especificar esse valor.
 * 
 *  documenta��o : <b>http://docs.oracle.com/javase/tutorial/java/generics/types.html</b>
 *  
 * @param <V> valor de retorno dos m�todos;
 */
public interface DAO<V>{
	
	public V pesquisarPorID(int id);

}
