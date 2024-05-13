# Version 2.1 (May 13, 2024)

By Weigo:
- Added nightmaps.
- Added animations to the maps.
- Fixed graphical glitches.
- MOS files (EE) has the right size.

By Roberciiik:
- Support for BP-BGT-Worldmap v13.
- Removed "(SoS)" tag from the worldmap hints.

By Lzw104522773:
- Added Simplified Chinese translations.

# Version 2.0 (December 06, 2023)

By Roberciiik:
- Alternative Soubar area from the "World of Baldur's Gate" modification - designed and modeled by Cuttooth, with effects enrichment and ideas by Dradiel, and integrated into the mod by Roberciiik.
- Biffing is now an optional installation component.
- Fixed militia training quest when only 9 new guards are trained.
- Fixed CTDs in AR4261, AR4260, and AR4258 areas.
- Restored TIS and MOS files of Soubar for oBG2 and Lyrar's Castle TIS for BG2:EE.
- Fixed a visual bug in Sir William's house (AR1004) in oBG2.
- Updated the worldmap position of areas for Chionthar, Soubar, and Lyrar's Hold.
- Corrected automap notes in Soubar and Soubar prison.
- Traified missing lines (setup, kit name, debug prints).
- Added missing identified descriptions to some letters.
- Moved movies to the language directory so the local language version can replace them.
- Moved some NPC sound files to the language directory - the local language version can now replace them.

By AL|EN:
- Introduce immutability and encapsulation.
- Fix mod uninstallation: now all mod files should be removed from override during uninstallation.
- Fixed copying of the MVE folder.
- Uses the %MOD_FOLDER% automatic variable.
- Uses labels for component requirements statements.
- Simplified the mod ID where possible.
- Renamed the mod folder from "SOS" to "SoS" to match the mod name.
- Renamed "setup-SOS.tp2" to "SoS.tp2".
- Updated iconv and replaced it with a static build.
- Updated the readme file to use the latest templates.
- Updated the metadata file to use the latest template.
- Change HANDLE_CHARSETS to use from_UTF8 and adjust tra files.
- Fixed HANDLE_CHARSETS execution on EET.
- Fixed encoding problems by replacing ű with û.
- Updated add_worldmap_tbl.
- Fixed adding areas to the cheat table.
- Remove the custom kit.ids fixer and use the latest from BG2Fixpack.
- Remove additional backup of *.tlk files.
- Standardize folder names and file extensions.
- Made cosmetic changes to the readme files.
- Added 'outdated' to outdated readme files.
- Replace tabs with spaces.
- Removed redundant files.

By Weigo:
- Added sounds from ogg2 (only if they are missing)
- Changed AR4230(N).mos files for EE and non-EE version (EE has larger images)
- Changed tiz format to tbc format
- Added a7_tools.tpa by Argent77 for HANDLE_TILECONV function
- Added in %MOD_FOLDER%/Tools/Tileconv all tileconv versions

# Version 1.16 (September 28, 2021)

By Jastey:
- Fixed install error for non-English versions: Added needed dlls for iconv.exe.
- Added inn2616.sto in case it is not existent ingame (BGII:EE).
- Added install order syntax and globally unique labelling to .ini to support Project Infinity.

# Version 1.15 (February 21, 2020)
By Gwendolyne:
- Added _sos.ini_ metadata file to support AL|EN's "Project Infinity".
- Added OS control to avoid installing "_Remorhaz walking speed adjustment_" component on Mac OS.
- Added _DESIGNATED_ numbers and "_shadows_over_soubar_", "_sos_selence_at_waukeens_promenade_after_meeting_Gaelan_" and "_sos_remorhaz_walking_speed_adjustment_" component LABELS.
- Various bugfixes, as listed in the GitHub commits. 😉
- Added _README_ command in tp2.
- Wrote a new _sos-readme-english.html_ readme file and moved all readme files into new readme folder.
- Included Linux and Mac Os X versions in the same package (thanks AL|EN!).
- Uploaded mod to official SpellHold Studios GitHub mirror account.

# Version 1.14 (April 13, 2018)
By Weigo & Jastey:
- EE & EET compatibility, by Weigo & Jastey. SoS is now comabtible with BG2EE/EET and ToB/BGT.
- So many fixes to be described. 😉
- Updated WeiDU installer to v246.

# Version 1.13
- Fixes and enhancements, by King Diamond.
- Italian translation: Ilot in collaboration with Mother Anorexia, Hicarus87, Giuseppe, Bhoo the hero (one file).
- Updated WeiDU installer to v206.

# Version 1.12

##### Fixes and enhancements, by King Diamond:

1. Silence's script updated (DisplayStringHead()'s). Now she starts her default pickpocketing only when the party is nearby.
2. bAR1105.baf, bRIBALD.baf modified for a better performance.
3. AR4286.baf restored (known undroppable items will be returned to their owners - for most NPCs).
   AR4361.baf - many Continue()'s added
   AR4330.baf - possible deadlock removed (necessary creatures couldn't be created and Hemp Rope couldn't be found)
   AR4219.baf - restored
   AR4240, AR4242, AR4244, AR4246, AR4251, AR4252, AR4253, AR4254, AR4255, AR4258, AR4259.BAF - spawning method optimized
4. Continue() issue fix: tAR1100.BAF divided into 2 parts for E_T and E_B
5. rebelst's forum post fixes:
   - tNALIA.BAF: "Myself" should have no quotes
   - AR4370.BAF: CB300CO[1-2] should be CB4300CO[1-2]
   - CB421012.BAF: CBRJR003, CBRJR016, CBRJR02[2-5] don't exist, lines should be removed
   - CB4300CT.BAF: CB4300AR should be CBBANARC
   - CBCRLENM.BAF, CBFGTENM.BAF, CBMAYENM.BAF, CBMILENM.BAF, CBWINENM.BAF: CBMINHP1 doesn't exist, should be MINHP1
   - CBBANED.BAF: Refers to DCLERIC, which doesn't have deathvar in BG2, CRE needs to be patched (that code commented - can't find any DCLERIC's relation to SoS content)
   - CBMAYOR2.BAF: Last line, CBSDSO06 should be CBSWDSOU (KD - CBRSSOUB is right dialogue)
   - CB351GD3.D: ARCHER_CALL_SHOT should be SPCL121
   - CBAMNLGS.D: CBAMNL0[1-4] should be CBAMNLG[1-4]
   - CBSHTHIF.D: CBRJR003 and CBRJR016 doesn't exist, lines should be removed
   - CBRRRRAT.CRE: deathvar should be set to CBRRRRAT
   - CB270CC[A-G].CRE: deathvars need to be set to CB270CC[a-g]
   - CBSBTVRB.CRE: deathvar needs to be set to CBSBTVRB
6. CBTBGTOD.BAF
   CBTBGPOT.BAF
   CBTBGMER.BAF
   CBTBGMAL.BAF
   CBTBGGAL.BAF - BP-ready shouts (123).
7. Worldmap entries and links revised to introduce more reasonable travel times.
   Cross-link tables for CtB, TDD, RoT added.
   Now Worldmap v6 > is a mandatory component to access SoS areas in any configuration of mods.
8. Spanish translation by SirLancelot's Team.

# Version 1.11

##### Worldmap v6, sounds, by King Diamond:

- Worldmap v6 > support.
- Re-mastered sounds.

# Version 1.10

##### Fixes, multi-language support, by King Diamond:

- For all items - 'Unusable by ALL(no kit)' flag usage re-checked.
- AR0406.ARE - container protected with key requirement now.
- Several installation script optimizations.
- Compatibility with upcoming Region Of Terror, v2.0.
- GUI Switcher v2.0.
- Traified for multi-language support.

# Version 1.0.5

##### Fixes and enhancements, by King Diamond:

1. LONG_BOW/MAGE_ALL issue fixed. All scrips have MAGE_ALL check now.
2. 0xE200 MBET CGAMEANIMATIONTYPE_BEETLE_COPPER animation is not used by mod, so its TP2 installation is removed;
   0xEC20 MWI3 CGAMEANIMATIONTYPE_WIGHT3 animation is not used by mod, so its TP2 installation is removed (BAMs).
3. CBBANDEAD.CRE - animation fixed: IC_LICHBLACK instead of IC_MYCONID2.
4. Yeti animation is being installed into '0xE060 MLIC IC_LICH' slot (I hope we'll deal with NEJ later... and CtB). Corresponding creature files updated.
5. Remorhaz animation moved to 0xE230 MBRH IC_BEETLE_RHINOCEROS slot. English version BGmain.exe patch added to reduce MBRH moving speed.
   ⚠️ ATTENTION! That could be valid only for an ENGLISH version.
   For other version it's necessary to search for C6 42 06 0A 8B 85 9C FB FF FF C6 40 07 0A and patch both 0A at found offsets with 6 : ------------^^----------------------------^^
6. Missed sound scheme 2DAs for MBRH and MLIC slots added + all necessary WAVs.
7. TS compatibility added (several dialogues).
8. GUI installation is changed into a tricky thing that most ppl will be glad off... 😉

# Version 1.0.4

##### Fixes and enhancements, by King Diamond:
 1. INTERDIA.2DA patching removed completely because of none of the joinable NPCs have banter dialogues.
 2. AR4235 is not used: ARE, WED, TIS, MOS, BMPs.
    AR4361 is not used: ARE.
 3. Movie moved to a separate MVE folder/BIFF.
 4. Area AR4232 rebuilt: TIS, MOS, SR.BMP
 5. AR4340.WED, AR4340SR.BMP fixed.
 6. Unused spells (removed):
    CBCL001 - an exact copy of CBRJR008.SPL. Unused CBCL001B,C.BAM. CBCL001.ITM reference changed to CBRJR008.SPL  
    CBFENCE1  
    CBFENCE2  
    CBFENCE3  
    CBFENCE4  
    CBFENCE6  
    CBRJR18A  
    CBRJR18B  
    CBRJRVM  
    spdynah-spvalyg - they are from BP package.
 7. CBRJR008.SPL (Beltyn's Burning Blood) replaced by TDD's SPWI429.SPL; corresponding references updated (CBCL001.ITM, CBRJR008.ITM); SPELL.IDS patch implemented.
 8. SHGRASPS.SPL (Shocking Grasp) usage replaced by SPWI115.SPL (CBRJR015.ITM).
 9. FENCE kit fixed according to its description. Now ALL races are available for it.
10. Unused store removed: CB361TPT.STO.
11. Another Items' revision - many inconsistencies fixed (equipping effects, missed strings, icons); TOOLTIP.2DA patching added.
12. Unused item CBUHGVCT.ITM removed.
13. SELENCE NPC installation fixed: Fence kit ID is being set properly now.
14. CBBRNOIL.SPL recreated - AR4370 proximity trigger script spell (CBBRNOIL.BAF - fixed).
15. GUILSOP.BAM removed from the installation.

# Version 1.0.3

- Additions from the BP package.
- Fixes and enhancements by Horred the Plague:
 1. Unused files removed. Download archive size reduced from 95.9M to 69M.
 2. All AREs revised with DLTCEP, their file structure rearranged and fixed. Many missed info triggers and automap pointers text patching added, Beregost taverns ambients removed to reflect Soubar environments.
 3. Missed ambient sounds added (OGG3 directory); some missed scripts and BAMs re included.
 4. Solved all possible area compatibility issues. AR4300 -> AR4370 with all corresponding resources, script/dialogues links, TIS and WED fixed (there was a real MESS with it!)
 5. All ITMs revised; numerous bugs fixed: 0 weapon proficiencies, invalid or absent icons/BAMs, wrong stats, incomplete descriptions; total upgrade of usability settings. Now all items match their descriptions. In a combination with BDash-WeiDU text fix all descriptions will be 99%-complete.
 6. STOres revised and many incorrect rumors dialogues links fixed, strings patches added.
 7. All dialogues revised: empty blocks removed, several invalid external references fixed. The whole bunch of dialogues is getting compiled by one COMPILE command now as it should be to produce valid cross-references.
 8. Scripts revised: several missed patches for journal entries added.
 9. Patching of all BG2 original resources converted to "WeiDU-only" that makes it 100% compatible with any other mod around.
10. Journal system revised and rearranged for a single .TRA using (both scripts and dialogues) to unify the journal strings for correct entries' adding/removing.
11. Several BG1-side strings fixed because of many SoS creatures use them in their soundsets. Patch is taken from BGT-WeiDU.
12. Great main screen logo for SoS taken from Yovaneth's fixpack as well as some fixes checked and implemented (except "G3 Identify All" one). For more info visit [this](http://www.final-exodus.net/~dai/yovaneth/baldursgate_index.html).
13. Installation script (TP2 and BATs) optimized, some errors fixed (f.e. it biffed everything, including AR0072.tis that should remain in override).
14. Unused WAVs removed from ALORA, KIVAN and ELDOTH soundsets. The creatures that use them are not joinable NPCs, so they won't use any sound beside 01,03,07,11,17-19,38,39.
15. Missed FLAMN and several other (for creatures soundsets) WAVs added.

# Version 1.0.2

- Revision by King Diamond.
- Logo screen by Yovaneth.

# Version 1.0.1

- WeiDU version (Horred The Plague).

# Version 1.0.0

- Initial release (Charles Bisson).
