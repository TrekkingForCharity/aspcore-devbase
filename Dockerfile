FROM mcr.microsoft.com/dotnet/core/aspnet:3.0 AS builder

# INSTALL PRE REQS
RUN apt-get update -yq \
    && apt-get install curl gnupg -yq \
    && curl -sL https://deb.nodesource.com/setup_10.x | bash \
    && apt-get install nodejs -yq