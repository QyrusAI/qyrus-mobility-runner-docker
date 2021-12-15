# Qyrus App Automate
This repository contains Dockerfile to run mobility tests on Qyrus.

Qyrus is a end to end testing platform designed to test Web, Mobile and APIs for all digital enterprises. With its codeless approach to testing Web, Mobile & APIs, Qyrus is the fastest way to start the journey of automated testing for your enterprise.

## Getting Started

These instructions will cover usage information and for the docker container 

### Prerequisities


In order to run this container you'll need docker installed.

* [Windows](https://docs.docker.com/windows/started)
* [OS X](https://docs.docker.com/mac/started/)
* [Linux](https://docs.docker.com/linux/started/)

### Usage

#### Container Parameters

List the different parameters available to your container

```shell
docker run qyrusai/qyrus-app-automate:latest \
    -e UPLOAD_PATH="app-debug.apk" \
    -e GATEWAY_URL="https://****.****.***:443/cli-adapter-mobility/v1/v1" \
    -e QYRUS_USERNAME="********" \
    -e QYRUS_PASSWORD="********" \
    -e QYRUS_TEAM_NAME="Ctc End To End" \
    -e QYRUS_PROJECT_NAME="Mobility Test" \
    -e QYRUS_SUITE_NAME="AppDebug" \
    -e APP_ACTIVITY="org.vosk.demo.VoskActivity" \
    -e DEVICE_POOL_NAME="DemoDevices" \
    -e UPLOAD_APP="no" \
    -e ENABLE_DEBUG="no" \
    -e BUNDLE_ID=""
```

#### Environment Variables

* `UPLOAD_PATH` - A Description
* `GATEWAY_URL` - More Description
* `QYRUS_USERNAME` - And another
* `QYRUS_PASSWORD` - And another
* `QYRUS_TEAM_NAME` - And another
* `QYRUS_PROJECT_NAME` - And another
* `QYRUS_SUITE_NAME` - And another
* `APP_ACTIVITY` - And another
* `DEVICE_POOL_NAME` - And another
* `UPLOAD_APP` - And another
* `ENABLE_DEBUG` - And another
* `BUNDLE_ID` - And another

#### Volumes

* `/your/file/location` - File location

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.