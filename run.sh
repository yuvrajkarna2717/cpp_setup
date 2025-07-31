#!/bin/bash
cd build || exit
cmake --build .
echo -e "\n--- Running ---\n"
./main.exe < ../input.txt > ../output.txt
echo "Output written to output.txt"clear
