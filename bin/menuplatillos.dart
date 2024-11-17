import 'package:menuplatillos/menuplatillos.dart' as menuplatillos;

void main() {

  Map<String, int> platillos = {
    "Hamburguesa": 50,
    "Pizza": 100,
    "Tacos": 20,
    "Hotdog": 30,
    "Ensalada": 10
  };
  mostrarMenu(platillos); 

  buscarPlatillo(platillos, "Alitas");
  actualizarPrecio(platillos, "Alitas", 150);
}

void mostrarMenu(Map<String, int> platillos) {
  print("Estos son nuestros platillos y sus precios:  ");
  print(platillos);
}

void buscarPlatillo(Map<String, int> platillos, String platillo) {
  if (platillos.containsKey(platillo)) {
    print("El platillo $platillo tiene un precio de ${platillos[platillo]}");
  } else {
    print("El platillo $platillo no se encuentra en el menú");
  }
}

void actualizarPrecio(Map<String, int> platillos, String platillo, int precio) {
  if (platillos.containsKey(platillo)) {
    platillos[platillo] = precio;
    print("El precio del platillo $platillo ha sido actualizado a $precio");
  } else {
    print("El platillo $platillo no se  encuentra en el menú");
  }
}