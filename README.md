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
    -e QYRUS_TEAM_NAME="DemoTeam" \
    -e QYRUS_PROJECT_NAME="Mobility Test" \
    -e QYRUS_SUITE_NAME="AppDebug" \
    -e APP_ACTIVITY="" \
    -e DEVICE_POOL_NAME="DemoDevices" \
    -e UPLOAD_APP="no" \
    -e ENABLE_DEBUG="no" \
    -e BUNDLE_ID=""
```

with docker mount for apk/ipa files

```shell
docker run qyrusai/qyrus-app-automate:latest \
    -v host_path:/tmp/ \
    -e UPLOAD_PATH="app-debug.apk" \
    -e GATEWAY_URL="https://****.****.***:443/cli-adapter-mobility/v1/v1" \
    -e QYRUS_USERNAME="********" \
    -e QYRUS_PASSWORD="********" \
    -e QYRUS_TEAM_NAME="DemoTeam" \
    -e QYRUS_PROJECT_NAME="Mobility Test" \
    -e QYRUS_SUITE_NAME="AppDebug" \
    -e APP_ACTIVITY="" \
    -e DEVICE_POOL_NAME="DemoDevices" \
    -e UPLOAD_APP="no" \
    -e ENABLE_DEBUG="no" \
    -e BUNDLE_ID=""
```

#### Environment Variables

* `UPLOAD_PATH` - Path from where the apk/ipa will be picked and uploaded to Qyrus (If you don't want to upload app then provide the app_name).
* `GATEWAY_URL` - Enter the url of the gateway which is provided by Qyrus else contact support@qyrus.com.
* `QYRUS_USERNAME` - The username used to run devops tasks on Qyrus.
* `QYRUS_PASSWORD` - And another
* `QYRUS_TEAM_NAME` - Team name you can find by logging into Qyrus app. Copy the team name and paste it.
* `QYRUS_PROJECT_NAME` - Project name you can find by logging into Qyrus app. Copy the team name and paste it.
* `QYRUS_SUITE_NAME` - Suite name you can find by logging into Qyrus app. Copy the team name and paste it.
* `APP_ACTIVITY` - Enter android app activity which will be in the form of com.example.splash_screen
* `DEVICE_POOL_NAME` - Specify your device pool name which you created on Qyrus, a device pool will have list of devices added and a test run will happen on a device from the pool.
* `UPLOAD_APP` - If you just want to run tests without upload app change the option to no.
* `ENABLE_DEBUG` - Prints additional debug information if this option is enabled.
* `BUNDLE_ID` - Enter iOS app bundleId which will be in the form of com.example.splash_screen (Optional, during android runs)

#### Volumes

* `/tmp/` - Location from where the apk/ipa file will be picked (optional).

## Contact Us
support@qyrus.com

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.