int backgroundColor = 0;  // Color de fondo inicial (negro)

void setup() {
  size(400, 400);  // Tamaño de la ventana
}

void draw() {
  background(backgroundColor);  // Establecer el color de fondo
  
  // Dibujar un efecto visual basado en la tecla presionada
  if (key == '1') {
    fill(255, 0, 0);  // Relleno rojo
    ellipse(width/2, height/2, 100, 100);  // Dibujar un círculo en el centro
  } else if (key == '2') {
    fill(0, 255, 0);  // Relleno verde
    rectMode(CENTER);
    rect(width/2, height/2, 100, 100);  // Dibujar un rectángulo en el centro
  } else if (key == '3') {
    fill(0, 0, 255);  // Relleno azul
    triangle(width/2, 100, width/2 - 50, height-100, width/2 + 50, height-100);  // Dibujar un triángulo invertido
  }
}

void keyPressed() {
  // Cambiar el color de fondo al presionar diferentes teclas
  if (key == '1') {
    backgroundColor = color(0, 0, 0);  // Negro
  } else if (key == '2') {
    backgroundColor = color(50, 50, 50);  // Gris oscuro
  } else if (key == '3') {
    backgroundColor = color(100, 100, 100);  // Gris medio
  }
}
