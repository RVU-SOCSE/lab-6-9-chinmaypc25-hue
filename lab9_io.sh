#!/bin/bash

echo "------ I/O REDIRECTION ------"

# Write output to file
echo "Hello World" > output.txt

# Append output
echo "This is an appended line" >> output.txt

# Read input from file
echo "Reading from file:"
cat < output.txt

# Redirect error to file
ls non_existing_file 2> error.txt

echo ""
echo "Contents of output.txt:"
cat output.txt

echo ""
echo "Contents of error.txt:"
cat error.txt

echo ""
echo "I/O Redirection completed."
