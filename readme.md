Publishing a detail plan map in WMS format
2.11.2015 Sito Oy

This is a first version of this open project.
The purpose of this project is to collect all the improvemts made for in this process in one place for all to use.
This project is published in GitHub with CC license, which means that all the made improvements for this process should be published.

Folders in this project:
FME: workbench and Excel of the classification
Geoserver: SLD-styles and SVG-pictures that are used in the SLD
PostGIS: create scripts for the three table, that FME-workbench writes to and Geoserver reads from


Tips to update FME workbench in Github

1) Use comments and bookmarks to clarify your changes.

2) Reader and Writer should be removed. They won't work for other users.
- Easiest this is done when using hard coded connections
- If Named parametres is used -> make sure to remove Global parametres (in textfile)
- Embed parametres should NOT be used with this workbench. There is a risk to leak delicate information.

3) Remove values "GUID" and "GLOBAL PARAMETRES" in textfile. Although the FMW-file is possible to edit with a text editor,
one should always test that the workbech opens correctly after the changes made in textfile.

4) Remove also User Parametres in the workbench, if other than Reader/Writer are used. They won't work for other users.


Suomeksi
========

Ajantasa-asemakaavakartan WMS-julkaisu
2.11.2015 Sito Oy

Tämä on avoimen projektin ensimmäinen versio. Projektin paketti julkaistaan GitHubissa avoimella lisenssillä (CC-SA), 
jonka käyttäminen edellyttää omien muutosten julkaisua avoimesti.

Alikansiot
FME: työtilan pohja ja luokitteluun käytetty Excel
Geoserver: SLD-tyylit ja tyyleissä käytetyt SVG-kuvat
PostGIS: luontiscriptit kolmelle taululle, joihin FME-työtilassa kirjoitetaan aineisto


Ohjeita FME-työtilan päivittämiseen Githubissa

1) Käytä kommentteja ja kirjanmerkkejä selkeyttämään muutoksesi.

2) Poista Reader ja Writer, ne eivät toimi muilla.
-Poistaminen on helpointa, mikäli on käyttänyt kovakoodattuja yhteyksiä. Niiden poistamiseksi riittää poistaminen työtilasta.
-Jos käytössä on Named connections -yhteyksiä, Global parametres on muitettava poistaa (tekstitiedostosta)
-Embed connections -yhteyksien käyttöä EI suositella. Ne muodostavat riskin vuotaa arkaluontoista tietoa.

3) Poista arvot "GUID" ja "GLOBAL PARAMETRES" tekstieditorilla. Vaikka FMW-tiedostoa voi muokata suoraan tekstieditorilla, 
työtilan toimivuus on testattava aina muokkauksen jälkeen FME:llä.

4) Jos työtilassasi on käytössä User Parametres (muu kuin Reader/Writer), poista ne ennen julkaisua. Ne eivät toimi muilla.

