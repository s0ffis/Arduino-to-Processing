import processing.serial.*;   //Unlike Arduino, Processing  doesn't know about serial ports
                               //without an external library. Import serial library

int val = 0; // Create a variable called val to store data from serial port 
Serial port; // Create a serial object called port

void setup() {   //setup function, just like arduino
  size(400, 400);  //create a window (width:400, height:400)  
  port = new Serial(this, Serial.list()[X], 9600);  //INITIALIZE SERIAL PORT
                                                    //to populate the serial object "port" with the necessary information,
                                                    //the program needs to know it is a new instance of the serial object.
                                                    //expected parameters: 
                                                    //[1] which application it will be speaking to
                                                    //[2] which serial port it will communicate over
                                                    //    N.B. change the X to the number that you found using the "printserialports" sketch
                                                    //[3] at what speed
                                                
}

void draw() {  //the draw function is analogous to Arduino's loop
  // Set the background
  background(val);   
  
}

void serialEvent(Serial port) {  // serialEvent is called whenever there is data available to read for the object "port". 
                                 // it expects instructions.
  val = port.read();  //read the data on port and store it in the variable val
}

