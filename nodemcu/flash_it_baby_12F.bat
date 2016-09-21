rem see:  https://nodemcu.readthedocs.io/en/dev/en/flash/

rem esptool.py --port <serial-port-of-ESP8266>
rem   write_flash <flash options> 
rem   0x00000 <nodemcu-firmware>.bin 
rem   <init-data-address> esp_init_data_default.bin

rem <init-data-address>:
rem   0x7c000 for 512 kB, modules like ESP-01, -03, -07 etc.
rem   0xfc000 for 1 MB, modules like ESP8285, PSF-A85
rem   0x1fc000 for 2 MB
rem   0x3fc000 for 4 MB, modules like ESP-12E, NodeMCU devkit 1.0, WeMos D1 mini

esptool.py -p COM4 write_flash --flash_mode dio --flash_size 32m --verify 0x0 nodemcu-dev-20-modules-2016-08-10-18-45-50-float.bin
