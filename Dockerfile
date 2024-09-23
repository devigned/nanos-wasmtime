FROM debian

RUN apt-get update && apt-get install -y curl && \
    curl https://wasmtime.dev/install.sh -sSf | bash

RUN cp $HOME/.wasmtime/bin/wasmtime /wasmtime

CMD ["wasmtime"]
