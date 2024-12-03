import cv2
cap = cv2.VideoCapture("/tmp/ppp")

while True:
	try:
		ret, frame = cap.read()
		if ( frame is not None) :
			cv2.imshow('m5cams3', frame)
		else:
			print(frame)
			break
		cv2.waitKey(1)
	except KeyboardInterrupt:
		print("KeyboardInterrupt")
		break



cap.release()
cv2.destroyAllWindows()

