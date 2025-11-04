Zen Den: A guided breathing prototype designed to cultivate calm through code.
Overview: Zen Den is an interactive mindfulness tool built in **Processing** that visualises rhythmic breathing through animation.  
It invites users to slow down, focus, and reflect — demonstrating how code can shape emotional and embodied experiences.  
A single circle expands on the inhale, pauses on hold, and contracts on exhale, mirroring natural breathing cycles.  
The project reflects my exploration of creative coding, user experience, and reflective practice throughout this semester.

Features  
- Smooth looping animation with three distinct phases: *Inhale*, *Hold*, *Exhale*  
- natural, lifelike rhythm using   
- real-time personalisation for each breathing phase  
- (Future) Custom colour palettes to reflect different moods or energy states  
- (Future) Multiple circles with varying breathing rhythms tailored to specific needs or contexts  

Technologies Used  
- Processing (Java-based creative coding environment)  
- Built-in functions: `millis()`, `lerp()`, `bezierPoint()`  


Getting Started: Installation  
Open ZenDen.pde in Processing.
Press Run ▶ to start the sketch.
Watch the circle expand, pause, and contract with the breathing rhythm.


How It Works: Code Walkthrough
Core Animation Logic
java
Copy code
float easeInOut(float x) {
return bezierPoint(0, 0, 1, 1, x);
}

float radiusFor(Phase p, float t) {
  if (p == Phase.INHALE) return lerp(minR, maxR, easeInOut(t));
  if (p == Phase.HOLD) return maxR;
  return lerp(maxR, minR, easeInOut(t));
}
easeInOut() smooths animation timing using a Bézier curve — this makes motion feel organic rather than robotic.

radiusFor() determines the circle’s size at any given time, depending on which breathing phase the user is in.

A timer based on millis() controls phase transitions, ensuring a consistent, looped breathing rhythm.

Sliders (optional) dynamically update timing variables so the animation instantly reflects user preferences.

Together, these components form a meditative cycle that’s both algorithmic and emotional — using code to visualise calm.


Theoretical Framework: Zen Den draws on insights from:
- Resnick (2017) — Learning through tinkering and playful experimentation.
- Norman (1998) — Intuitive design that minimises cognitive load.
- Schön (1992) — Reflection in-action, where learning occurs through doing.
These theories informed my approach, treating code as both a technical tool and a reflective medium for creative, mindful interaction.

License
This project is licensed under the MIT License.

Author
Amira Shields

GitHub: github.com/amirashields

Email: amira.shields@student.uts.edu.au



