
#!/usr/bin/env bash
set -eu

# Create build folder
mkdir -p build

# Compile the C++ program
g++ -std=c++17 -Wall -Wextra -pedantic src/main.cpp -o build/app

# Test 1: Celsius to Fahrenheit
./build/app < tests/input1.txt > build/actual1.txt
diff -u tests/expected1.txt build/actual1.txt

# Test 2: Fahrenheit to Celsius
./build/app < tests/input2.txt > build/actual2.txt
diff -u tests/expected2.txt build/actual2.txt

# Test 3: Invalid direction
./build/app < tests/input3.txt > build/actual3.txt
diff -u tests/expected3.txt build/actual3.txt

# Test 4: Invalid temperature
./build/app < tests/input4.txt > build/actual4.txt
diff -u tests/expected4.txt build/actual4.txt

echo "All acceptance tests passed"
