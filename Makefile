setup:
	python3 -m venv ~/.azure-devops-project2

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt &&\
		pip install pytest-cov  # Install pytest-cov
	

test:
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest -vv --cov=myrepolib *.py
	#python -m pytest --nbval notebook.ipynb
	python -m pytest -vv locustfile.py


lint:
	#hadolint Dockerfile #uncomment to explore linting Dockerfiles
	pylint --disable=R,C,W1203 app.py

all: install lint test
