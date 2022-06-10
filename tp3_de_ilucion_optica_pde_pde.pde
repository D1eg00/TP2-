// trabajo para terminar mañana 3 real
int cant =30;
int tam;
void setup()
{ 
  size(800,600);

}

void draw(){
  background(0);
  tam = width/cant;
  float relleno= map (mouseY,0,height,0,255);
  for(int y=0; y<=height; y+=30)
{
  for(int x=0; x<=width; x+=30)
{
  float distan = dist(mouseX,mouseY,x,y);
  float tono = distan*255/dist(width,height,0,0);
  //fill(x,relleno,y);
  fill(x,relleno,tono);
  //ellipse(x + frameCount%30,y,10,10);
   ellipse(x + frameCount%30,y,tam,tam);
 }
}
}
void keyPressed(){
 cant = 30; 
}
void mousePressed(){
  cant ++;
}
