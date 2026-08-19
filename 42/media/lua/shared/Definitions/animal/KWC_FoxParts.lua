-- What you get for butchering a fox.
--
-- THIS FILE IS NOT OPTIONAL. Without it the game throws every time one of these
-- animals dies, and the crash is in vanilla rather than here:
--
--     local def = AnimalPartsDefinitions.animals[fullName];   -- line 18
--     modData["parts"] = def ~= nil;                          -- line 19, nil-safe
--     ...
--     if def.feather then                                     -- line 27, NOT
--
-- Line 19 goes to the trouble of tolerating a missing definition and line 27
-- indexes it anyway, so any animal the table does not know about dies with
-- "attempted index: feather of non-table: null". Everything after that line is
-- skipped, which means the corpse never receives BloodQty, leather, head,
-- skeleton or meatRatio. Butchering then fails later, somewhere else, in a way
-- that looks unrelated. Seen on a live server 2026-08-14.
--
-- The key is animal type concatenated with breed name, lowercase, exactly as
-- vanilla builds it: `modData["AnimalType"] .. modData["AnimalBreed"]`.
--
-- No leather, head or skull entries. Those name specific items and we ship no
-- fox pelt or fox head, and vanilla handles their absence correctly (getLeather
-- returns nil and the flag is simply false). A fox is not really eaten in
-- Kentucky either, but Smallanimalmeat is the generic small-game item and
-- refusing to yield anything would read as a broken animal rather than a
-- deliberate one.
--
-- noSkeleton is set for the same reason as raccoon: we have no skeleton model
-- for this animal, so leaving one to be placed on the ground would ask the
-- renderer for art that does not exist.

AnimalPartsDefinitions = AnimalPartsDefinitions or {};
AnimalPartsDefinitions.animals = AnimalPartsDefinitions.animals or {};

-- Vixen, 4 to 6 kg.
local kwc_foxvixendefault = AnimalPartsDefinitions.animals["kwc_foxvixendefault"] or {};
kwc_foxvixendefault.parts = kwc_foxvixendefault.parts or {};
table.insert(kwc_foxvixendefault.parts, {item = "Base.Smallanimalmeat", minNb = 4, maxNb = 6})
kwc_foxvixendefault.bones = kwc_foxvixendefault.bones or {};
table.insert(kwc_foxvixendefault.bones, {item = "Base.SmallAnimalBone", minNb = 3, maxNb = 6})
kwc_foxvixendefault.noSkeleton = true;
kwc_foxvixendefault.xpPerItem = 10;
AnimalPartsDefinitions.animals["kwc_foxvixendefault"] = kwc_foxvixendefault;

-- Dog fox, 5 to 7.5 kg.
local kwc_foxdogdefault = AnimalPartsDefinitions.animals["kwc_foxdogdefault"] or {};
kwc_foxdogdefault.parts = kwc_foxdogdefault.parts or {};
table.insert(kwc_foxdogdefault.parts, {item = "Base.Smallanimalmeat", minNb = 5, maxNb = 7})
kwc_foxdogdefault.bones = kwc_foxdogdefault.bones or {};
table.insert(kwc_foxdogdefault.bones, {item = "Base.SmallAnimalBone", minNb = 3, maxNb = 6})
kwc_foxdogdefault.noSkeleton = true;
kwc_foxdogdefault.xpPerItem = 10;
AnimalPartsDefinitions.animals["kwc_foxdogdefault"] = kwc_foxdogdefault;

-- Kit, 0.5 to 2.5 kg.
local kwc_foxkitdefault = AnimalPartsDefinitions.animals["kwc_foxkitdefault"] or {};
kwc_foxkitdefault.parts = kwc_foxkitdefault.parts or {};
table.insert(kwc_foxkitdefault.parts, {item = "Base.Smallanimalmeat", minNb = 2, maxNb = 3})
kwc_foxkitdefault.bones = kwc_foxkitdefault.bones or {};
table.insert(kwc_foxkitdefault.bones, {item = "Base.SmallAnimalBone", minNb = 2, maxNb = 4})
kwc_foxkitdefault.noSkeleton = true;
kwc_foxkitdefault.xpPerItem = 7;
AnimalPartsDefinitions.animals["kwc_foxkitdefault"] = kwc_foxkitdefault;
