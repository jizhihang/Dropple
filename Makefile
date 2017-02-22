SHELL=/bin/bash

install:
	@echo "*** Installing project dependencies. ***"
	@echo

	./install.sh

	@echo "Done"

test:
	source ~/.virtualenv/Dropple/bin/activate && PYTHONPATH=$(PYTHONPATH):. python -m unittest discover --pattern=*test.py -v

clean:
	find . -name '*.pyc' -delete
