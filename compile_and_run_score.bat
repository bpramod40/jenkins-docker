@echo off

rem List of Java files with main methods
rem set "java_files=File1.java File2.java File3.java"
set "java_files=*.java"

rem Initialize counters
set correct_compilations=0
set incorrect_compilations=0
set correct_executions=0
set incorrect_executions=0

rem Compile and run each Java file
for %%f in (%java_files%) do (
    rem Compile the Java file
    echo Compiling %%f...
    javac "%%f"
    
    rem Check if compilation was successful
    if errorlevel 1 (
        echo Compilation failed for %%f. Please fix the errors.
        set /a incorrect_compilations+=1
    ) else (
        echo Compilation successful.
        set /a correct_compilations+=1
        
        rem Run the main class
        echo Running %%~nf...
        java %%~nf
        
        rem Check if execution was successful
        if errorlevel 1 (
            echo Execution failed for %%f. Please fix the errors.
            set /a incorrect_executions+=1
        ) else (
            echo Execution successful.
            set /a correct_executions+=1
        )
    )
)

rem Output assessment count
echo Correct compilations: %correct_compilations%
echo Incorrect compilations: %incorrect_compilations%
echo Correct executions: %correct_executions%
echo Incorrect executions: %incorrect_executions%

rem Generate test report
echo Test Report:
echo Correct compilations: %correct_compilations%/%java_files%
echo Correct executions: %correct_executions%/%java_files%
