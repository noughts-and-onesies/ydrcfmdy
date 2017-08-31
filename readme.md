Songs to learn for the band, songs I've written and some general learning about
music notation.

See the published site at https://deanturpin.github.io/bistroboys/

```index.html``` is statically generated. The songs are stored in ABC format in
the songs directory. When a song is updated, run make to regenerate the HTML
index.

```bash
$ git clone https://github.com/deanturpin/bistroboys
$ cd bistroboys
$ make
bin/generate_index.sh > index.html
```
