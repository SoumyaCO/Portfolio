install:
	python3 -m venv .env && \
	source .env/bin/activate && \
	pip3 install -r requirements.txt

build:
	mkdocs build

serve:
	mkdocs serve

# PyTest Integration
# Logging
		