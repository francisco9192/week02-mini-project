# week02-mini-project

## Temperature Conversion Calculator

This project is a C++ program that converts temperatures between Celsius and Fahrenheit.

## How It Works

The program reads a conversion direction and a temperature from the user. It then calculates the converted temperature using these formulas:

- Celsius to Fahrenheit: F = C * 9 / 5 + 32
- Fahrenheit to Celsius: C = (F - 32) * 5 / 9

The program also checks for invalid inputs and unsupported conversion directions.

## Input and Output

The program takes a conversion direction followed by a temperature.

Examples of expected conversions:

- 0 degrees Celsius converts to 32 degrees Fahrenheit.
- 32 degrees Fahrenheit converts to 0 degrees Celsius.

Invalid directions and invalid temperature inputs produce an error message.

## How to Compile and Run

Open Ubuntu and navigate to the project folder using cd /mnt/c/Users/wisar/week02-mini-project. 
Compile the program by entering 
mkdir -p build followed by g++ -std=c++17 -Wall -Wextra -pedantic src/main.cpp -o build/app. 
Once compiled, run the calculator using ./build/app. 
Enter C 0 to convert Celsius to Fahrenheit or F 32 to convert Fahrenheit to Celsius. 
To run all four automated tests, enter bash test.sh. 
If everything works correctly, the terminal will display All acceptance tests passed.

## Testing

The project includes four acceptance tests:

1. Celsius to Fahrenheit conversion.
2. Fahrenheit to Celsius conversion.
3. Invalid conversion direction.
4. Invalid temperature input.

The tests compare the program's actual output against the expected output.

GitHub Actions automatically runs these tests when code is pushed or a pull request is created.

## Limitations

The program only converts between Celsius and Fahrenheit. It does not support Kelvin or other temperature scales. The program also requires valid numeric temperature input and a supported conversion direction. Lowercase letters are not supported.

## Debugging and Reflection

I tested the program using Ubuntu and a Bash script. The script compiles the program, runs the test cases, and compares the results with the expected outputs. I also intentionally changed an expected-output file to confirm that GitHub Actions could detect a failing test. After correcting the file, the tests passed again.

## AI Use Disclosure

I used ChatGPT for guidance with Git commands, and with troubleshooting errors. I also used it to help understand the project instructions.