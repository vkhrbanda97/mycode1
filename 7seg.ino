const int pbutton=2;
int status=0;
int led=12;



void setup() {
  
pinMode(3,OUTPUT);
pinMode(4,OUTPUT);
pinMode(5,OUTPUT);
pinMode(6,OUTPUT);
pinMode(7,OUTPUT);
pinMode(8,OUTPUT);
pinMode(9,OUTPUT);
pinMode(10,OUTPUT);

  pinMode(2,INPUT_PULLUP);
  

}

void on(unsigned int k)
{

               

     switch(k)
     {  case 0:digitalWrite(3,1);
               digitalWrite(4,1);
               digitalWrite(5,1);
               digitalWrite(6,1);
               digitalWrite(7,1);
               digitalWrite(8,1);
               digitalWrite(9,0);
                break;

        case 1:digitalWrite(3,0);
               digitalWrite(4,1);
               digitalWrite(5,1);
               digitalWrite(6,0);
               digitalWrite(7,0);
               digitalWrite(8,0);
               digitalWrite(9,0);
               break;


         case 2:digitalWrite(4,1);
                digitalWrite(3,1);
                digitalWrite(5,0);
                digitalWrite(6,1);
                digitalWrite(7,1);
                digitalWrite(8,0);
                digitalWrite(9,1);
                break;

                
        case 3:digitalWrite(3,1);
               digitalWrite(4,1);
                digitalWrite(5,1);
                digitalWrite(6,0);
                digitalWrite(7,1);
                digitalWrite(8,0);
                digitalWrite(9,1);
                break;

        case 4:digitalWrite(3,0);
               digitalWrite(4,1);
               digitalWrite(5,1);
               digitalWrite(6,0);
               digitalWrite(7,0);               
               digitalWrite(8,1);
               digitalWrite(9,1);
               break;
     
     
         case 5:digitalWrite(3,1);
                 digitalWrite(4,0);
                 digitalWrite(5,1);
                 digitalWrite(6,0);
                 digitalWrite(7,1);
                 digitalWrite(8,1);
                 digitalWrite(9,1);
                 break;

          case 6:   digitalWrite(3,1);
                    digitalWrite(4,0);
                     digitalWrite(5,1);
                     digitalWrite(6,1);
                     digitalWrite(7,1);
                     digitalWrite(8,1);
                      digitalWrite(9,1);  
                      break;  

          case 7:    digitalWrite(3,1);
                      digitalWrite(4,1);
                       digitalWrite(5,1);
                        digitalWrite(6,0);
                        digitalWrite(7,0);
                       digitalWrite(8,0);
                       digitalWrite(9,0); 
                       break;       
                       
          case 8:     digitalWrite(3,1);
                      digitalWrite(4,1);
                       digitalWrite(5,1);
                      digitalWrite(6,1);
                       digitalWrite(7,1);
                           digitalWrite(8,1);
                      digitalWrite(9,1);
                      break;


            case 9:digitalWrite(3,1);
                   digitalWrite(4,1);
                   digitalWrite(5,1);
                   digitalWrite(6,0);
                    digitalWrite(7,1);
                   digitalWrite(8,1);
                   digitalWrite(9,1);
                   break;


                   default: digitalWrite(10,1);
     
     }
     

  
}
  int count=0;
  /* void loop()
    { 
      on(count);
       count++;
        if(count>9)
         count=0;
    }*/

  
void loop()
{


                  on(count);
                status=digitalRead(pbutton);
         if(status==HIGH)
           {
            digitalWrite(led,LOW);
            
           }

             else 
                {
                  digitalWrite(led,HIGH);
                   delay(350);// Switch debouncing delay
                  count++;
                  if(count>9)
                     count=0;
                 
                     
                }

         
  

}
