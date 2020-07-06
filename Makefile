%.html: %.adoc
	asciidoctor --attribute data-uri $^

%.adoc: %.md
	pandoc --to asciidoctor --output=$@ $^
	sed -i '1s/==/=/' $@
	sed -i 1a\ ":toc:\n:sectnums:\n" $@
