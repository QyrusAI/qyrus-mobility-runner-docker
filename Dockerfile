FROM node:17-alpine

WORKDIR /usr/app

RUN npm install fs --save --loglevel=error
RUN npm install https --save --loglevel=error
RUN npm install http --save --loglevel=error
RUN npm install request --save --loglevel=error
RUN npm install child_process --save --loglevel=error
RUN npm install url --save --loglevel=error

COPY ./runner.js /usr/app
COPY ./runner.sh /
RUN chmod +x /runner.sh
RUN chmod +x /usr/app/runner.js

ENTRYPOINT ["/runner.sh"]