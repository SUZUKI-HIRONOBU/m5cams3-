# m5cams3
## 利用方法
- GNU/Linuxに別途WiFiドングルを接続する。
- 新しく接続したWiFiドングル側に現れるUnitCamS2-WiFiに(WiFiドングル側を)接続する。
- 192.168.4.1にpingをかけてネットワークが有効かどうか確認する。
- CamConnect.shを動かす。
  - /tmp/pppがpipeファイルになっていて、そこをインタフェースにする。
  - http://192.168.4.1/api/v1/stream からの読み込みを/tmp/pppに書き出している。
	- m5cams3からはマルチパートのHTMLとしてmjpegのフレームが送られている。
-  テストとしてgetmjpeg.pyを稼働させる。
   - OpenCVを使用している。
   - /tmp/pppを読み込む形で動作させている。
   - 余計なMIMEのテキストなどは無視してjpeg (mjpeg)として読み込んでくる。
	 - おおよそ9-12fps程度のフレームレートである。
