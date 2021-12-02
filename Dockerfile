FROM scratch
ADD amzn-container-minimal-2018.03.0.20211201.0-x86_64.tar.xz /
CMD ["/bin/bash"]
RUN mkdir /usr/src/srpm \
 && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-d9420f93e86b4ae7e03c24f0e4f98c3c9ea9a63b39646e47c86b1dbadc8bdec5.tar.gz" \
 && echo "c30aa8fe6299b9787f1287c9b7508bad1f31a056d26cf106d87670b6fe99c16f  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
