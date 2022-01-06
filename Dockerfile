FROM scratch
ADD amzn2-container-raw-2.0.20211223.0-x86_64.tar.xz /
CMD ["/bin/bash"]
RUN mkdir /usr/src/srpm \
 && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-7aacabcecad2264904d2033d4072bf9e9b01b2723fb3de24f8df40bdfc2d34f7.tar.gz" \
 && echo "eba78093a05bb779050f6f4b93732638f4e1c21fb83c321416e0756efa88a089  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
