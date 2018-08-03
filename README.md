# Allgemein

> Die Startskripte für den Bewegungsmelder, den Start des HTTP-Servers sowie dem Chrome-Browser sind in diesem Repository hinterlegt. 

Die Anwendung für den Magic Mirror ist als Vue Projekt umgesetzt worden, weil alles in Browser laufen sollte, ohne zusätzlichen Backendserver. Das Betriebssystem auf dem alles läuft ist DietPi, weil es für den Pi Zero W am wenigsten Resourcen verbraucht und sehr einfach zu konfigurieren ist. Sollen andere Anwendungen laufen, wie z.B. Magic Mirror oder von Glancr, müssen Anpassungen an den Skripten vorgenommen werden. Wird sich für Magic Mirror oder Glancr entschieden, so reicht der Pi Zero W nicht aus, weil dann zuviele Ressourcen verschlungen werden.

### Anforderungen an den Magic Mirror:
- Flache Bauweise
- Wenig Stromverbrauch, da 24/7 Lauffähigkeit
- Nach außen nur ein Kabel sichtbar
- Bewegungsmelder hinter dem Spiegel

# Einkaufsliste

## Bewegungsmelder
> Wichtig: Der Bewegungsmelder hat direkt hinter dem Spionspiegel nicht funktioniert, aber hinter dem Holzrahmen.
- rcwl-0516 Mikrowellen-Radar Bewegungsmelder Modul
	- https://www.amazon.de/rcwl-0516-Mikrowellen-Radar-Bewegungsmelder-menschlichen-Empfindlichkeit-Schaltabstand/dp/B06XDLMT1C/ref=sr_1_4?ie=UTF8&qid=1522400671&sr=8-4&keywords=rcwl-0516&dpID=51jrSXJrQNL&preST=
- Stiftleiste
    - https://www.amazon.de/gp/product/B01MZE0XGZ/ref=oh_aui_detailpage_o00_s00?ie=UTF8&psc=1
- Kabel 
	- https://www.amazon.de/gp/product/B00OK74ABO/ref=oh_aui_detailpage_o00_s00?ie=UTF8&psc=1
- Lötkolbenset
    - https://www.amazon.de/gp/product/B01MCRPUNK/ref=oh_aui_detailpage_o09_s00?ie=UTF8&psc=1

- Anleitung
	- https://www.electromaker.io/blog/article/using-a-doppler-radar-sensor-with-the-raspberry-pi-12
	- https://42project.net/bewegungen-mit-dem-ueber-doppler-mikrowellen-radar-sensor-detektieren/
	
## Raspberry Pi Zero W
- Raspberry Pi Zero W
- Netzkabel 2 A
	- https://www.amazon.de/gp/product/B079D8PXGL/ref=oh_aui_detailpage_o00_s00?ie=UTF8&psc=1
- Speicherkarte SanDisk Ultra 32GB microSDHC Speicherkarte 
	- https://www.amazon.de/gp/product/B073S8LQSL/ref=oh_aui_detailpage_o00_s00?ie=UTF8&th=1

## Monitor
> Als Alternative kann auch ein Bildschirm mit eigenem Controller gekauft werden, wie Glancr es in seiner DIY-Anleitung beschreibt.

- Monitor Display IPS Bildschirm-13,3 Zoll LED Kleine tragbare 1920*1080p Monitor mit HDMI-Eingang für Raspberry Pi 3B 2B B 
	- https://www.amazon.de/dp/B078F6X9YT/ref=psdc_429868031_t3_B01JJ9ODCS
- Netzteil flach mit 3 A für den Monitor (Mitgelieferte Netzteil vom Monitor ist zu groß für die flache Bauweise)
    - https://www.amazon.de/gp/product/B00XXNDM42/ref=oh_aui_detailpage_o02_s00?ie=UTF8&psc=1

## Spiegel
- Spionspiegel
	- https://www.glas-star.de/spionspiegelnachmass/chrome-spy-spiegel/
- Rahmen mit 7 cm Rand (Der Händler befindet sich in Weißen See und man kann direkt hingehen und sich einen schönen Rahmen aussuchen)
	- https://www.villa-vatku-eshop.de/

## Sonstiges
- Panzertape
    - https://www.amazon.de/gp/product/B000KT7E0U/ref=oh_aui_detailpage_o01_s00?ie=UTF8&psc=1
- Steckdose GAO EU4 Eurosteckdosenleiste/Eurosteckerleiste 4-fach Extraflach 1.5 m Kabel 
    - https://www.amazon.de/gp/product/B00406W0VC/ref=oh_aui_detailpage_o00_s02?ie=UTF8&psc=1



