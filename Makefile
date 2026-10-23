
# This target inits the repo
install:
	@pip install --upgrade pip
	@pip install poetry
	@pre-commit install
	@poetry install

# Run entire test suite
test:
	@poetry shell
	@python setup.py test

# Clean up files from development
clean:
	@rm -rf \
	.pytest_cache \
	.mypy_cache \
	dist
