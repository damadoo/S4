int arraySize = 20;

float [] xPositions;
float [] yPositions;

float [] xSpeeds;
float [] ySpeeds;

int [] xDirections;
int [] yDirections;

void setup () {
  size (500, 500);
  noStroke ();

  //array size
  xPositions = new float [arraySize];
  yPositions = new float [arraySize];

  xSpeeds = new float [arraySize];
  ySpeeds = new float [arraySize];

  xDirections = new int [arraySize];
  yDirections = new int [arraySize];

  //crear los valores
  for (int i = 0; i < xPositions.length; i++) {
    xPositions[i] = random(width);
    yPositions[i] = random(height);
    xSpeeds [i] = random (5);
    ySpeeds [i] = random (3);
    xDirections [i] = (random (1)> 0.5) ? 1 : -1;
    yDirections [i] = (random (1)> 0.5) ? 1 : -1;
  }
}

void draw () {
  background (230, 50, 10);

  for (int i = 0; i < arraySize; i++) {
    xPositions[i] = xPositions[i] + xSpeeds[i] * xDirections[i];
    yPositions[i] = yPositions[i] + ySpeeds[i] * yDirections[i];

    if (xPositions[i] >= width || xPositions[i] < 0) {
      xDirections[i] = xDirections[i] * -1;
    }
    if (yPositions[i] >= height || yPositions[i] < 0) {
      yDirections[i] = yDirections[i] * -1;
    }
    fill (230, 80, 100);
    ellipse (xPositions[i], yPositions[i], 40, 40);
  }
}
