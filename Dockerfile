FROM node:7.2.0

RUN mkdir -p /opt/karma
WORKDIR /opt/karma
RUN npm install -g phantomjs-prebuilt
RUN npm install -g jasmine-core
RUN npm install -g karma karma-coverage karma-jasmine karma-phantomjs-launcher
CMD karma start
