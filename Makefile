run-api:
	python -m app.main
docker-run-api:
	docker build -t mfdp-api . && docker run --name mfdp-api -p 80:80 -it --rm mfdp-ap
docker-build:
	docker buildx build --platform=linux/amd64 -t martynovdm/mfdp-api:latest .
docker-push:
	docker push martynovdm/mfdp-api:latest