void setup()//fonction d'initialisation 
{
 // On trace le labyrinthe
background(255,255,255);
size(1200,800);
rect(100,100,500,300);
line(150,200,150,400);
line(200,150,250,150);
line(200,150,200,350);
line(200,350,250,350);
line(250,350,250,200);
line(250,200,450,200);
line(300,100,300,200);
line(350,150,450,150);
line(300,250,300,350);
line(300,250,400,250);
line(350,300,350,400);
line(400,250,400,400);
line(450,150,450,300);
line(450,350,600,350);
line(500,250,500,300);
line(500,300,550,300);
line(550,300,550,200);
line(500,200,550,200);
line(500,100,500,200);
noStroke();
fill(150,0,0);
rect(100+25/2,100+25/2,25,25);
}
//fonction pour deplacer le personnage vers la bas(axe y)
void sourisbas(float x,float y)
{
y=y+0.01;
noStroke();
fill(150,0,0); 
rect(112.5+x,112.5+y,25,25);
}
//fonction pour deplacer le personnnage vers le haut(axe y)
void sourishaut(float x,float y)
{
y=y-0.01;
noStroke();
fill(150,0,0);
rect(112.5+x,112.5+y,25,25);
}
//fonction pour deplacer le personnage vers la droite(axe x)
void sourisdroite(float x ,float y)
{
x=x+0.01;
noStroke();
fill(150,0,0);
rect(112.5+x,112.5+y,25,25);
}
//fonction pour deplacer le personnage vers la gauche(axe x)
void sourisgauche(float  x,float y)
{
x=x-1;
noStroke();
fill(150,0,0);
rect(112.5+x,112.5+y,25,25);
}
//fonction pour effacer le personnage de sa position precédente
void effaceurEllipse(float a ,float b)
{
noStroke(); 
fill(255,255,255);
rect( 110.5+a,110.5+b,25,2);     
}
//variables x et y qui definissent les multiples des coordonnées du personnage
float x;
float y;
//void draw
void draw()
{
  
}
//variables qui definnisent les coordonnées du personnage: d pour x et e pour y
int d;
int e;
//fonction keyPressed. Elle permet de executer une action lorsqu'on appuie sur une touche du clavier. Ici on l'utilisera pour faire deplacer le personnage lorsqu'on appuie sur les touche de mouvement(à savoir haut ,bas ,droite ,gauche ).
void keyPressed()
    {
     int cos , sin, z , t ;
     z=0;
     
     color black = color(0,0,0);
     color c =get(0,0);
    //Si on appuie sur la touche "bas" =DOWN
    if(keyCode == DOWN )
        {
        for(int u =0; u<8;u++)
           { 
                t=0;
             //On garde les coordonnées en x
                d= int(112.5+x);
                //On change les coordonnées en y de 1 px vers le bas
                e=int(112.5+y);
             for (int i = 0 ; i < 30 ; i++ )
                 {
                 
             
                //On definit la couleur blanche (=white)
            
                //On enregistre dans c la couleur du pixel situé à 50 pixels en dessous du centere du personnage
                 c = get(d+i, e+31);
                 //Si ce px n'est pas noir(=si il est blanc) alors on efface notre personnage de sa position actuelle et on le redessinne à 1px vers le bas(deplacement vertical vers le bas).
                 if( c != black)
                      {
                        t=t+1;
                      }
                  if(t == 30)
                      {
                       delay(1);
                       effaceurEllipse(x,y);
                       sourisbas(x,y);
                       y=y+1;
                      }
                 
                }  
              }
            }
        
     //Même procédé mais pour un deplacement vertical vers le haut
     if(keyCode == UP)
        {
        for(int u =0; u<8;u++)  
            {
              t=0;
             d= int(112.5+x);
             e=int(112.5+y); 
            for (int i=0; i < 30 ; i++ )
                {
               
                c= get(d+i,e-3);
                   if( c != black)
                      {
                     t=t+1  ;  
                      }
                  if(t == 30)
                      {
                       delay(1);
                       effaceurEllipse(x,y);
                       sourisbas(x,y);
                       y=y-1;
                      }
                      
                }
             }
            
           }
       
      //Même procédé mais pour un deplacement horisontal vers la droite .Cette fois si c'est la position dans l'axe x qui change et on garde la même position dans l'axe y.  
      if(keyCode == RIGHT)
        {
        for(int u =0; u<8;u++) 
            {
            d= int(112.5+x);
            e=int(112.5+y);
            c = get(d+32,e);
            if( c != black)
                {
                 delay(1);
                 effaceurEllipse(x,y);
                 sourisdroite(x,y);
                 x=x+1;
                }
            }  
        }
        
      // Même procéde que pour le précedent mais cette fois-ci pour un deplacement vers la gauche .
      if(keyCode == LEFT)
          {
          for(int u =0; u<8;u++)   
              {
              d= int(112.5+x);
              e=int(112.5+y);
              c = get(d-3,e);
              if( c != black)
                  {
                  delay(1);
                  effaceurEllipse(x,y);
                  sourisgauche(x,y);
                  x=x-1;
                  }
              }    
          }
    }
    
