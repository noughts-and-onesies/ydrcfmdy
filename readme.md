Songs to learn for the band, songs I've written and some general learning about
music notation.

The HTML is statically generated. The songs are stored in ABC format in the
songs directory. When a song is updated run make to regenerate the HTML pages.
You can also run ```make wait``` in another terminal and it will pause until a
song is updated and then regenerate the HTML. The HTML is rendered into the
```docs``` folder which GitHub pages uses as the root.

See the [rendered version](https://deanturpin.github.io/ydrcfmdy/).


```bash
$ git clone https://github.com/deanturpin/ydrcfmdy
$ cd ydrcfmdy
$ make
bin/generate_index.sh > docs/index.html
```

To create a rough outline of a song run the script with a list of chords. It
will generate the ABC file with an empty bar for each of the named chords.
```bash
$ bin/create_song_outline.sh C Am C Am F G C G > songs/halallujah.abc
$ make
```

# Referenes
* http://www.lesession.co.uk/abc/abc_notation.htm
