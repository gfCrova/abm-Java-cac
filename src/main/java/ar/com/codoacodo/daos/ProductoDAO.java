package ar.com.codoacodo.daos;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import ar.com.codoacodo.connection.AdministradorDeConexiones;
import ar.com.codoacodo.dto.Producto;

public class ProductoDAO {

	/*metodos del crud*/
	public Producto obtenerPorId(Long id) {
		String sql = "SELECT * FROM PRODUCTO WHERE ID="+id;
		
		//Connection
		Connection con = AdministradorDeConexiones.getConnection();
	
		Producto prodFromDb = null;
		
		//Statement
		try {
			Statement st = con.createStatement();
			
			//resultset
			ResultSet rs = st.executeQuery(sql);
			
			//VIENE UN SOLO REGISTRO!!!
			
			if(rs.next()) {//si existe, hay uno solo
				// rs > sacando los datos
				int idProducto = rs.getInt(1);//tomar la primer columna
				String componente = rs.getString(2);
				String modelo = rs.getString(3);
				Float precio = rs.getFloat(4);
				Date fecha = rs.getDate(5);
				String imagen = rs.getString(6);
				int codigo = rs.getInt(7);
				
				//campos crear un objeto????
				prodFromDb = new Producto(idProducto,componente,modelo,precio,fecha,imagen,codigo);
			}			
		} catch (SQLException e) {
			// ERRORES
			e.printStackTrace();
		}
		return prodFromDb;
	}
	

	/*metodos del crud*/
	public List<Producto> listarProductos() {
		String sql = "SELECT * FROM producto ";
		
		//Connection
		Connection con = AdministradorDeConexiones.getConnection();
	
		List<Producto> list = new ArrayList<>();
		
		//Statement
		try {
			Statement st = con.createStatement();
			
			//resultset
			ResultSet rs = st.executeQuery(sql);
			
			//VIENE UN SOLO REGISTRO!!!
			
			while(rs.next()) {//
				// rs > sacando los datos
				int idProducto = rs.getInt(1);//tomar la primer columna
				String componente = rs.getString(2);
				String modelo = rs.getString(3);
				Float precio = rs.getFloat(4);
				Date fecha = rs.getDate(5);
				String imagen = rs.getString(6);
				int codigo = rs.getInt(7);
				
				//campos crear un objeto????
				Producto prodFromDb = new Producto(idProducto,componente, modelo,precio,fecha,imagen,codigo);
				
				//agrego a la lista 
				list.add(prodFromDb);
			}			
			
			//cierro la conexion
			con.close();
		} catch (SQLException e) {
			// ERRORES
			e.printStackTrace();
		}
		return list;
	}

	/*crear un producto en la db*/

	public void crearProducto(String componente, String modelo, Float precio, String imagen, int codigo) {
		
		Connection con = AdministradorDeConexiones.getConnection();
		
		if(con != null) { 
			// insert en la db > SQL: INSERT INTO....
			String sql = "INSERT INTO PRODUCTO (componente,modelo,precio,fecha_creacion,imagen,codigo) ";
			sql += "VALUES('"+componente+"','"+modelo+"',"+precio+",CURRENT_DATE,'"+imagen+"','"+codigo+"')";
			
			//control de errores
			try {
				Statement st = con.createStatement();			
				st.execute(sql);
				
				//cierre de conexion
				con.close();
				
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	public void actualizarProducto(int idProducto, String componente, String modelo, Float precio, int codigo) {
		Connection con = AdministradorDeConexiones.getConnection();
		if(con != null) { 
			String sql = "UPDATE producto "
					+ " SET componente='"+componente+"',"
					+ " modelo='"+modelo+"',"
					+ " precio= "+precio+","
					+ " codigo= "+codigo
					+ " WHERE id = "+idProducto; 
		
			try {
				Statement st = con.createStatement();			
				st.executeUpdate(sql);
				
				con.close();
				
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	/*metodos del crud*/
	public List<Producto> buscar(String clave) {
		String sql = "SELECT * FROM PRODUCTO WHERE componente LIKE '%"+clave+"%' OR modelo LIKE '%"+clave+"%' ";
		
		//Connection
		Connection con = AdministradorDeConexiones.getConnection();
	
		List<Producto> listado = new ArrayList<Producto>();
		
		//Statement
		try {
			Statement st = con.createStatement();
			
			//resultset
			ResultSet rs = st.executeQuery(sql);
			
			//VIENE UN SOLO REGISTRO!!!
			
			while(rs.next()) {
				// rs > sacando los datos
				int idProducto = rs.getInt(1);//tomar la primer columna
				String componente = rs.getString(2);
				String modelo = rs.getString(3);
				Float precio = rs.getFloat(4);
				Date fecha = rs.getDate(5);
				String imagen = rs.getString(6);
				int codigo = rs.getInt(7);
				
				//campos crear un objeto????
				Producto prodFromDb = new Producto(idProducto,componente,modelo,precio,fecha,imagen,codigo);
				
				listado.add(prodFromDb);
			}			
		} catch (SQLException e) {
			// ERRORES
			e.printStackTrace();
		}
		
		return listado;
	}
}
