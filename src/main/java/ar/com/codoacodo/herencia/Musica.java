package ar.com.codoacodo.herencia;

//hereda de Articulo: "es un articulo"
//musica es un articulo, porque musica hereda de ariticulo

public class Musica extends Articulo {

	//atributo propio
	private String selloDiscografico;
	
	//este constructor es propio de Musica
	public Musica(Long id, String titulo, String autor, String selloDiscografico) {
		
		//pero la primer linea debe ser invocar al constructor del padre
		
		//primero debo crear Articulo
		//super es Articulo
		super(id, titulo, autor);//llamando al constructor del padre:Articulo
		
		//ahora SI, si tengo mas atributos puedo "seterlos"
		//this es Musica
		this.selloDiscografico = selloDiscografico;
	}

	public String getSelloDiscografico() {
		return selloDiscografico;
	}

	public void setSelloDiscografico(String selloDiscografico) {
		this.selloDiscografico = selloDiscografico;
	}
	
}
