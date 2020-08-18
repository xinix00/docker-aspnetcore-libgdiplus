FROM mcr.microsoft.com/dotnet/core/aspnet:3.1.7

RUN apt-get update \
    && apt-get -y install libgdiplus libc6-dev \
    && ln -s /usr/lib/libgdiplus.so /usr/lib/gdiplus.dll \
    && rm -rf /var/lib/apt/lists/*
