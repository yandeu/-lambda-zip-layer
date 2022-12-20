FROM amazonlinux:2

# access zip via "zip"
# access unzip via "unzip"

RUN yum install zip -y
RUN yum install unzip -y
RUN mkdir -p /tmp/layer

# find where it is installed
# RUN rpm -ql zip
# RUN rpm -ql unzip

CMD cd /tmp/layer && \
  mkdir -p bin && \
  mkdir -p lib && \
  echo copy zip and unzip && \
  cp /usr/bin/zip ./bin/zip && \
  cp /usr/bin/unzip ./bin/unzip && \
  echo zip all files && \
  zip -8 -r layer.zip ./* && \
  rm -rf lib bin