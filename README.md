# README for Username Validation Script

## Author Information
- **Name:** Tyler Momani
- **Course:** cpsc 298-01
- **Assignment:** Maxscore Assignment
- **Date:** 11/8/2025

## Program Description
This Bash script prompts the user for five positive integer scores, determines the highest score, and prints how far each score differs from that maximum. It supports interactive input and non-interactive testing via `maxscore-input`. The script trims common whitespace and validates inputs to avoid errors when run in CI or with redirected input.

## Usage
To run the script interactively:
```bash
./maxscore.sh
```

To test with the provided input file:
```bash
./maxscore.sh < maxscore-input
```

## How the Script Works
1. The script prompts the user to enter five positive integer scores.
2. It reads the scores into an array, ensuring to trim any leading or trailing whitespace.
3. It validates that each input is a positive integer.
4. It calculates the maximum score from the array.
5. It computes the difference between each score and the maximum score.
6. Finally, it prints the maximum score and the differences for each score.



## Testing Results
The script has been tested with various inputs, including:
- Valid positive integers
- Inputs with leading/trailing whitespace
- input from `maxscore-input` file to ensure correct functionality in non-interactive mode.
- Invalid inputs to verify error handling.


## Challenges and Solutions

## Resources
- day 11 arrays lecture
## License
This project is part of coursework for Chapman University and is intended for educational purposes.
