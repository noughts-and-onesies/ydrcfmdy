songs := $(wildcard songs/*.abc)

doc/index.html: $(songs)
	bin/generate_index.sh > $@

wait:
	while :; do inotifywait -qe modify songs/*.abc; make; done

clean:
	rm -f index.html
