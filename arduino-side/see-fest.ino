#include <SoftwareSerial.h>
#include <Servo.h>


#define ACT1 6
#define ACT2 7
#define ACT3 9
#define ACT4 10
#define ACT5 11


Servo servo[5];

void gerakSemua(Servo myservo[]) {
  for (int pos = 0; pos <= 180; pos += 1) { // goes from 0 degrees to 180 degrees
    // in steps of 1 degree
    //    myservo[0].write(pos);
    myservo[1].write(pos);
    myservo[2].write(pos);
    myservo[3].write(pos);
    myservo[4].write(pos);
    delay(15);                       // waits 15ms for the servo to reach the position
  }
//  for (int pos = 180; pos >= 0; pos -= 1) { // goes from 180 degrees to 0 degrees
//    //    myservo[0].write(pos);
//    myservo[1].write(pos);
//    myservo[2].write(pos);
//    myservo[3].write(pos);
//    myservo[4].write(pos);
//    delay(15);                       // waits 15ms for the servo to reach the position
//  }
  
}

void setup() {
  servo[0].attach(ACT1);
  servo[1].attach(ACT2);
  servo[2].attach(ACT3);
  servo[3].attach(ACT4);
  servo[4].attach(ACT5);

  //  terima.begin(9600);
    Serial.begin(9600);
}

void loop() {
  int sensor = analogRead(A0);
  Serial.println(sensor);
  if (sensor >= 500) {
    
    gerakSemua(servo);

  }
  delay(50);
}
