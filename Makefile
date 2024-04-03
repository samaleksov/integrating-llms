.PHONY: make all

all:
	make html

html:
	pandoc -t revealjs --template revealtemplate.html -s index.md -o index.html 2>/dev/null

watch: 
	while true; do $(MAKE) 1>/dev/null; sleep 0.5; done

run:
	python3 -m http.server

