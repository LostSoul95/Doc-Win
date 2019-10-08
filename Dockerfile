
FROM mcr.microsoft.com/dotnet/core/aspnet:2.2

COPY app/bin/Release/netcoreapp2.2/publish/ app/

ENTRYPOINT ["dotnet", "app/myapp.dll"]

# COPY app/bin/Release/netcoreapp2.2/publish/ app/

# ENTRYPOINT ["dotnet", "app/myapp.dll"]
# WORKDIR /src
# COPY ["myApp/myApp.csproj", "myApp/"]
# RUN dotnet restore "myApp/myApp.csproj"
# COPY . .
# WORKDIR "/src/myApp"
# RUN dotnet build "myApp.csproj" -c Release -o /app
# RUN dotnet publish "myApp.csproj" -c Release -o /app

# FROM mcr.microsoft.com/dotnet/core/aspnet:2.2
# WORKDIR /app
# COPY --from=build-env /app .
# ENTRYPOINT ["dotnet", "myApp.dll"]
