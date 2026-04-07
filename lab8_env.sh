#!/bin/bash

echo "------ ENVIRONMENT VARIABLES ------"

# Local variable
name="Chinmay"

# Environment variable
export course="BCA"

echo ""
echo "Local variable:"
echo $name

echo ""
echo "Environment variable:"
echo $course

echo ""
echo "Using printenv (specific variable):"
printenv course

echo ""
echo "All environment variables:"
env
