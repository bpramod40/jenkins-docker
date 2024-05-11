@echo off

rem List of Java files with main methods
rem set java_files=File1.java File2.java File3.java
set "java_files=*.java"


rem Compile and run each Java file
for %%f in (%java_files%) do (
    rem Compile the Java file
    echo Compiling %%f...
    javac "%%f"
    
    rem Check if compilation was successful
    if errorlevel 1 (
        echo Compilation failed for %%f. Please fix the errors.
    ) else (
        rem Run the main class
        echo Running %%~nf...
        java %%~nf
    )
)
