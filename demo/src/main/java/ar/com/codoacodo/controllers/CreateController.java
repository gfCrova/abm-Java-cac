package ar.com.codoacodo.controllers;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ar.com.codoacodo.daos.ProductoDAO;

/*HERENCIA*/
//Create Controller es hijo de :
@WebServlet("/CreateController")
public class CreateController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String componente = req.getParameter("componente");
		String modelo = req.getParameter("modelo");
		Float precio = Float.parseFloat(req.getParameter("precio"));
		String imagen = req.getParameter("imagen");
		int codigo = Integer.parseInt(req.getParameter("codigo"));
		
		//crear ProductoDAO
		ProductoDAO dao = new ProductoDAO();
		
		//ejecutar el metodo crearProducto(parametros...)
		dao.crearProducto(componente, modelo, precio, imagen, codigo);
		
		//ctrl+shit+o
		//ir a la siguiente pagina
		resp.sendRedirect(req.getContextPath()+"/api/ListadoController");
	}
}
