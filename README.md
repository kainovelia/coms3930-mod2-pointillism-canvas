# Pointillism Canvas
An interactive dot-based drawing application made with Arduino IDE and Processing

Insert GIF demo here

### Hardware:
- LilyGo T-Display board (with headers)
- USB-C cable
- 3 Pushbuttons
- 1 RBG LED light
- 1 Precision Potentiometer
- Breadboard
- 5 Male-to-Female Jumper Wires
- As many other types of wires, as needed

### Software:
- Arduino IDE
- Processing (Sketchbook app)
- LilyGo T-Display Driver
 
## Setup
- Download the correct driver for the LilyGo T-Display
- Ensure USB-C cable can connect the board and be recognized by Arduino IDE
- Solder the headers into both sides of the board (from beneath, short side up)
- Fit the board headers into the breadboard
- Wire the components as shown in the diagram
 
## Arduino Program
- Install the espressif 32 library and board by Bodmer
- Open the file 'mod2-pointillism-canvas.ino'
- Select port connected to wired board
- Click 'Upload'
- Check Serial output in 'Serial Monitor' (most top-right icon)
- Debug wire connections, as needed

## Processing Program
- Once Arduino code properly runs, open the file 'module2_canvas' in Processing
- Click 'Run' and interact with the canvas on screen
