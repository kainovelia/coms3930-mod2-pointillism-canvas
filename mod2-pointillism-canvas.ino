/* Pointillism Canvas Arduino Setup
  Karin Novelia - kn2596 
  */


/* Defining input and output pins */
#define RED_LED 12
#define RED_BUTTON 13
#define GREEN_LED 15
#define GREEN_BUTTON 2
#define BLUE_LED 17
#define BLUE_BUTTON 22

#define X_PIN 38
#define Y_PIN 39
#define Z_PIN 32

#define POT_PIN 36

void setup() {
	Serial.begin(115200);

	pinMode(RED_BUTTON, INPUT_PULLUP);
	pinMode(GREEN_BUTTON, INPUT_PULLUP);
	pinMode(BLUE_BUTTON, INPUT_PULLUP);

	pinMode(RED_LED, OUTPUT);
	pinMode(GREEN_LED, OUTPUT);
	pinMode(BLUE_LED, OUTPUT);

  pinMode(Z_PIN, INPUT_PULLUP);
  pinMode(POT_PIN, INPUT_PULLUP);
}
void loop() {
  /* RGB LED state variables */
	int redState = digitalRead(RED_BUTTON);
	int greenState = digitalRead(GREEN_BUTTON);
	int blueState = digitalRead(BLUE_BUTTON);

	if (!redState) {
		digitalWrite(RED_LED, HIGH);
    Serial.printf("1,");
	}	else {
		digitalWrite(RED_LED, LOW);
    Serial.printf("0,");
	}

  if (!greenState) {
		digitalWrite(GREEN_LED, HIGH);
    Serial.printf("1,");
	}	else {
		digitalWrite(GREEN_LED, LOW);
    Serial.printf("0,");
	}

  if (!blueState) {
    digitalWrite(BLUE_LED, HIGH);
    Serial.printf("1,");
  } else {
    digitalWrite(BLUE_LED, LOW);
    Serial.printf("0,");
  }
  /* Joystick input */
  int xVal = analogRead(X_PIN);
  int yVal = analogRead(Y_PIN);
  int zVal = digitalRead(Z_PIN);
  
  /* To see output in Serial Monitor */
  Serial.printf("%d,%d,%d,", xVal, yVal, zVal);
  delay(100);

  /* Potentiometer dial input: range from 0 to 4095 */
  int dialVal = analogRead(POT_PIN);

  Serial.printf("%d", dialVal);
  Serial.println();
  delay(100);

}
