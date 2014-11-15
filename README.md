# ffmpeg

A complete, cross-platform solution to record, convert and stream audio and video.

## Sample pillars

    ffmpeg:
      server:
        enabled: true
        input:
          video0:
            source: /dev/video0
            bind:
              host: 192.168.2.1
              port: 8888
            video_format: mjpeg
            width: 640
            height: 480
            format: mpeg
            codec: avi

note: type in your browser http://192.168.2.1:8888/video0.mjpeg

## Read More

* https://www.ffmpeg.org/