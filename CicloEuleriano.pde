import javax.swing.JOptionPane;
int[] posX = { 50,250,450,50,250,450,250,250,150,150};
int[] posY = { 50, 50, 50,450,450,450,200,300,150,350 };
int[] numeroclik= { 1,2,1,1,2,1,1,2,2,1 };
boolean flag=true;
boolean ganar=false;
int xinicial;
int yinicial;
void setup(){
  size(500,500);
  background(0);
  
   
}
  
void draw() {
 
  stroke(500, 500, 0);
  strokeWeight(3);
   line(50,50,50,450);
  line(50,450,450,450);
  line(450,450,450,50);
  line(450,50,250,50);
  line(50,50,250,50);
  line(250,50,250,200);
  line(250,200,200,250);
  line(200,250,250,300);
  line(250,300,300,250);
  line(300,250,250,200);
  line(250,200,250,450);
  stroke(10000,100000,100000);
  ellipse(50,50,30,30);
  ellipse(50,450,30,30);
  ellipse(250,50,30,30);
  ellipse(250,450,30,30);
  ellipse(450,50,30,30);
  ellipse(450,450,30,30);
  ellipse(250,200,30,30);
  ellipse(250,300,30,30);
  ellipse(200,250,30,30);
  ellipse(300,250,30,30);
  stroke(0,0,0);
  ellipse(50,50,10,10);
  ellipse(50,450,10,10);
  ellipse(250,50,10,10);
  ellipse(250,450,10,10);
  ellipse(450,50,10,10);
  ellipse(450,450,10,10);
  ellipse(250,200,10,10);
  ellipse(250,300,10,10);
  ellipse(200,250,10,10);
  ellipse(300,250,10,10);
  ganar=true;
  for(int n=0;n<numeroclik.length;n++){
    if(numeroclik[n]!=0){
      ganar=false;
    }
  }
  if(ganar){
    JOptionPane.showMessageDialog(frame,"Ganò");
  }
}
  void mousePressed() {
    stroke(500, 500, 0);
    strokeWeight(10);
  if (flag) {
    flag=false;
   
   if(mouseX<75 & mouseX>25 & mouseY<75 & mouseY>25){
    xinicial =50;
    yinicial=50;
    numeroclik[1]=1;
    numeroclik[4]=1;
   }
  
   if(mouseX>425 & mouseX<475 & mouseY<75 & mouseY>25){
    xinicial =450;
    yinicial=50;
  }
   if(mouseX>225 & mouseX<275 & mouseY<75 & mouseY>25){
    xinicial =250;
    yinicial=50;
    numeroclik[1]--;
  }
  if(mouseX>25 & mouseX<75 & mouseY<475 & mouseY>425){
    xinicial =50;
    yinicial=450;
  }
  if(mouseX>225 & mouseX<275 & mouseY<475 & mouseY>425){
    xinicial =250;
    yinicial=450;
    numeroclik[4]--;
  }
   if(mouseX>425 & mouseX<475 & mouseY<475 & mouseY>425){
    xinicial =450;
    yinicial=450;
  }
  if(mouseX>275 & mouseX<325 & mouseY<275 & mouseY>225){
    xinicial =300;
    yinicial=250;
  }
  if(mouseX>225 & mouseX<275 & mouseY<225 & mouseY>175){
    xinicial =250;
    yinicial=200;
  }
   if(mouseX>225 & mouseX<275 & mouseY<325 & mouseY>225){
    xinicial =250;
    yinicial=300;
  }
   if(mouseX>175 & mouseX<225 & mouseY<275 & mouseY>225){
    xinicial =200;
    yinicial=250;
  }
 
    
   
   }else{
     
      if(mouseX<75 & mouseX>25 & mouseY<75 & mouseY>25){
        if(numeroclik[0]>0){
          line(xinicial,yinicial,50,50);
          xinicial=50;
          yinicial=50;
          numeroclik[0]--;
        }
        else{
    JOptionPane.showMessageDialog(frame,"perdio");
 }
       }
      if(mouseX>225 & mouseX<275 & mouseY<75 & mouseY>25){
        if(numeroclik[1]>0){
    line(xinicial,yinicial,250,50);
    xinicial=250;
     yinicial=50;
    numeroclik[1]--;
    }
    else{
    JOptionPane.showMessageDialog(frame,"perdio");
 }
   }
    if(mouseX>425 & mouseX<475 & mouseY<75 & mouseY>25){
      if(numeroclik[2]>0){
    line(xinicial,yinicial,450,50);
    xinicial=450;
    yinicial=50;
    numeroclik[2]--;
    }
    else{
    JOptionPane.showMessageDialog(frame,"perdio");
 }
   }
    if(mouseX>25 & mouseX<75 & mouseY<475 & mouseY>425){
      if(numeroclik[3]>0){
      line(xinicial,yinicial,50,450);
    xinicial =50;
    yinicial=450;
    numeroclik[3]--;
  }
  else{
    JOptionPane.showMessageDialog(frame,"perdio");
 }
    }
  if(mouseX>225 & mouseX<275 & mouseY<475 & mouseY>425){
    if(numeroclik[4]>0){
    line(xinicial,yinicial,250,450);
    xinicial =250;
    yinicial=450;
    numeroclik[4]--;
      }
      else{
    JOptionPane.showMessageDialog(frame,"perdio");
 }
  }
  if(mouseX>425 & mouseX<475 & mouseY<475 & mouseY>425){
    if(numeroclik[5]>0){
    line(xinicial,yinicial,450,450);
    xinicial =450;
    yinicial=450;
    numeroclik[5]--;
  }
  else{
    JOptionPane.showMessageDialog(frame,"perdio");
 }
  }
  if(mouseX>275 & mouseX<325 & mouseY<275 & mouseY>225){
    if(numeroclik[6]>0){
    line(xinicial,yinicial,300,250);
    xinicial =300;
    yinicial=250;
    numeroclik[6]--;
    }
    else{
    JOptionPane.showMessageDialog(frame,"perdio");
 }
  }
  if(mouseX>225 & mouseX<275 & mouseY<225 & mouseY>175){
    if(numeroclik[7]>0){
    line(xinicial,yinicial,250,200);
    xinicial =250;
    yinicial=200;
    numeroclik[7]--;
  }
   else{
    JOptionPane.showMessageDialog(frame,"perdio");
 }
}
  if(mouseX>225 & mouseX<275 & mouseY<325 & mouseY>275){
    if(numeroclik[8]>0){
    line(xinicial,yinicial,250,300);
    xinicial =250;
    yinicial=300;
    numeroclik[8]--;
  }
   else{
    JOptionPane.showMessageDialog(frame,"perdio");
 }
 }
  if(mouseX>175 & mouseX<225 & mouseY<275 & mouseY>225){
     if(numeroclik[9]>0){
    line(xinicial,yinicial,200,250);
    xinicial =200;
    yinicial=250;
     numeroclik[9]--;
  }
  else{
    JOptionPane.showMessageDialog(frame,"perdio");
 }  
   }   
   }
}