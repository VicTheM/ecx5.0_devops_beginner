#!/bin/bash

# Numeric Comparisons
a=5
b=10

if [ $a -eq $b ]; then
    echo "$a is equal to $b"
elif [ $a -ne $b ]; then
    echo "$a is not equal to $b"
fi

if [ $a -lt $b ]; then
    echo "$a is less than $b"
fi

if [ $a -gt 0 ] && [ $b -ge 10 ]; then
    echo "$a is positive, and $b is greater than or equal to 10"
fi

# String Comparisons
str1="hello"
str2="world"

if [ "$str1" = "$str2" ]; then
    echo "$str1 is equal to $str2"
else
    echo "$str1 is not equal to $str2"
fi

if [ -n "$str1" ] && [ -z "" ]; then
    echo "$str1 is not empty, and an empty string is detected"
fi

# File Conditions
file="test.txt"

touch $file # Create a test file

if [ -e "$file" ]; then
    echo "$file exists"

    if [ -f "$file" ]; then
        echo "$file is a regular file"
    fi

    if [ -r "$file" ]; then
        echo "$file is readable"
    fi

    if [ -w "$file" ]; then
        echo "$file is writable"
    fi

    if [ -s "$file" ]; then
        echo "$file is not empty"
    else
        echo "$file is empty"
    fi
fi

# Cleanup test file
rm $file

# Logical Operators
if [ $a -lt $b ] && [ $a -gt 0 ]; then
    echo "$a is less than $b and greater than 0"
fi

if [ $a -eq 5 ] || [ $b -eq 20 ]; then
    echo "Either $a equals 5, or $b equals 20"
fi

if ! [ $a -gt $b ]; then
    echo "$a is not greater than $b"
fi

# Extended Syntax: Double Square Brackets
var="hello123"

if [[ $var =~ [a-z]+[0-9]+ ]]; then
    echo "$var matches the pattern [a-z]+[0-9]+"
fi

# Arithmetic Evaluations
if (( a < b )); then
    echo "$a is less than $b"
fi

if (( a * 2 == 10 )); then
    echo "$a times 2 equals 10"
fi

# Ternary-like Condition
[ $a -lt $b ] && echo "$a is less" || echo "$b is less"

# Combining Conditions
if [ -f "$file" ] && [ -r "$file" ]; then
    echo "$file is a readable file"
fi

# Loops

# For Loop
for i in {1..5}; do
    echo "Iteration $i"
done

# While Loop
count=1
while [ $count -le 5 ]; do
    echo "Count is $count"
    count=$((count + 1))
done

# Until Loop
num=1
until [ $num -gt 5 ]; do
    echo "Number is $num"
    num=$((num + 1))
done

# Looping Through an Array
arr=(apple banana cherry)
for fruit in "${arr[@]}"; do
    echo "Fruit: $fruit"
done

# Looping Through Command Output
for file in $(ls); do
    echo "File: $file"
done

# Looping Through All Files in a Directory
dir="." # Current directory
for file in "$dir"/*; do
    if [ -f "$file" ]; then
        echo "Processing file: $file"
    fi

done

# Functions and Scope

# Function Definition
function greet() {
    local name=$1 # Local variable (scope limited to function)
    echo "Hello, $name!"
}

greet "Alice"
greet "Bob"

# Global Scope
global_var="I am global"

function show_global() {
    echo "$global_var"
    global_var="Modified in function"
}

show_global
echo "$global_var"

# Function with Return Value
function add_numbers() {
    local num1=$1
    local num2=$2
    return $((num1 + num2))
}

add_numbers 3 5
result=$?
echo "Sum is $result"

# Function Calling Another Function
function outer_function() {
    echo "This is the outer function"
    inner_function
}

function inner_function() {
    echo "This is the inner function"
}

outer_function
