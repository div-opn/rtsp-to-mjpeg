# rtsp-to-mjpeg
Simple container to provide access to a RTSP stream via MJPEG.

The image requires the following (Docker) environment variables to be set:
```
CAMERAUSER=''
CAMERAPASSWORD=''
CAMERAIP=''
CAMERAPORT=''
CAMERASTREAM=''
```

For example:
```
docker run -it -e CAMERAUSER='admin' -e CAMERAPASSWORD='password' -e CAMERAIP='192.168.1.123' -e CAMERAPORT='123' -e CAMERASTREAM='stream1' <image>
```
