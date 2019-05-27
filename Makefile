build:
	env GOOS=linux GOARCH=amd64 go build -ldflags="-s -w" -o bin/JwtAuthorizer ./functions/JwtAuthorizer
	env GOOS=linux GOARCH=amd64 go build -ldflags="-s -w" -o bin/Healthcheck ./functions/Healthcheck
	env GOOS=linux GOARCH=amd64 go build -ldflags="-s -w" -o bin/Restricted ./functions/Restricted

deploy-dev:
	make build
	serverless deploy --stage=dev
