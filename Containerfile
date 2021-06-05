FROM docker.io/cimg/python:3.8

RUN id

USER root

RUN apt-get -y update \
	&& apt-get -y install \
		xvfb \
		libxcursor1 \
		libxkbcommon0 \
		libxkbcommon-x11-0 \
		libasound2 \
		x11-utils \
		python3-pyqt5 python3-pip

RUN python -m pip install --upgrade pip \
	&& python -m pip install --upgrade poetry \
	&& poetry config virtualenvs.in-project true

USER circlci
