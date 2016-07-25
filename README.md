This repository shows how to connect Arduino to Processing using serial communication.

The goal is use a light sensor to control a visual output on a Processing sketch.

##What you will need

- An Arduino UNO
- A breadboard
- A photoresistor
- A 10K Ohm resistor
- 4 jumper cables
- The [Arduino IDE](https://www.arduino.cc/en/Main/Software)
- The [Processing IDE](https://processing.org/download/)

##Brief instructions

1. Copy the circuit shown on circuit.png.
2. Upload the sketch 1_arduinosetup.ino on your board using Arduino IDE.
3. Check the number of your serial port on the Processing IDE using the sketch 2_printserialports.pde.
4. Launch the 3_output.pde sketch on the Processing IDE to visualize the output.