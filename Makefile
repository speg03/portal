.PHONY: all clean requirements site serve

all: site
clean:
	rm -rf ./site

requirements:
	pip-compile --upgrade ./requirements.in

site:
	mkdocs build --verbose --strict

serve:
	mkdocs serve
