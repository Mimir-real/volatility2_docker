# Volatility 2 Dockerfile
A Dockerfile for running Volatility 2 in a Docker container.

### Usage:
After building the image, provide the path to the file to be analyzed using the `--volume` parameter:
```
docker build . -t vol_docker
docker run -it --volume "/path/to/file:/home/vol_user/file" vol_docker
```
vol.py can now be run inside the container:
```
$ vol.py
Volatility Foundation Volatility Framework 2.6.1
ERROR   : volatility.debug    : You must specify something to do (try -h)
```
