#!/bin/bash

cat <<HEADER
<script src="abcjs_basic_midi_3.1.3-min.js"></script>
<script>
// Periodically check reload checkbox state
setInterval(function() {
            if (window.location.href.split("?").pop() === "reload")
            window.location.reload();
            }, 2000);
</script>
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
