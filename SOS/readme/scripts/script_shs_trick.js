
	var LANG_EN = "en";

	var hintTable = [];
	hintTable[LANG_EN] = 
	[
		"A dozen side quests to be played... or not...",
		"More than a hundred maps, including new ones.",
		"A bestiary inspired by PnP editions and proposing new creatures in BG2 universe.",
		"Evil, Gem, Planar Dragons...",
		"Fiends and Devils who take adwantage of the chaos wreaked in the Kingdom of Eternal Diamond to export their Blood War among human people.",
		"A horde of vampires that would make Bodhi out to be a capricious little girl.",
		"Undead knights whose beshavior is still so inflexible in the Hereafter.",
		"New items.",
		"Food ready-to-eat or needed for cooking.",
		"An Alchimy set to create potions and miscellaneous items...",
	];

	var hintIdx = 0;

	function showNextHint(lang, textId) {
		var hints = hintTable[lang];
		if (hints.length > 0) {
			var elem = document.getElementById(textId);
			if ('textContent' in elem) {
				elem.textContent = hints[hintIdx];
			} else {
				elem.innerText = hints[hintIdx];
			}
		hintIdx = (hintIdx + 1) % hints.length;
		}
	}

	function showHints(boxId, lang, textId) {
		document.getElementById(boxId).style.display = "block";
		showNextHint(lang, textId);
	}

	function showSpoiler(obj)
	{
		var inner = obj.parentNode.getElementsByTagName("div")[0];
		if (inner.style.display == "none")
			inner.style.display = "";
		else
		inner.style.display = "none";
	}
