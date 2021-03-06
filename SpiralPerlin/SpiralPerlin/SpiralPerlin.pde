float r = 4; // starting radius of circle-movement
float theta = 0;

float w = 0.0; // starting width of the ellipse

void setup() {
 size(600,600);
 background(255);
}

void draw() {
 float x = r * cos(theta); // x position, constantly updated, since theta value is increased
 float y = r * sin(theta);// y position, constantly updated, since theta value is increased
 float noiseValue = noise(w); // updating noiseValue at given width.
 
 noStroke();
 fill(0,102,random(100,185),random(85,200));
 ellipse(x + width/2, y + height/2, noiseValue*10, noiseValue*10);
 
 // increment the angle
 theta += 0.027;
 
 // increment radius of the movement:
 r += 0.1;
 
 // Increase radius of circle for each loop:
 w += 0.01;
 println(noiseValue);
}
