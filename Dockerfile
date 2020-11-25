FROM archlinux:base-devel

LABEL version="1.2"
LABEL maintainer="Luca CORRIERI <luca.corrieri@epita.fr>"

RUN pacman -Syu --noconfirm

# install needed dependencies
RUN pacman -S --noconfirm cmake wget valgrind python

# clean cache
RUN pacman -Scc --noconfirm

# install criterion
RUN wget https://github.com/Snaipe/Criterion/releases/download/v2.3.3/criterion-v2.3.3-linux-x86_64.tar.bz2 && \
    tar -xvf criterion-v2.3.3-linux-x86_64.tar.bz2 && \
    cp -r criterion-v2.3.3/* /usr/ && \
    rm -rf criterion-v2.3.3/ && \
    rm -rf criterion-v2.3.3-linux-x86_64.tar.bz2

CMD ["/usr/bin/bash"]
