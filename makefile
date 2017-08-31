songs := $(wildcard songs/*.abc)

index.html: $(songs)
	bin/generate_index.sh > $@

clean:
	rm -f index.html
