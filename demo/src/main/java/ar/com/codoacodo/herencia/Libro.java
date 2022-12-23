package ar.com.codoacodo.herencia;

public class Libro extends Articulo {

	private String isbn;
	private Integer paginas;
	
	public Libro(Long id, String titulo, String autor) {
		super(id, titulo, autor);
	}

	//setear despues de nacer!!!
	//por medio de sus setters
	public String getIsbn() {
		return isbn;
	}

	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}

	public Integer getPaginas() {
		return paginas;
	}

	public void setPaginas(Integer paginas) {
		this.paginas = paginas;
	}

}
