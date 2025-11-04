
float minSize = 120;
float maxSize = 420;



int inhaleMs = 4000;   // 4 seconds inhale
int holdMs   = 2000;   // 2 seconds hold
int exhaleMs = 4000;   // 4 seconds exhale

int totalMs;           
int cycleStart;        

void setup() {
  size(600, 600);
  ellipseMode(CENTER);
  textAlign(CENTER, CENTER);
  textSize(28);
  totalMs = inhaleMs + holdMs + exhaleMs;
  cycleStart = millis();
}

void draw() {
  background(18, 24, 32);

  int now = millis();
  int elapsed = (now - cycleStart) % totalMs;

  float currentSize;
  String label;


  if (elapsed < inhaleMs) {
    float p = map(elapsed, 0, inhaleMs, 0, 1);
    float eased = easeInOutSine(p);
    currentSize = lerp(minSize, maxSize, eased);
    label = "Inhale...";


  } else if (elapsed < inhaleMs + holdMs) {
    currentSize = maxSize;
    label = "Hold...";


  } else {
    int exElapsed = elapsed - inhaleMs - holdMs;
    float p = map(exElapsed, 0, exhaleMs, 0, 1);
    float eased = easeInOutSine(p);
    currentSize = lerp(maxSize, minSize, eased);
    label = "Exhale...";
  }


  noStroke();
  fill(100, 180, 255, 170);
  ellipse(width/2, height/2, currentSize, currentSize);

  // Draw text
  fill(240);
  text(label, width/2, height - 60);
}


float easeInOutSine(float t) {
  return -0.5 * (cos(PI * t) - 1);
}
