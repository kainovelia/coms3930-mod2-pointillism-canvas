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
- Wire the components as shown in the diagram below
![Fritzing Sketch - Pointilism Canvas_bb](https://github.com/user-attachments/assets/ba63c7a1-055a-4cdc-8de2-ce86942d1e3c)

## Arduino Program
- Open the file 'mod2-pointillism-canvas.ino'
- Select port connected to wired board
- Click 'Upload'
- Check Serial output in 'Serial Monitor' (most top-right icon)
- Debug wire connections, as needed

## Processing Program
- Once Arduino code properly runs, open the file 'module2_canvas' in Processing
- Click 'Run' and interact with the canvas on screen

## Enclosure Design
- Open the provided STL files in Ultimaker Cura
- Adjust the print settings and send the files over to a compatible 3D printer
- Remove the 3D print and clean up the edges
- Secure the wire connections between the hardware components (by soldering or heatshrink wrapping)
- Add heatsets to the provided holes in each corner of Part 1 and the outside of Part 3
- Attach the hardware components to the outer shell for Part 1. Depending on the type of component, you can glue or securely screw mount them into place
- Snake the wires for each component through their designated holes in Part 2, according to the diagram below. (Below, the joystick mount was not succesfully printed, and the joystick wires were fed through one of the light holes as a result.)
![plate wiring](https://github.com/user-attachments/assets/5d6b383b-eb0b-413a-a547-05bb7be6c42e)
- Additionally, you can organize the bundles and wires by component using scrap pieces of wire, to allow for easier connecting later
- Test the wire connections on the breadboard, following the fritzing diagram above. Adjust and make fixes as necessary.
- Once the wire connections are working, push the Part 2 plate nto the inside of Part 1, as far as it can, to help secure the components.
- Ensure are the wires come out of the opening on the bottom of Part 1. You may want to tape the wires flatly to Part 2, to also help differentiate them by their order.
- Place Part 3 face-down (the side with the Part 2 extrusion) and using M3 10mm screws, screw the enclosure shut by the heatsets in each corner.
- Enclosure is now done, and you can simply connect the wires to the breadboard (with the LilyGo T-Display) when needed to be used.

