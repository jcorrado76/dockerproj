setup:
		python3 -m venv ~/.dockerproj
			
install:
		pip install --upgrade pip &&\
				pip install -r requirements.txt

test:
		#python -m pytest -vv --cov=myrepolib tests/*.py
			#python -m pytest --nbval notebook.ipynb

validate-circleci:
		~/environment/circleci config process .circleci/config.yml

run-circleci-local:
		~/environment/circleci local execute

lint:
		hadolint Dockerfile
			pylint -- disable=R,C,W1203 app.py

all: install lint test
