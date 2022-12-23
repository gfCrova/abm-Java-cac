package ar.com.codoacodo.herencia;

public class Pelicula extends Articulo {

	private String productora;
	
	public Pelicula(Long id, String titulo, String autor, String productora) {//??
		super(id, titulo, autor);//invocar al constructor del padre
		this.productora = productora;
	}

	public String getProductora() {
		return productora;
	}

	public void setProductora(String productora) {
		this.productora = productora;
	}

}
