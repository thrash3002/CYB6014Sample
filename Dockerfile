	FROM mcr.microsoft.com/dotnet/sdk:5.0
	ENV ASPNETCORE_URLS http://+:5000
	WORKDIR /app
	EXPOSE 5000
	COPY . /app
	ENTRYPOINT ["dotnet", "netcoreapp.dll"]