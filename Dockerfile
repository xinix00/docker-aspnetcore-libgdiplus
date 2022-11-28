FROM mcr.microsoft.com/dotnet/aspnet:7.0.0

RUN apt-get update \
    && apt-get -y install libgdiplus libc6-dev \
    && ln -s /usr/lib/libgdiplus.so /usr/lib/gdiplus.dll \
    && rm -rf /var/lib/apt/lists/*
