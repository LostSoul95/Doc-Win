FROM mcr.microsoft.com/dotnet/core/sdk:2.2 AS build-env
WORKDIR /app
EXPOSE 80

WORKDIR /src
COPY ["myApp/myAppp.csproj", "myApp/"]
RUN dotnet restore "myApp/myApp.csproj"
COPY . .
WORKDIR "/src/myApp"
RUN dotnet build "myApp.csproj" -c Release -o /app
RUN dotnet publish "myApp.csproj" -c Release -o /app

FROM mcr.microsoft.com/dotnet/core/aspnet:2.2
WORKDIR /app
COPY --from=build-env /app .
ENTRYPOINT ["dotnet", "myApp.dll"]