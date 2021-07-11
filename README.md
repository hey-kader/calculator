# Calculator written in x86-64 (intel 64 bit) Assembly Language

### By Kader Arnold

## Calculator.asm

### This file needs to be compiled into an object file, and then dynamically linked to create an executable. you can do this with nasm

## to create an object file on a mac using ```nasm```

### if you do not have nasm installed, run 
### ```$ brew install nasm```
### if you do not have ```brew```, copy and paste the following line to install it with the neccessary xcode dev tool dependencies.
#####```$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"```

## then, you will be able to run ```$ brew install nasm```

### ```nasm``` is the x86 (and i386) assembler, it turns x86-64 assembly language code 
### into an executable binary file.

### on a mac, to create an executable using ```nasm```, run the following:
### ```$ nasm -f calculator.asm -l calculator.o ``` 
