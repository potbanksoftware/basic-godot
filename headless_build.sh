#! /usr/bin/env bash

rm build.log
git submodule update --init --recursive --remote
godot4.3 --headless --import &> /dev/null
godot4.3 --headless --import &> /dev/null
echo "===== Linux =====" | tee -a build.log
godot4.3 --headless --export-release "Linux" Game.x86_64 2>&1 | tee -a build.log
echo "===== Windows =====" | tee -a build.log
godot4.3 --headless --export-release "Windows Desktop" Game.exe 2>&1 | tee -a build.log
echo "===== Web =====" | tee -a build.log
rm -r web && mkdir web
godot4.3 --headless --export-release "Web" web/index.html 2>&1 | tee -a build.log
zip -r Game.zip web/* -j
echo "===== Files ====="
ls Game.*
