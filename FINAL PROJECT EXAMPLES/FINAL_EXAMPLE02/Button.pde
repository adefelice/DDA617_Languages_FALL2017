Button bt1;
Button bt2;

void setButtons(){
  bt1=new Button("Task 1",width/2-80,height/2);
  bt2=new Button("Task 2",width/2-80,height/2+80);
}

class Button{
  float xpos,ypos;
  
  float wd=160;
  float ht=40;
  String name;
  
  Button(String name,float xpos,float ypos){
    this.xpos=xpos;
    this.ypos=ypos;
    this.name=name;
  }
  
  boolean cursorOn(float cx,float cy){
    if(cx>xpos && cx<xpos+wd && cy>ypos && cy<ypos+ht){
      return true;
    }else{
      return false;
    }
    
  }
  
  void display(float cx,float cy){
    if(cursorOn(cx,cy)){
      fill(255,150);
      noStroke();
      rect(xpos,ypos,wd,ht);
      
      fill(0);
      textAlign(CENTER,CENTER);
      textSize(24);
      text(name,xpos+wd/2,ypos+ht/2);
    }else{
      noFill();
      strokeWeight(2);
      stroke(255);
      rect(xpos,ypos,wd,ht);
      fill(255);
      textAlign(CENTER,CENTER);
      textSize(24);
      text(name,xpos+wd/2,ypos+ht/2);
    }
  }
}
      