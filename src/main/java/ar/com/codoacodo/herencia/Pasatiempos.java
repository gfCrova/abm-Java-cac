package ar.com.codoacodo.herencia;

public class Pasatiempos extends Articulo {

	private String marca;
	
	public Pasatiempos(Long id, String titulo, String autor,String marca) {
		super(id, titulo, autor);
		this.marca = marca;
	}

	public String getMarca() {
		return marca;
	}

	public void setMarca(String marca) {
		this.marca = marca;
	}

	
}
