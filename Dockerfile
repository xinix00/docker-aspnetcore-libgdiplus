FROM mcr.microsoft.com/dotnet/aspnet:6.0.2

RUN apt-get update \
    && apt-get -y install libgdiplus libc6-dev \
    && ln -s /usr/lib/libgdiplus.so /usr/lib/gdiplus.dll \
    && rm -rf /var/lib/apt/lists/*
