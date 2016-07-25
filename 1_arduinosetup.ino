
int val;       //create val variable, which will store the readings of A0

void setup() {
  Serial.begin(9600);          //start serial communication with a 9600 serial baud (=bits per second) rate
}

void loop() {
  val = analogRead(A0);        // store the readings of A0
  Serial.write(val);         //send the data stored in val over the serial connection
}
