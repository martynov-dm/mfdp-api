run:
	python -m app.main
docker-run:
	docker run --name mfdp-api -p 80:80 -it --rm martynovdm/mfdp-api
docker-build:
	docker buildx build --platform=linux/amd64 -t martynovdm/mfdp-api:latest .
docker-push:
	docker push martynovdm/mfdp-api:latest