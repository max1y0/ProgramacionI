int[] datos = {12, 4, 6, 9, 9, 9, 12};
int ancho= 20;
int escala = 10;

void setup() {
  size(600, 400);
}

void draw() {
  noLoop();
  for (int i = 0; i < datos.length; i++) {
    rect(i*ancho, height - 50, ancho, -datos[i]*escala);
  }
  bubbleSort(datos);
  for (int i = 0; i < datos.length; i++) {
    rect(i*ancho+250, height - 50, ancho, -datos[i]*escala);
  }
}

void bubbleSort(int[]arr) {
  int n = arr.length;  
  int temp = 0;  
  for (int i=0; i < n; i++) {  
    for (int j=1; j < (n-i); j++) {  
      if (arr[j-1] > arr[j]) {  
        //swap elements  
        temp = arr[j-1];  
        arr[j-1] = arr[j];  
        arr[j] = temp;
      }
    }
  }
}
