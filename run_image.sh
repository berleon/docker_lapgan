docker run -ti \
    --device /dev/nvidia0:/dev/nvidia0 \
    --device /dev/nvidiactl:/dev/nvidiactl \
    --device /dev/nvidia-uvm:/dev/nvidia-uvm \
    -v /var/opt/beesbook-data/:/var/opt/beesbook-data \
    -v /home/leon:/home/leon \
    -p 9999:9999 \
    leon/lapgan  /bin/bash
