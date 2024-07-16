.DEFAULT_GOAL := all

.PHONY: install clean test

install:
    @echo "Installing dependencies..."
    @pip install -r requirements.txt

clean:
    @echo "Cleaning up..."
    @rm -rf __pycache__ .pytest_cache
    @rm -f junit.xml
    @rm -f pretty_junit.xml

test:
    @echo "Running tests..."
    @pytest -v --gherkin-terminal-reporter ./tests