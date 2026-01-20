# Build
FROM mcr.microsoft.com/dotnet/sdk:10.0 AS build
WORKDIR /src

COPY . .
WORKDIR /src/Exposed
RUN dotnet restore
RUN dotnet publish -c Release -o /app/publish

# Run
FROM mcr.microsoft.com/dotnet/aspnet:10.0 AS final
WORKDIR /app
COPY --from=build /app/publish .
# Render espone la porta tramite env var PORT
ENV ASPNETCORE_URLS=http://0.0.0.0:${PORT}
EXPOSE 8080
ENTRYPOINT ["dotnet", "Exposed.dll"]