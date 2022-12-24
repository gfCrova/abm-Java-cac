
// CLASES 

class Producto {
    constructor(nombre, precio, fecha, cantidad) {
        this.nombre = nombre
        this.precio = precio
        this.fecha = fecha
        this.cantidad = cantidad
    }
}

class Interfaz {
    agregarProducto(product) {
        const listaProductos = document.getElementById('lista-productos');
        const element = document.createElement('div');
        element.innerHTML = `
            <div class="card bg-light col-md cardPadre">
                <img src="/assets/img/proyectos.png" class="card-img-top" alt="img">
                <div class="card-body">
                    <ul class="align-items-center list-unstyled f-3">
                        <li><strong>Nombre</strong>:<%=unProducto.getNombre() %> ${product.nombre}</li>
                        <li><strong>Precio</strong>: ${product.precio}</li>
                        <li><strong>Fecha</strong>: ${product.fecha}</li>
                        <li><strong>Codigo</strong>: ${product.cantidad}</li>
                    </ul>
                    <a href="#" class="btn btn-primary" name="delete">Delete</a>
                </div>
            </div>
        `;
        listaProductos.appendChild(element);
    }

    resetForm() {
        document.getElementById('formProductos').reset();
    }

    eliminarProducto(element) {
        if (element.name === 'delete') {
            //element.parentElement.parentElement.parentElement.remove();
            this.mostrarMensaje('El producto se ha eliminado', 'danger')
        }
    }

    mostrarMensaje(mensaje, colorCss) {
        const div = document.createElement('div');
        div.className = `alert alert-${colorCss} mt-4`;
        div.appendChild(document.createTextNode(mensaje));
        // Mostrando el el DOM
        const container = document.querySelector('.container-fluid');
        const app = document.querySelector('#app');
        container.insertBefore(div, app);
        // Eliminando el mensaje automaticamente
        setTimeout(() => {
            document.querySelector('.alert').remove();
        }, 2500);
    }
}

/*******************************************************************/

// EVENTOS

////////////// Guardar el Producto /////////////////

const form = document.getElementById('formProductos');

form.addEventListener('submit', (e) => {

    const nombre = document.getElementById('nombre').value;
    const precio = document.getElementById('precio').value;
    const fecha = document.getElementById('fecha').value;
    const cantidad = document.getElementById('cantidad').value;

    const product = new Producto(nombre, precio, fecha, cantidad); // Nueva Instancia de la clase producto
    const interfaz = new Interfaz();                            // Nueva Instancia de la clase Interfaz

    if (nombre === '' || precio === '' || fecha === '') {
        return interfaz.mostrarMensaje('Por favor introducir datos en los campos obligatorios!', 'danger');
    }

    interfaz.agregarProducto(product);  // A la Nueva Instancia de la clase Interfaz 
    //interfaz.resetForm();               // Llamar al método resetForm();
    interfaz.mostrarMensaje('Producto Agregado Satisfactoriamente', 'success');

    e.preventDefault();   // Cancelar comportamiento por defecto
});


//////////// Borrar el producto ////////////////////

const deleteProducts = document.getElementById('lista-productos');

deleteProducts.addEventListener('click', (e) => {
    const interfazDelete = new Interfaz();
    interfazDelete.eliminarProducto(e.target);
})