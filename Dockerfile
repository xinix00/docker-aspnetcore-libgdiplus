FROM microsoft/aspnetcore:2.0.7

RUN apt-get update \
    && apt-get -y install libgdiplus libc6-dev \
    && ln -s /usr/lib/libgdiplus.so /usr/lib/gdiplus.dll \
    && rm -rf /var/lib/apt/lists/*
