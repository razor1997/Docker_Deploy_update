FROM microsoft/dotnet:2.0-sdk
WORKDIR /program1/

COPY *.csproj ./
RUN dotnet restore

COPY . ./program2
RUN dotnet build -c Release
ENTRYPOINT ["dotnet", "run", "-c", "Release", "--no-build"]
