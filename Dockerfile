FROM node:7.2.0

RUN mkdir -p /opt/karma
WORKDIR /opt/karma
RUN npm install -g karma
RUN npm install -g phantomjs-prebuilt
RUN npm install -g karma-jasmine
RUN npm install -g jasmine-core
RUN npm install -g karma-phantomjs-launcher
CMD karma start
