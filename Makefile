setup:
	python3 -m venv ~/.azure-devops-project2.1

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt &&\
		pip install locust

test:
	python -m pytest -vv locustfile.py


lint:
	#hadolint Dockerfile #uncomment to explore linting Dockerfiles
	pylint --disable=R,C,W1203 app.py

all: install lint test
