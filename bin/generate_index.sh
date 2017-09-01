#!/bin/bash

readonly root=docs

for song in $root/*.abc; do

html_file=${song%%.abc}.html

cat <<-HEADER > $html_file
<script src="abcjs_basic_midi_3.1.3-min.js"></script>

<div id="score"></div>

HEADER

cat <<-SONG >> $html_file
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
