FROM debian

RUN apt-get update && apt-get install -y && \
    curl https://wasmtime.dev/install.sh -sSf | bash

CMD ["$HOME/.wasmtime/bin/wasmtime"]
