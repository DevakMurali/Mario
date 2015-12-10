int y = 0;
int change = 0;
int ground;
int groundchange=  ground - 100;
int jump;
boolean jumpTest = false;
boolean fall = false;
boolean activ = false;
int stairMove = 1300;
boolean dead = false;
boolean collide = false;
int goombaSize = 27;
//int block1 = 361;

Goomba goomba1;
Goomba goomba2;


Block block1;
Block block2;
Block block3;
Block block4;
Block block5;
Block block6;
Block block7;
Block block8;
Block block9;
Block block10;
Block block11;
Block block12;
Block block13;
Block block14;
Block block15;
Block block16;
Block block17;
Block block18;
Block block19;
Block block20;
Block block21;
Block block22;
Block block23;
Block block24;
Block block25;
Block block26;
Block block27;
Block block28;
Block block29;
Block block30;
Block block31;
Block block32;
Block block33;
Block block34;
Block block35;
Block block36;
Block block37;
Block block38;
Qbox qblock1;
Qbox qblock2;


void setup(){
  size(800, 500);
  goomba1 = new Goomba(500, 423, 100);
  goomba2 = new Goomba(908, 347, 50);
  block1 = new Block(361, 424,1,2,3);
  block2 = new Block(649, 424,1,2,3);
  block3 = new Block(stairMove+860, 424,1,2,3);
  block4 = new Block(stairMove+886, 424,1,2,3);
  block5 = new Block(stairMove+912, 424,1,2,3);
  block6 = new Block(stairMove+938, 424,1,2,3);
  block7 = new Block(stairMove+964, 424,1,2,3);
  block8 = new Block(stairMove+990, 424,1,2,3);
  block9 = new Block(stairMove+1016, 424,1,2,3);
  block10 = new Block(stairMove+886, 398,1,2,3);
  block11 = new Block(stairMove+912, 398,1,2,3);
  block12 = new Block(stairMove+938, 398,1,2,3);
  block13 = new Block(stairMove+964, 398,1,2,3);
  block14 = new Block(stairMove+990, 398,1,2,3);
  block15 = new Block(stairMove+1016, 398,1,2,3);
  block16 = new Block(stairMove+912, 372,1,2,3);
  block17 = new Block(stairMove+938, 372,1,2,3);
  block18 = new Block(stairMove+964, 372,1,2,3);
  block19 = new Block(stairMove+1016, 372,1,2,3);
  block20 = new Block(stairMove+938, 346,1,2,3);
  block21 = new Block(stairMove+964, 346,1,2,3);
  block22 = new Block(stairMove+1016, 346,1,2,3);
  block23 = new Block(stairMove+964, 320,1,2,3);
  block24 = new Block(stairMove+1016, 320,1,2,3);
  block25 = new Block(stairMove+1016, 294,1,2,3);
  block26 = new Block(stairMove+990, 346,1,2,3);
  block27 = new Block(stairMove+990, 320,1,2,3);
  block28 = new Block(stairMove+990, 294,1,2,3);
  block29 = new Block(stairMove+1016, 268,1,2,3);
  block30 = new Block(stairMove+990, 372,1,2,3);
  block31 = new Block(859, 372, 2,2,1);
  block32 = new Block(885, 372, 2,1,4);
  block33 = new Block(911, 372, 2,1,4);
  block34 = new Block(937, 372, 2,1,4);
  block35 = new Block(963, 372, 2,2,2);
  block36 = new Block(911, 294, 2,1,4);
  block37 = new Block(937, 294, 2,2,2);
  block38 = new Block(885, 294, 2,2,1);
  
  qblock1 = new Qbox(493, 315);
  qblock2 = new Qbox(911, 216);
  
  //file = new SoundFile(this, "track.mp3");
  //file.play();
}

//DRAW FUNCTION
void draw(){
  
  background(148, 216, 255);
  //image(loadImage("goomba2.png"), 908 + change ,347, 26, 26);
  ground(); 
  if(y < ground){
    image(loadImage("jumpingMario.png"), 35, 418+y,40,40);
  }
  else{
  image(loadImage("mario.png"), 40, 418+y, 32, 32);
  }
  superJump();
  //image(loadImage("brick.png"), 859 + change, 371, 26, 26);
  move();
  //coolBox();
  text(ground, 10, 10);
  text(block1.blockX + change, 10, 300);
  goomba1.drawGoomba();
  goomba1.moveGoomba();
  goomba2.drawGoomba();
  goomba2.moveGoomba();
  block1.drawBlock();
  block1.barrier();
  block2.drawBlock();
  block2.barrier();
  block3.drawBlock();
  block3.barrier();
  block4.drawBlock();
  block4.barrier();
  block5.drawBlock();
  block5.barrier();
  block6.drawBlock();
  block6.barrier();
  block7.drawBlock();
  block7.barrier();
  block8.drawBlock();
  block8.barrier();
  block9.drawBlock();
  block9.barrier();
  block10.drawBlock();
  block10.barrier();
  block11.drawBlock();
  block11.barrier();
  block12.drawBlock();
  block12.barrier();
  block13.drawBlock();
  block13.barrier();
  block14.drawBlock();
  block14.barrier();
  block15.drawBlock();
  block15.barrier();
  block16.drawBlock();
  block16.barrier();
  block17.drawBlock();
  block17.barrier();
  block18.drawBlock();
  block18.barrier();
  block19.drawBlock();
  block19.barrier();
  block20.drawBlock();
  block20.barrier();
  block21.drawBlock();
  block21.barrier();
  block22.drawBlock();
  block22.barrier();
  block23.drawBlock();
  block23.barrier();
  block24.drawBlock();
  block24.barrier();
  block25.drawBlock();
  block25.barrier();
  block26.drawBlock();
  block26.barrier();
  block27.drawBlock();
  block27.barrier();
  block28.drawBlock();
  block28.barrier();
  block29.drawBlock();
  block29.barrier();
  block30.drawBlock();
  block30.barrier();
  block31.drawBlock();
  block31.barrier();
  block32.drawBlock();
  block32.barrier();
  block33.drawBlock();
  block33.barrier();
  block34.drawBlock();
  block34.barrier();
  block35.drawBlock();
  block35.barrier();
  block36.drawBlock();
  block36.barrier();
  block37.drawBlock();
  block37.barrier();
  block38.drawBlock();
  block38.barrier();
  
  qblock1.drawBox();
  qblock2.drawBox();
  image(loadImage("flag.png"), change+712+1734, 183, 44, 268);
  text(block35.blockY, 10, 50);
  text(groundchange, 10, 150);
  image(loadImage("ground.png"), 1177 + change, 424, 26, 26);
   image(loadImage("ground.png"), 379 + change, 0, 26, 26);
    image(loadImage("ground.png"), 30 + change, 0, 26, 26);
}


void move(){
  if(keyPressed){
      if(keyCode == RIGHT){
        change+=-4;
        
      }
      if(keyCode == LEFT){
        change+=4;
      }
      }

      if(keyCode == UP|| keyCode == RIGHT && keyCode ==UP|| keyCode == LEFT && keyCode == UP){
        if(y == ground){
          jump = -5;
          groundchange = ground -100;
          fall = true;
          
        }
      }
      if(fall == true){
          if(y > ground){
             jump = 0;
             y = ground;  
             groundchange = ground -100;
             fall = false;
          }
          if(y < groundchange || collide == true){
            jump = 5;
            groundchange = ground -100;
            
          }
      }
          //if(fall == true){
          //  if(y < ground){
          //    jump = 5;
          //    groundchange = ground -100;
          //  }
          //  if(y == ground){
          //    jump = 0;
          //    y = 0;
          //    fall = false;
          //    groundchange = ground -100;
          //  }
          //  else{
          //    fall = true;
          //  }
          //}
         y+=jump;
   }




void ground(){
  
  image(loadImage("ground3.png"), -1 + change, 450, 2674, 54);
  image(loadImage("cloud2.jpg"), 100 + change/2, 100, 80, 70);
  image(loadImage("cloud2.jpg"), 400 + change/2, 20, 80, 70);
  image(loadImage("cloud2.jpg"), 900 + change/2, 200, 80, 70);
  image(loadImage("cloud2.jpg"), 600 + change/2, 300, 80, 70);
  image(loadImage("cloud2.jpg"), 1200 + change/2, 20, 80, 70);
  
}



void coolBox(){
  image(loadImage("upgrade2.png"), 493+change,315, 27, 27);  
}

class Goomba{
  int goombaStart;
  int goombaY;
  int goombaChange;
  boolean alive = true;
  int goombaX = 0;
  int goombaMovement = 2;
  Goomba(int goombaStart, int goombaY, int goombaChange){
    this.goombaStart = goombaStart;
    this.goombaChange = goombaChange;
    this.goombaY = goombaY;
  }
  void drawGoomba(){
    if(alive == true){
      image(loadImage("goomba2.png"), goombaStart+goombaX+change, goombaY, 27, goombaSize);
    }
  }
  void moveGoomba(){
    if(goombaStart + goombaX  > goombaStart + goombaChange){
      goombaMovement += -2;
    }
    if(goombaStart + goombaX  < goombaStart - goombaChange){
      goombaMovement = 2;
    }
    if(alive == true){
      if(goombaStart + goombaX + change < 65 && goombaStart + goombaX + change > 19 && y < ground-26 && y > ground- 40){
        println("BANG BANG");
        alive = false;
        
      }
      if((goombaStart + goombaX + change < 65 && goombaStart + goombaX + change > 19) && y == ground){
        println("Dead");
      }
    }
    goombaX += goombaMovement;
    fill(255,255,255);
    textSize(20);
    text(goombaStart+goombaX+change, 10, 30);
    
  }
}

class Block{
  int blockX;
  int blockY;
  int type;
  boolean onBlock = false;
  boolean falling = false;
  int part;
  int side;
  Block(int blockX, int blockY, int type, int part, int side){
    this.blockX = blockX;
    this.blockY = blockY;
    this.type = type;
    this.part = part;
    this.side = side;
  }
  void drawBlock(){
    if(type == 1){
      image(loadImage("ground.png"), blockX + change, blockY, 26, 26);
    }
    if(type == 2){
      image(loadImage("brick.png"), blockX + change, blockY, 26, 26);
    }
  }
  void barrier(){
    if(keyPressed){
      if(keyCode == RIGHT){
        if(blockX + change < 69 && y > blockY- 450 && y < blockY - 390){
          change+=4;
          if(blockX + change < 19){
            change+=-4;
          }
        }
        jumpTest = false;
      }
      if(keyCode == LEFT){
        if(blockX + change > 19 && y > blockY- 450 && y < blockY - 390){
          change+=-4;
          if(blockX+change > 67){
            change+=4;   
          }
        }
        jumpTest = false;
      }
      
    }
    if(jumpTest == false){
      if(y < ground){
          if(blockX + change < 69 && blockX +change > 17){
            ground = blockY-450;
            activ = true;
          }
          else{
            ground = 0;
          }
          
          if(y == ground){
            jumpTest = true;
          }
        }
    }
    if(part == 2 && side == 1){
    if(blockX + change < 69 && blockX + change > 17 && y == blockY - 450){
    onBlock = true;
  }
  if(keyPressed && keyCode == UP){
    onBlock = false;
  }
  if(onBlock == true){
    if((blockX + change > 69)){
      ground = 0;
      falling = true;
      onBlock = false;
    }
  }
 }
  if(falling == true){
    if(y < ground){
      jump = 5;
      y += jump;
    }
    if(y > ground){
      jump = 0;
      y = ground;
      falling = false;
    }
  }
  
  if(part == 2 && side == 2){
    if(blockX + change < 69 && blockX + change > 17 && y == blockY - 450){
    onBlock = true;
  }
  if(keyPressed && keyCode == UP){
    onBlock = false;
  }
  if(onBlock == true){
    if((blockX + change < 17)){
      ground = 0;
      falling = true;
      onBlock = false;
    }
  }
 }
  if(falling == true){
    if(y < ground){
      jump = 5;
      y += jump;
    }
    if(y > ground){
      jump = 0;
      y = ground;
      falling = false;
    }
  }
  
  if(part == 2 && side == 3){
    if(blockX + change < 69 && blockX + change > 17 && y == blockY - 450){
    onBlock = true;
  }
  if(keyPressed && keyCode == UP){
    onBlock = false;
  }
  if(onBlock == true){
    if((blockX + change > 69 || blockX + change < 17)){
      ground = 0;
      falling = true;
      onBlock = false;
    }
  }
 }
  if(falling == true){
    if(y < ground){
      jump = 5;
      y += jump;
    }
    if(y > ground){
      jump = 0;
      y = ground;
      falling = false;
    }
  }
  if(blockX + change < 69 && blockX + change > 17){
    if(y > blockY){
      groundchange = ground - 26;
    }
  }
  
  }
}

class Qbox{
  int x;
  int y;
  Qbox(int x, int y){
    this.x = x;
    this.y = y;
  }
  void drawBox(){
    image(loadImage("upgrade2.png"), x+change, y, 26, 26);  
  }
  void work(){
  
  }
}
void keyReleased(){
 if(keyCode==UP){
   keyCode=0;
  } 
}
void superJump(){
if(change == 344 && keyPressed && keyCode == UP){
  jump = -100;
}
}