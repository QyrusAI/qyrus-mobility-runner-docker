#!/bin/sh
#set -ex
set -o pipefail

/usr/app/runner.js "${UPLOAD_PATH}" "${GATEWAY_URL}" "${QYRUS_USERNAME}" "${QYRUS_PASSWORD}" "${QYRUS_TEAM_NAME}" "${QYRUS_PROJECT_NAME}" "${QYRUS_SUITE_NAME}" "${APP_ACTIVITY}" "${DEVICE_POOL_NAME}" "${UPLOAD_APP}" "${ENABLE_DEBUG}" "${BUNDLE_ID}" || $?