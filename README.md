# Pointillism Canvas
An interactive dot-based drawing application made with Arduino IDE and Processing

Prototype demo video: [https://drive.google.com/file/d/1kcc5jUUKsq61Xoibje5utA7ILwHvNSOK/view?usp=drive_link](https://drive.google.com/file/d/1kcc5jUUKsq61Xoibje5utA7ILwHvNSOK/view?usp=drive_link)

![Sequence 01_1](https://github.com/user-attachments/assets/0984b817-969b-4bdc-88da-a15dbd77b66e)

### Hardware:
- [LilyGo T-Display board](https://www.lilygo.cc/products/lilygo%C2%AE-ttgo-t-display-1-14-inch-lcd-esp32-control-board?srsltid=AfmBOor7mrm_vmfWB6wu8yITau-LUsnGRL8LQiT9-7cyLsRfz-yet-uV) (with headers)
- USB-C cable
- 3 Pushbuttons
- 1 [KY-023 Dual Axis Joystick Module](https://arduinomodules.info/ky-023-joystick-dual-axis-module/)
- 1 RBG LED light
- 1 Precision Potentiometer
- Breadboard
- 5 Male-to-Female Jumper Wires
- As many other types of wires, as needed

### Software:
- [Arduino IDE](https://www.arduino.cc/en/software)
- [Processing](https://processing.org/download) (Sketchbook app) 
- [LilyGo T-Display USB Driver](https://github.com/Xinyuan-LilyGO/TTGO-T-Display)
 
## Setup
- Download the correct driver for the LilyGo T-Display
- Ensure USB-C cable can connect the board and be recognized by Arduino IDE
- Solder the headers into both sides of the board (from beneath, short side up)
- Fit the board headers into the breadboard
- Wire the components as shown in the diagram
 
## Arduino Program
- Open the file 'mod2-pointillism-canvas.ino'
- Select port connected to wired board
- Click 'Upload'
- Check Serial output in 'Serial Monitor' (most top-right icon)
- Debug wire connections, as needed

## Processing Program
- Once Arduino code properly runs, open the file 'module2_canvas' in Processing
- Click 'Run' and interact with the canvas on screen
