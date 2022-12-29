package ar.com.codoacodo.dto;

import java.util.Date;

public class Producto {
	private int idProducto; 
	private String componente;
	private String modelo;
	private Float precio;
	private Date fecha; 
	private String imagen; 
	private int codigo;
	
	public Producto(int idProducto, String componente, String modelo, Float precio, Date fecha, String imagen, int codigo) {
		super();
		this.idProducto = idProducto;
		this.componente = componente;
		this.modelo = modelo;
		this.precio = precio;
		this.fecha = fecha;
		this.imagen = imagen;
		this.codigo = codigo;
	}

	public int getIdProducto() {
		return idProducto;
	}

	public void setIdProducto(int idProducto) {
		this.idProducto = idProducto;
	}

	public String getComponente() {
		return componente;
	}

	public void setComponente(String componente) {
		this.componente = componente;
	}

	public String getModelo() {
		return modelo;
	}

	public void setModelo(String modelo) {
		this.modelo = modelo;
	}

	public Float getPrecio() {
		return precio;
	}

	public void setPrecio(Float precio) {
		this.precio = precio;
	}

	public Date getFecha() {
		return fecha;
	}

	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}

	public String getImagen() {
		return imagen;
	}

	public void setImagen(String imagen) {
		this.imagen = imagen;
	}

	public int getCodigo() {
		return codigo;
	}

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}
	
}
