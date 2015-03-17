# ESP-Wi-Fi-Switch
ESP-Wi-Fi Switch running on NodeMcu


###Flash NodeMCU
Make sure GPIO pin 0 is grounded

```shell
git clone https://github.com/nodemcu/nodemcu-firmware.git
cd nodemcu-firmware
make
make ESPPORT="/dev/tty.usbserial-A90049VU" flash
````

Replace the ESPPORT with your serial connection to the ESP


####Upload Lua scripts
```
./upload.sh`
```
Reboot device

###License
The MIT License (MIT)

Copyright (c) 2015 jdkza

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
