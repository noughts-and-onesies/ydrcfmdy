songs := $(wildcard docs/*.abc)

docs/index.html: $(songs)
	bin/generate_index.sh

wait:
	while :; do inotifywait -qe modify docs/*.abc; make; done

clean:
	rm -f docs/*.html
