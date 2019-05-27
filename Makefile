build:
	env GOOS=linux GOARCH=amd64 go build -o bin/JwtAuthorizer ./JwtAuthorizer
	env GOOS=linux GOARCH=amd64 go build -o bin/Healthcheck ./Healthcheck

deploy-dev:
	make build
	serverless deploy --stage=dev
