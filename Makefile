SHELL:=/bin/bash

deploy:
	sudo cp * /usr/share/fsl/overlay/

# FIXME add more tests
test:  file-diff

file-diff:
	for f in *  ; do [[ -f /usr/share/fsl/overlay/$$f ]] || continue ; diff -Naur $$f /usr/share/fsl/overlay/$$f ; done
