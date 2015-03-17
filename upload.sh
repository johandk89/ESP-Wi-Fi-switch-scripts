$BAUD_RATE=9600
$PORT=/dev/tty.usbserial-A90049VU


for file in *.lua
do
	./luatool.py --port $PORT --src $file --dest $file --baud $BAUD_RATE
done