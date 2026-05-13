FROM debian:bookworm-slim AS builder

LABEL maintainer="Jintao Zhang <zhangjintao9020@gmail.com>"

RUN apt update && apt install -y --no-install-recommends \
        ca-certificates \
        exuberant-ctags \
        gcc \
        git \
        libncurses-dev \
        make \
        python3 \
        python3-dev \
        python3-pip \
        wget \
    && rm -rf /var/lib/apt/lists/*

# Build Vim from source code
RUN git clone https://github.com/vim/vim.git \
    && cd vim \
    && ./configure \
       --disable-gui \
       --disable-netbeans \
       --enable-python3interp=yes \
       --enable-multibyte \
       --with-features=huge \
       --with-compiledby="Jintao Zhang <zhangjintao9020@gmail.com>" \
       --with-python3-command=python3 \
    && make \
    && make install \
    && wget --no-check-certificate https://raw.githubusercontent.com/tao12345666333/vim/master/vimrc -O $HOME/.vimrc \
    && vim -E -u $HOME/.vimrc +qall
    #    && find  $HOME/.vim/bundle/ -type d -name '.git' -exec rm -rf {} \;


FROM debian:bookworm-slim

COPY --from=builder /usr/local/bin/ /usr/local/bin
COPY --from=builder /usr/local/share/vim/ /usr/local/share/vim/
COPY --from=builder /root/.vimrc /root/.vimrc
COPY --from=builder /root/.vim /root/.vim
# we don't need man page

RUN apt update && apt install -y --no-install-recommends \
        python3 \
        python3-pip \
        python3-setuptools \
    && rm -rf /var/lib/apt/lists/* \
    && pip3 install --break-system-packages pep8 flake8 pyflakes isort

WORKDIR /src

ENTRYPOINT [ "vim" ]
CMD [ "--help" ]
