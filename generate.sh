#!/bin/bash

cat <<HEADER
<script src="abcjs_basic_midi_3.1.3-min.js"></script>
<div id="notation"></div>
<div id="midi" class="abc-midi"></div>
HEADER

for song in songs/*.abc; do

  abc=$(cat $song)

cat <<-SONG

  <div id="$song"></div>
  <script>
      song=\`
$abc
\`;
      ABCJS.renderAbc("$song", song);
  </script>
SONG

done
