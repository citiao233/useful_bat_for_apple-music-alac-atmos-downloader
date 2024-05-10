@echo off

adb forward tcp:10020 tcp:10020 && adb shell su 0 '/data/local/tmp/frida-server-16.2.1-android-x86_64'
pause