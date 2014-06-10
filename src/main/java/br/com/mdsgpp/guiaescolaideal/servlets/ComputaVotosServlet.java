package br.com.mdsgpp.guiaescolaideal.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;

import br.com.mdsgpp.guiaescolaideal.control.EscolaControl;
import br.com.mdsgpp.guiaescolaideal.dao.ConnectionFactory;
import br.com.mdsgpp.guiaescolaideal.dao.EscolaDAO;
import br.com.mdsgpp.guiaescolaideal.exceptions.ConsultaBancoRetornoVazioException;
import br.com.mdsgpp.guiaescolaideal.model.Escola;
import br.com.mdsgpp.guiaescolaideal.util.ConnectionUtil;

@WebServlet(value = "/computaVotos.jsp")
public class ComputaVotosServlet extends HttpServlet {
    
    private static final long serialVersionUID = 123L;
    
    @Override
    public void service(ServletRequest request, ServletResponse response)
	    throws ServletException, IOException {

	String id = request.getParameter(id);
	RequestDispatcher dispatcher = null;

	Connection connection = null;
	try {
	    connection = new ConnectionFactory().getConnection();

	    EscolaDAO escolaDAO = new EscolaDAO(connection);
	    EscolaControl control = new EscolaControl(escolaDAO);
	    
	    control.updateVotos(Integer.parseInt(id));

	    

	    dispatcher = request.getRequestDispatcher("/resultadoPesquisa.jsp");
	} catch (SQLException e) {
	    dispatcher = setDispatcherErro(request, e);
	} catch (ConsultaBancoRetornoVazioException e) {
	    dispatcher = setDispatcherErro(request, e);
	} finally {
	    ConnectionUtil.closeConnection(connection);
	}

	dispatcher.forward(request, response);
    }

    private RequestDispatcher setDispatcherErro(ServletRequest request,
	    Exception e) {
	RequestDispatcher dispatcher;
	request.setAttribute("erroMsg", e.getMessage());
	dispatcher = request.getRequestDispatcher("/erro.jsp");
	return dispatcher;
    }
}



