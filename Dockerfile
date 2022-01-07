FROM scratch
ADD al2022-container-2022.0.20211222.0-arm64.tar.xz /
CMD ["/bin/bash"]
RUN mkdir /usr/src/srpm \
 && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-0908b9558eec4b3a3d61873ae70b354136c077b1d6d2e2974e03a7f688744758.tar.gz" \
 && echo "901630f2397990097e39b10fa42762c1c40f2e2192847fbe6950e02ea935a57e  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
