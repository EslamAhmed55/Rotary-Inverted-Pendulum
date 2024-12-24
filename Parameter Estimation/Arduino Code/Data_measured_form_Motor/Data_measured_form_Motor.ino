// Pin Definitions
const int motorPWM = 6;   // PWM pin connected to motor driver
const int motorIn1 = 8;   // Motor direction pin 1
const int motorIn2 = 9;   // Motor direction pin 2
const int encoderA = 3;   // Encoder channel A (Interrupt pin)
const int encoderB = 5;   // Encoder channel B (Optional, for direction)

volatile long pulseCount = 0;   // Pulse count from the encoder
unsigned long previousMillis = 0;  // Stores the last time data was printed
unsigned long startTime = 0;       // Time at the start of the program

float voltage = 5.0;               // Initial voltage
const float voltageStep = 0.5;     // Voltage step increment
const unsigned long stepInterval = 5000; // Voltage increase interval (1 sec)

// Motor & Encoder Constants
const int PPR = 374;           // Pulses per revolution
const int intervalMs = 10;     // Data printing interval (10 ms)

// Function to handle encoder interrupts
void encoderISR() {
  pulseCount++;
}

void setup() {
  // Initialize Serial Communication
  Serial.begin(115200);

  // Motor setup
  pinMode(motorPWM, OUTPUT);
  pinMode(motorIn1, OUTPUT);
  pinMode(motorIn2, OUTPUT);

  // Set initial motor direction
  digitalWrite(motorIn1, HIGH);
  digitalWrite(motorIn2, LOW);

  // Encoder setup
  pinMode(encoderA, INPUT_PULLUP);
  pinMode(encoderB, INPUT_PULLUP);
  attachInterrupt(digitalPinToInterrupt(encoderA), encoderISR, RISING);

  // Start timing
  startTime = millis();
}

void loop() {
  unsigned long currentMillis = millis();

  // Increase voltage every 1 second
  if (currentMillis - startTime >= stepInterval) {
    voltage += voltageStep;
    if (voltage > 12.0) voltage = 12.0; // Cap voltage at 12V
    startTime = currentMillis;
  }

  // Calculate PWM value from voltage
  int pwmValue = map(voltage * 100, 500, 1200, 106, 255); // Map 5-12V to PWM range (out of 255)

  // Apply PWM to motor
  analogWrite(motorPWM, pwmValue);

  // Calculate and print data every 10ms
  if (currentMillis - previousMillis >= intervalMs) {
    // Calculate RPM
    float rpm = (pulseCount / (float)PPR) * 60000.0 / intervalMs;
    pulseCount = 0; // Reset pulse count

    // Print data
    
    Serial.print(currentMillis);
    Serial.print(", ");
    Serial.print(voltage, 2);
    Serial.print(", ");
    Serial.println(rpm, 2);

    previousMillis = currentMillis;
  }
}
