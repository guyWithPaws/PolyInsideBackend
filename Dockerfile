FROM ubuntu
RUN apt update
RUN cd /home/goxa/dart_project/
RUN rm -rv PolyInsideBackend
RUN git clone https://github.com/guyWithPaws/PolyInsideBackend.git
RUN cd /PolyInsideBackend
RUN dart bin/server.dart