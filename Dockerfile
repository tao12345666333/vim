FROM debian:stretch-slim as builder

LABEL maintainer="Jintao Zhang <zhangjintao9020@gmail.com>"

RUN apt update && apt install -y --no-install-recommends \
        ca-certificates \
        exuberant-ctags \
        gcc \
        git \
        libncurses5-dev \
        make \
        python \
        python-dev \
        wget \
    && rm -rf /var/lib/apt/lists/*

# Build Vim from source code
RUN git clone https://github.com/vim/vim.git \
    && cd vim \
    && ./configure \
       --disable-gui \
       --disable-netbeans \
       --enable-pythoninterp=yes \
       --enable-multibyte \
       --with-features=huge \
       --with-compiledby="Jintao Zhang <zhangjintao9020@gmail.com>" \
       --with-python-command=python \
    && make \
    && make install \
    && wget --no-check-certificate https://raw.githubusercontent.com/tao12345666333/vim/master/vimrc -O $HOME/.vimrc \
    && vim -E -u $HOME/.vimrc +qall
    #    && find  $HOME/.vim/bundle/ -type d -name '.git' -exec rm -rf {} \;


FROM debian:stretch-slim

COPY --from=builder /usr/local/bin/ /usr/local/bin
COPY --from=builder /usr/local/share/vim/ /usr/local/share/vim/
COPY --from=builder /root/.vimrc /root/.vimrc
COPY --from=builder /root/.vim /root/.vim
# we don't need man page

RUN apt update && apt install -y --no-install-recommends \
        python \
        python-dev \
        python-pip \
        python-setuptools \
    && rm -rf /var/lib/apt/lists/* \
    && pip install pep8 flake8 pyflakes isort

WORKDIR /src

ENTRYPOINT [ "vim" ]
CMD [ "--help" ]
