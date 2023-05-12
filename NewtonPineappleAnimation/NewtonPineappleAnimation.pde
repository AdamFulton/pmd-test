/* A simple animation of Isaac Newton, avoidng a pineapple.
 Ansgar 2023
 */

Newton isaac;
Newton isaac1;
Pineapple fruit;
Pineapple fruit1;



void setup() {
  size(800, 800);
  isaac = new Newton(600, 600);
   isaac1 = new Newton(250, 250);
  fruit = new Pineapple(200, 200);
  fruit1 = new Pineapple(100,100);
  
 
}


void draw() {
  background(200, 250, 100);
  isaac.display();
  isaac.animate();
  isaac.avoid(fruit);
  isaac.avoid(fruit1);
  isaac1.display();
  isaac1.animate();
  isaac1.avoid(fruit);
  isaac1.avoid(fruit1);
  fruit.display();
  fruit.animate();
   fruit1.display();
  fruit1.animate();
  
}

void mousePressed() {
  isaac.poke(mouseX, mouseY);
  isaac1.poke(mouseX, mouseY);
  fruit.tick(mouseX, mouseY);
   fruit1.tick(mouseX, mouseY);
}
