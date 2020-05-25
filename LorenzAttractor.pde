// x, y, z それぞれの軸での回転角度
int amount = 100;
float[] x = new float [amount];
float[] y = new float [amount];
float[] z = new float [amount];
float dt;
float p, b, r;
float rotX, rotY, rotZ = 0;
float showRate;
 
void setup(){
    size(1000,1000,P3D);
    frameRate(60);
    background(0,0,0);
    noFill();
    stroke(255);
    strokeWeight(0.5);
    for (int i=0; i< amount; i++){
      
      x[i] = random(-1.0, 1.0);
      y[i] = random(-1.0, 1.0);
      z[i] = random(-1.0, 1.0);
    }
    
    p = 10;
    b = 8/3;
    r = 28;
    
    dt = 0.01;
    showRate = 10;
}
 
void draw(){
    //background(0,0,0);
    //translate(width*0.25,height*0.65);
    translate(width*0.5,height*0.5);
    //X軸を中心に回転
    //rotateX(45);
    //Y軸を中心に回転
    //rotateY(45);
    //Z軸を中心に回転
    //rotateZ(rotZ);
    //四角形を描く
    //rect(0,0,200,200);

for (int i=0; i<amount; i++){    
      float dx = (p * (y[i]-x[i])) * dt;
      float dy = (x[i] * (r-z[i]) - y[i]) * dt;
      float dz = (x[i]*y[i] - b*z[i]) * dt;
      
      x[i] += dx;
      y[i] += dy;
      z[i] += dz;
      
      float showX = x[i] * showRate;
      float showY = y[i] * showRate;
      float showZ = z[i] * showRate;
      
      point(showX, showY, showZ);
}    
    //それぞれの軸の回転角度を更新
    //rotX += 0.002;
    //rotY += 0.003;
    //rotZ += 0.01;
}
