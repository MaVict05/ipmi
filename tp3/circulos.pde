void circulos () {
  
  float espacio = 900 / 50;  // Espacio entre los círculos
  float  tamañoCirculo = espacio *0.6;

  float centroX= 600;
  float centroY= height /2;

  for (int i = 0; i < 60; i++) {
    for (int j = 0; j < 60; j++) {
                                       //posicion de los ciculos violetas
      float circuloVioletaX = i *espacio +espacio /2;
      float circuloVioletaY = j * espacio + espacio/2;
                                        // forma el espiral
      float distancia = dist(centroX, centroY, circuloVioletaX, circuloVioletaY);
      float angulo =  atan2 (circuloVioletaY - centroY, circuloVioletaX - centroX)+ distancia *0.05 ;

      float circuloBlancoX = circuloVioletaX + cos(angulo)  * tamañoCirculo * 0.3;
      float circuloBlancoY = circuloVioletaY + sin(angulo ) * tamañoCirculo * 0.3;

                                            //posicion de los circulos negros
      float circuloNegroX = circuloVioletaX + cos(angulo+radians( 180)) * tamañoCirculo * 0.3;
      float circuloNegroY = circuloVioletaY + sin(angulo+radians(  180) ) * tamañoCirculo * 0.3;

                                // circulos
      fill(colorCirculoNegro); // Color negro
      ellipse(circuloNegroX, circuloNegroY, espacio * 0.5, espacio * 0.5);

      fill(colorCirculoBlanco); // Color blanco
      ellipse(circuloBlancoX, circuloBlancoY, espacio * 0.5, espacio * 0.5);

      fill(colorCirculoVioleta); // color violeta
      ellipse(circuloVioletaX, circuloVioletaY, tamañoCirculo+1, tamañoCirculo +1);

      image(img, 0, 0);

      noStroke();
      fill(154, 205, 50);
      rect(559, 147, 88, 119);
      image(img2, 560, 150);
    }
  }
}
