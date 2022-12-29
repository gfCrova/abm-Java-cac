package ar.com.codoacodo.controllers;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ar.com.codoacodo.connection.AdministradorDeConexiones;
import ar.com.codoacodo.dto.Producto;

@WebServlet("/api/ConsultarController")
public class ConsultarController extends HttpServlet {
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String id = req.getParameter("id");
		
		//validaciones!!!
		
		String sql = "SELECT * FROM PRODUCTO WHERE ID = " + id;
		
		//conexion OK
		Connection con = AdministradorDeConexiones.getConnection();
		
		try {
			//statement 
			Statement st = con.createStatement();
			
			//resultset
			ResultSet rs = st.executeQuery(sql);
			
			if(rs.next()) {//�hay datos?
				// rs > sacando los datos
				Long idProducto = rs.getLong(1);
				String nombre = rs.getString(2);
				String modelo = rs.getString(3);
				Float precio = rs.getFloat(4);
				Date fecha = rs.getDate(5);
				String imagen = rs.getString(6);
				int codigo = rs.getInt(7);
				
				
				//campos crear un objeto????
				Producto prodFromDb = new Producto(idProducto,nombre,modelo,precio,fecha,imagen,codigo);
				
				//ir a otra pagina y ademas pasarle datos
				
				req.setAttribute("producto", prodFromDb);
			}
			
			getServletContext().getRequestDispatcher("/detalle.jsp").forward(req, resp);
			
			//cierre de conexion
			con.close();
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
}

