FROM debian:stretch-slim
RUN apt-get update && apt-get install -y curl && mkdir -p /opt/buildscriptgen && mkdir -p /opt/oryx
COPY staticappsclient/buildscriptgen /opt/buildscriptgen/
COPY staticappsclient/staticsites /bin/staticsites
RUN ln -s /opt/buildscriptgen/GenerateBuildScript /opt/oryx/oryx
ENV PATH="/opt/oryx:${PATH}"
