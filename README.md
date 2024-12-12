## RTSP Setup

For recording videos in our edge store, we use the open-source project [MediaMTX](https://github.com/bluenviron/mediamtx).

### About MediaMTX:

MediaMTX is a zero-dependency real-time media server and proxy.

It allows publishing, reading, proxying, recording, and playing back video/audio streams.

It functions as a "media router," routing media streams from one end to another.

### Repository and Files:

Necessary files for video recording can be cloned from this repo:

`git@github.com:Niflr/niflr-edge-store-rtsp.git`

(Latest branch: new_mediamtx)

### Installation and Binaries:

Depending on your OS (Linux or macOS), download the latest binary from the [MediaMTX releases page](https://github.com/bluenviron/mediamtx/releases).

Configuration:

Before running `mediamtx` for video recording, ensure the following changes in `mediamtx.yaml`:

```bash
recordPath: ./videos/%path_INSTORE_%Y-%m-%d_%H:%M:%S.%f

paths:
  # example:
  # my_camera:
  #   source: rtsp://my_camera

  cam1:
    source: rtsp://st.niflrpassdev.com:8554/live/test-store/cam1

  cam2:
    source: rtsp://st.niflrpassdev.com:8554/live/test-store/cam2

  cam3:
    source: rtsp://st.niflrpassdev.com:8554/live/test-store/cam3
```

Command to run the repo: 
```bash
./mediamtx
```


## UNV Camera Setup

### Finding the Camera IP Addresses:

#### Method 1 (Router Admin Page):

1. Connect your local system to the D-Link router.
2. Access the admin page (e.g., 192.168.0.1 or 192.168.1.1 depending on subnet).
3. Login credentials:
* Username: admin
* Password: N!FlR@2022
4. Click on Devices to view the IP addresses assigned to the cameras.

#### Method 2 (IP Scanner):

* Use an IP scanner tool (e.g., “Angry IP Scanner”) to scan all devices connected to the same router.
* Identify the camera IP addresses from the scan results.

### Accessing the Camera:

1. Open a browser and enter the camera’s IP (e.g., `192.168.0.104`).
2. Camera login credentials:
* Username: admin
* Password: N!FlR@2022

### Adjusting Camera Settings:

1. Frame Rate, Bitrate, Resolution, etc.:

* Click Setup (top navigation bar)
* Click Video (left navigation bar)
* Click Video again (to access video settings)
* Change specifications as required.

2. Adding a Streaming URL:

* Click Setup (top navigation bar)
* Click Video (left navigation bar)
* Click Media Stream
* Click on the + icon and add the RTMP streaming URL.

3. Syncing Camera Time with Local System:

* Click Setup (top navigation bar)
* Click System (left navigation bar)
* Click Time
* From the Sync Mode dropdown, select Sync with NTP Server.
* Set the NTP server address as the camera’s local IP address.
