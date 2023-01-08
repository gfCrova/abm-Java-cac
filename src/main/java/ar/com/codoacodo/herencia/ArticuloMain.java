package ar.com.codoacodo.herencia;

public class ArticuloMain {

	public static void main(String[] args) {
		
		//Libro NO
		//Musica NO
		//Pelicula NO
		Articulo articulo1 = new Articulo(1l,"titulo","autor");
		articulo1.getId();
		articulo1.getTitulo();
		articulo1.getAutor();
		
		//
		Libro articulo2 = new Libro(2l,"libro1","autor1");
		articulo2.getId();//2
		articulo2.getTitulo();//libro1
		articulo2.getAutor();
		//---------------
		articulo2.setIsbn("12345987987");
		articulo2.setPaginas(100);
		articulo2.getIsbn();
		articulo2.getPaginas();
		
		Musica articulo3 = new Musica(3l, "AC/DC", "AC/DC", "Sello Discografico");
		articulo3.getId();//3
		articulo3.getTitulo();//"AC/DC"
		articulo3.getAutor();
		//-------------------
		articulo3.getSelloDiscografico();
		
		
		Pelicula articulo4 = new Pelicula(4l, "iron man", "marvel", "marvel");
		articulo4.getId();//3
		articulo4.getTitulo();//"AC/DC"
		articulo4.getAutor();
		//-------------------
		articulo4.getProductora();
		
		Pasatiempos articulo5 = new Pasatiempos(5l, "titulo", "autor", "marca");
		
		//creamos un vector de articulos
		Articulo[] resultados = new Articulo[]{articulo1,articulo2,articulo3,articulo4,articulo5};
		
		//mostrar todos????????
		for(Articulo aux : resultados) {			
			//se que todos los articulos tiene en comun tres atributos
			System.out.println(aux.getId());
			System.out.println(aux.getTitulo());
			System.out.println(aux.getAutor());
			
			//que es aux > NO SE: debo determinar que es..
			if(aux instanceof Libro) {
				Libro l = (Libro)aux;//down casting				
				System.out.println(l.getIsbn());
				System.out.println(l.getPaginas());
			}
			if(aux instanceof Musica) {
				Musica m = (Musica)aux;//down casting				
				System.out.println(m.getSelloDiscografico());
			}
			if(aux instanceof Pelicula) {
				Pelicula p = (Pelicula)aux;//down casting				
				System.out.println(p.getProductora());
			}
			if(aux instanceof Pasatiempos) {
				Pasatiempos p = (Pasatiempos)aux;//down casting				
				System.out.println(p);
			}
		}
	}

}
