#!/bin/bash

readonly root=docs
index=$root/index.html
echo "<h1>Songs</h1>" > $index

for song in $root/*.abc; do

# HTML for this song
html=${song%%.abc}.html

page=${html##*/}
pretty_name=${page%%.*}
pretty_name=${pretty_name//_/ }
echo "<a href='$page'>$pretty_name</a><br>" >> $index

cat <<-HEADER > $html
<script src="abcjs_basic_midi_3.1.3-min.js"></script>

<a href="/ydrcfmdy/">Home</a>
<div id="score"></div>

HEADER

cat <<-SONG >> $html
<script>
onload = function() {

  var client = new XMLHttpRequest();

  client.onreadystatechange = function() {

    if (this.readyState === 4 && this.status === 200)
      ABCJS.renderAbc("score", client.responseText);
  }

  client.open("GET", "${song#*/}");
  client.send();
}
</script>
SONG

done
