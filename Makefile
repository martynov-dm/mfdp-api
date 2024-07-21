run-api:
	python -m app.main
docker-run-api:
	docker build -t mfdp-api . && docker run --name mfdp-api -p 80:80 -it --rm mfdp-ap
