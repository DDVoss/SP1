class Gomez {
  int x;
  int y;
  float angle;
  float gomScore;
  float maxAngle;
  float minAngle;
  float direction;
  Gomez(int tmpX, int tmpY) {
    x = tmpX;
    y = tmpY;
    gomScore = 0;
    angle = 0;
    maxAngle = 0.3;
    minAngle = -0.3;
    direction = 1;
  }

  void gomezDisplay() {
    pushMatrix();

    translate(x, y);
    rotate(this.angle);

    ellipseMode(CENTER);
    rectMode(CENTER);
    stroke(0);

    strokeWeight(3);
    fill(245, 173, 96);
    rect(0, 0, 300, 120, 10, 150, 10, 10);

    // Antennas
    line(65, -60, 50, -120);
    line(105, -60, 130, -120);

    // Eyes
    fill(255);
    ellipse(65, -20, 35, 65);
    rect(112, -10, 40, 20);
    fill(0);
    ellipse(70, -15, 8, 35);
    rect(112, -10, 15, 5);

    // Mouth
    fill(188, 46, 46);
    triangle(55, 30, 85, 20, 115, 30);

    // Feet (multiple)
    for (int i = 0; i <= 240; i += 60) {
      fill(80);
      ellipse(-120 + i, 60, 40, 30);
    }
    popMatrix();
  }

  void click(int mx, int my) {
    if (mx > x && mx < x + 300 && my > y && my < y + 120) {
      gomScore ++;
    }
  }

  void wriggle() {
    if (this.angle >= maxAngle) {
      direction = -0.01 + (-0.01 * gomScore);
    } else if (this.angle <= minAngle) {
      direction = 0.01 + (0.01 * gomScore);
    }
    this.angle += direction;
  }
}
