SOURCE = draft-hoffman-rfc9364bis
all: $(SOURCE).xml $(SOURCE).txt

$(SOURCE).txt:	$(SOURCE).xml
	xml2rfc --quiet -n --html --text $(SOURCE).xml

$(SOURCE).xml:	$(SOURCE).mkd
	kramdown-rfc $(SOURCE).mkd >$(SOURCE).new.xml
	mv $(SOURCE).new.xml $(SOURCE).xml

.PRECIOUS: %.xml
