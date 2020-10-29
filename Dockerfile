FROM klakegg/hugo

WORKDIR /src
RUN hugo new site . ;\
    rm config.toml

ADD config.yaml /src
ADD van /src/themes/van
ADD cmd /bin

ENTRYPOINT ["/bin/cmd"]
