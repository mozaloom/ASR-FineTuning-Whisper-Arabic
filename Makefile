install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv test_*.py 
	python -m pytest --nbval notebooks/*.ipynb

format:
	black *.py 

lint:
	pylint --disable=R,C,E1120 *.py

all: install format lint test