FROM ubuntu:14.04

RUN apt-get update

RUN apt-get install -y --force-yes \
    python-pip curl unzip libgconf-2-4 dpkg-dev bzip2 libbz2-dev libxml2 build-essential gcc \
    libpython-dev libssl-dev libffi-dev \
    zlib1g-dev libssl1.0.0 

RUN apt-get install -y --force-yes gcc libleptonica-dev libtesseract3 libtesseract-dev tesseract-ocr

ENV CHROMEDRIVER_VERSION 2.26

RUN curl -SLO "https://chromedriver.storage.googleapis.com/$CHROMEDRIVER_VERSION/chromedriver_linux64.zip" \
  && unzip "chromedriver_linux64.zip" -d /usr/local/bin \
  && rm "chromedriver_linux64.zip"

RUN apt-get install -y --force-yes libxslt-dev libxml2-dev libtiff5-dev libjpeg-dev zlib1g-dev libfreetype6-dev liblcms2-dev libwebp-dev tcl8.6-dev tk8.6-dev python-tk
