# Credits

## Audio

Every voice clip is derived from a Creative Commons Zero (CC0) recording from
[Freesound](https://freesound.org/). CC0 waives copyright entirely and imposes no
attribution requirement — this list exists because knowing where an asset came
from is worth more than the licence obliges, and because it is the only way to
re-derive the clips if a source is ever replaced.

Freesound IDs are the number leading each filename, so any entry can be checked
at `https://freesound.org/s/<id>/`.

| # | uploader | recording | used for |
|---|---|---|---|
| 530123 | naturenotesuk | Quarrelling foxes | fox — idle |
| 518135 | lonskwad2020 | Fox scream | fox — stressed, death |
| 537587 | craigsays | Red fox screeching | fox — pain |
| 376832 | felixblume | A coyote is howling at night in the Gran Sabana | coyote — idle |
| 256533 | dkaufman | Coyote barks and howls | coyote — stressed |
| 833773 | darcydunes | coyote_03 | coyote — pain |
| 833772 | darcydunes | coyote_02 | coyote — death |
| 678416 | mpooman | Caracal sounds (SE510) | bobcat — idle, stressed, death |
| 146972 | zabuhailo | Cat attack | bobcat — pain |
| 494745 | mzimny | Squirrel chirping | squirrel — idle |
| 18515 | cognito-perceptu | Squirrel upset | squirrel — stressed |
| 640992 | burgersmoke | Ground squirrel, first chirp | squirrel — pain |
| 640993 | burgersmoke | Ground squirrel, second chirp | squirrel — death |

**On the bobcat.** No bobcat recording is used, because they are nearly impossible
to find — bobcats are largely silent and their yowl is rarely captured. The stand-in
is a **caracal**, a wild cat of roughly bobcat size whose rasp and yowl sit in
about the right register. It is a substitution, not a bobcat.

Each juvenile clip is its adult counterpart pitched up by a factor of 1.22, baked
offline because the engine parses a `pitch` key on a sound clip and never reads
it. No separate recordings were needed for the young animals.

The exact source-to-clip mapping, including which span of each recording was taken,
lives in the development repo's `tools/import_all_sounds.sh`. The clips are derived files: change the
mapping and re-run rather than editing audio by hand.

## Models

Meshes were generated with [Meshy](https://www.meshy.ai/), then retopologised to
the vanilla vertex budget and skinned to Project Zomboid's own Raccoon and Rat
skeletons, so the animals move using the game's existing animation sets. The
build is reproducible from the development repo's `art/ai-models/` sources via
its `tools/build_critters.sh`.

## Project Zomboid

Raccoon and Rat skeletons, animation sets and the animal behaviour this addon
inherits are the work of The Indie Stone. Nothing from the base game is
redistributed here — the mod references vanilla assets by name and ships only its
own meshes, textures and audio.
