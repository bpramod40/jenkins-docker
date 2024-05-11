#!/bin/bash

# List of Java files with main methods
java_files=*.java

# Initialize counters
correct_compilations=0
incorrect_compilations=0
correct_executions=0
incorrect_executions=0

# Compile and run each Java file
for file in $java_files; do
    # Compile the Java file
    echo "Compiling $file..."
    javac "$file"
    
    # Check if compilation was successful
    if [ $? -eq 0 ]; then
        echo "Compilation successful."
        correct_compilations=$((correct_compilations+1))
        
        # Run the main class
        echo "Running ${file%.*}..."
        java "${file%.*}"
        
        # Check if execution was successful
        if [ $? -eq 0 ]; then
            echo "Execution successful."
            correct_executions=$((correct_executions+1))
        else
            echo "Execution failed for $file. Please fix the errors."
            incorrect_executions=$((incorrect_executions+1))
        fi
    else
        echo "Compilation failed for $file. Please fix the errors."
        incorrect_compilations=$((incorrect_compilations+1))
    fi
done

# Output assessment count
echo "Correct compilations: $correct_compilations"
echo "Incorrect compilations: $incorrect_compilations"
echo "Correct executions: $correct_executions"
echo "Incorrect executions: $incorrect_executions"

# Generate test report
echo "Test Report:"
echo "Correct compilations: $correct_compilations/$(ls -l $java_files | grep -c ^-)"
echo "Correct executions: $correct_executions/$(ls -l $java_files | grep -c ^-)"
