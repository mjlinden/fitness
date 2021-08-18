-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 18 aug 2021 om 17:02
-- Serverversie: 10.4.14-MariaDB
-- PHP-versie: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fitness`
--
CREATE DATABASE IF NOT EXISTS `fitness` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `fitness`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `category`
--

INSERT INTO `category` (`id`, `name`, `picture`, `description`) VALUES
(1, 'Roeitrainer', 'categories/roeitrainer.jpg', 'Een roeitrainer is een fitnessapparaat waarmee je het hele lichaam traint. Met een roeitrainer, ook wel roeitoestel of roeimachine, genoemd, boots je de roeibeweging op het water na. Je hebt daarbij voornamelijk je armen, benen en rugspieren nodig, waardoor het een complete workout is. Roeiapparaten zijn er in vele soorten en prijsklassen. '),
(2, 'Crosstrainer', 'categories/crosstrainer.jpg', 'Een crosstrainer is een fitnessapparaat waarmee je jouw hele lichaam traint. Je maakt namelijk een beweging met zowel je benen als je armen. Daarnaast train je ook de spieren in je core (buik en onderrug), borst, rug en schouders. Zowel in sportscholen als bij thuisgebruik zijn crosstrainers (ook wel elliptical machine genoemd) al geruime tijd een van de populairste fitnessapparaten.'),
(3, 'Hometrainer', 'categories/hometrainer.jpg', '\r\nEen hometrainer is het meest bekende fitnessapparaat voor thuisgebruik en staat ook wel bekend als fitness fiets. Wat is er nu prettiger dan thuis op je gemak te kunnen werken aan je conditie? Met een hometrainer kun je eenvoudig meerdere spiergroepen trainen en je uithoudingsvermogen verbeteren. Daarnaast bepaal je zelf het tempo, het trainingsniveau en het tijdstip van je training.'),
(4, 'Loopband', 'categories/loopband.jpg', 'Een loopband is een veelzijdig fitnessapparaat. Een loopband wordt gebruikt om conditie te verbeteren en vetpercentage te verlagen, maar kan ook ingezet worden voor revalidatie. Het voordeel van een loopband is dat je thuis kunt trainen wanneer het jou uitkomt. Heb je er genoeg van om ‘s avonds in het donker of door weer en wind te lopen, of zou je je spieren, pezen en botten willen ontlasten tijdens het (hard)lopen? Dan is een loopband voor jou de beste oplossing!');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `product`
--

INSERT INTO `product` (`id`, `name`, `picture`, `description`, `category_id`) VALUES
(1, 'Crosstrainer - Focus Fitness Fox 3', 'categories/crosstrainer/cr1.jpg', 'De Focus Fitness Fox 3 is de ideale crosstrainer voor iedere thuissporter. Deze crosstrainer geeft je een stabiele training en is fluisterstil in gebruik. De verstelbare voetpedalen van de Fox 3 maken deze crosstrainer geschikt voor verschillende lichaamslengtes. Daarnaast maakt het vliegwiel, met een gewicht van 7 kg, je training comfortabel en zorgt dit vliegwiel voor een mooie ronde rotatie. Door deze factoren heeft de Focus Fitness Fox 3 in het verleden diverse Kieskeurig awards gewonnen.\r\n\r\nLENGTEPAS\r\nDe lengtepas van een crosstrainer bepaalt in grote mate het comfort van je training. Een grotere lengtepas maakt de omwenteling langer, waardoor de beweging meer lijkt op je natuurlijke loopbeweging. De lengtepas van de Focus Fitness Fox 3 is 40 cm lang, waardoor de pas op deze crosstrainer zeer natuurlijk aanvoelt.\r\n\r\nMATERIAAL\r\nHet eigen gewicht van een crosstrainer is van groot belang voor de stabiliteit van het apparaat. De Fox 3 is voorzien van een degelijke staalconstructie en heeft een eigen gewicht van 48 kg, waardoor je training op de Focus Fitness Fox 3 stabiel aanvoelt. Het is dankzij deze stabiele constructie mogelijk om de Fox 3 tot een lichaamsgewicht van 120 kg te belasten. Daarnaast beschikt de Fox 3 over een fluisterstille V-Belt, waardoor je kunt trainen zonder dat iemand anders daar last van heeft.\r\n\r\nDISPLAY\r\nDe Fox 3 is elektronisch aan te sturen door middel van een kleuren led display. Hierdoor kun je eenvoudig switchen tussen de 16 verschillende weerstandniveaus. Dankzij het eenvoudig te bedienen en duidelijk af te lezen display is het mogelijk om vele trainingsgegevens in één oogopslag in beeld te hebben. Zo kun je de tijd, afstand, snelheid, aantal omwentelingen, omgevingstemperatuur, het aantal verbrande calorieën én je hartslag aflezen.\r\n\r\nTRAININGSPROGRAMMA\'S\r\nDe Fox 3 is voorzien van 18 verschillende trainingsprogramma\'s. Deze programma\'s bestaan uit 12 voorgeprogrammeerde weerstandprogramma\'s, vier hartslagprogramma\'s, één manueel programma en één persoonlijk trainingsprogramma. Het persoonlijke trainingsprogramma kun je geheel naar eigen wens samenstellen. Zo kun je iedere training uniek maken en zal je lichaam geprikkeld blijven, waardoor je sneller jouw eigen trainingsdoel zal behalen.\r\n\r\nSPECIAAL TRAININGSPROGRAMMA\r\nHet display van de Focus Fitness Fox 3 crosstrainer geeft je de mogelijkheid om 5 verschillende user profielen te gebruiken. Deze user profielen kun je gebruiken om diverse persoonsgegevens in te geven, zoals je lengte, gewicht en geslacht. Ook is het met een hartslagprogramma mogelijk om op basis van jouw maximale hartslag te trainen. Bij een hartslagprogramma past de weerstand van de crosstrainer zich automatisch aan jouw gewenste hartslagpercentage aan. Hierdoor zal de crosstrainer de weerstand automatisch verhogen of verlagen indien je boven of onder je gewenste hartslagpercentage zit. Door middel van deze hartslagprogramma\'s kun je jouw persoonlijke trainingsdoelen effectiever behalen. Een duurtraining op basis van een lagere hartslag zorgt bijvoorbeeld voor een effectieve training op het gebied van vetverbranding.\r\n\r\nCONCLUSIE\r\nDe Focus Fitness Fox 3 is de ideale crosstrainer voor thuisgebruik. Deze crosstrainer is fluisterstil, heeft een relatief lange lengtepas, is stabiel en heeft een zwaar vliegwiel. Hierdoor heeft de Fox 3 al vier keer de \'Best Reviewed\' award van Kieskeurig.nl verdiend! Door de vele trainingsprogramma\'s is het mogelijk om effectief je persoonlijke doelen te behalen met deze crosstrainer.', 2),
(5, 'Crosstrainer - Focus Fitness Fox 4', 'categories/crosstrainer/cr2.jpg', 'Met de Focus Fitness Fox 4 haal je een uitstekende crosstrainer in huis. Deze crosstrainer biedt je met het zware vliegwiel aan de voorkant, de hoge mate van stabiliteit en de longitudinale pas een unieke fitnesservaring in je eigen huis! De Focus Fitness Fox 4 is een hoogwaardige frontcrosstrainer met een uitstekende prijs-kwaliteitverhouding.\r\n\r\n\r\nVLIEGWIEL AAN DE VOORKANT\r\nHet vliegwiel van de Focus Fitness Fox 4 crosstrainer bevindt zich aan de voorzijde van de crosstrainer. Het grootste voordeel van een front driven crosstrainer is dat er weinig ruimte tussen je benen is en je voeten dus dicht bij elkaar staan. De ruimte tussen de voetpedalen is namelijk slechts 9 centimeter. Dit resulteert in een vloeiende en natuurlijke loopbeweging. Het 7 kg vliegwiel biedt een comfortabele training.\r\n\r\n\r\nCOMPACT EN VERPLAATSBAAR\r\nDe Focus Fitness Fox 4 is zeer functioneel en is slechts 147 cm lang en 64 cm breed. Dit geeft je een unieke mogelijkheid om thuis een crosstrainer te gebruiken, zodat je een échte sportschoolervaring in huis haalt. Deze Fox 4 heeft een stille V-snaar, zodat je het apparaat op elk moment kunt gebruiken en je geen zorgen hebt over (geluids)overlast. De transportwielen zorgen ervoor dat je de Fox 4 eenvoudig en snel kunt verplaatsen wanneer je de crosstrainer niet meer nodig hebt.\r\n\r\n\r\nTRAININGSCOMPUTER\r\nDankzij het uitgebreide display van de trainingscomputer heb je direct toegang tot vele trainingsprogramma\'s. Het duidelijk leesbare kleurendisplay laat je kiezen uit 12 voorgeprogrammeerde trainingsprogramma\'s die variëren tussen helling, interval, 16 weerstandsniveaus en aanpasbare programma\'s. Daarnaast lees je al je trainingsgegevens af, zoals; afstand, snelheid, verbrande calorieën, hartslag, vermogen en meer.\r\n\r\n\r\nBEREIK JE PERSOONLIJKE TRAININGSDOELEN\r\nMet Focus Fitness Fox 4 kun je je persoonlijke trainingsdoelen bereiken. Deze crosstrainer geeft je bijvoorbeeld verschillende trainingsprogramma\'s, afhankelijk van je hartslag. Kies het trainingsdoel dat bij je past en train om vet te verbranden, je conditie te verbeteren of je spieren te ontwikkelen op basis van een percentage van je maximale hartslag. Als je tijdens de training het vooraf ingestelde percentage overschrijdt, past de crosstrainer de weerstand automatisch naar beneden aan. Naast hartslagprogramma\'s biedt Fox 4 ook een krachtprogramma voor revalidatie of conditieverbetering.\r\n\r\n\r\nCONCLUSIE\r\nDe Focus Fitness Fox 4 is een fantastische crosstrainer voor elke thuissporter. Deze voorwiel aangedreven crosstrainer heeft een ongelooflijk scherpe prijs voor de uitstekende specificaties die hij te bieden heeft. Met een eigen gewicht van 67 kg, een vliegwiel van 7 kg en een lengtepas van 50 cm is een comfortabele en stabiele sportervaring gegarandeerd.', 2),
(7, 'Crosstrainer - Focus Fitness Fox 3 iPlus', 'categories/crosstrainer/cr3.jpg', 'De Focus Fitness Fox 3 iPlus is de ideale crosstrainer voor de thuissporter. De Fox 3 iPlus is niet alleen stabiel en sterk, maar ook nog eens geruisloos. Naast een vliegwiel van 7 kg en verstelbare voetpedalen is de Fox 3 iPlus voorzien van de nieuwste technieken. Denk hierbij aan de ingebouwde Bluetooth functie waarmee de computer van de crosstrainer contact maakt met je tablet of smartphone. Hierdoor neemt je tablet of smartphone de functie van trainingscomputer over en kun je met zeer interessante app’s interactief trainen.\r\n\r\n\r\nHARTSLAG\r\nDankzij de hartslagsensoren is het mogelijk je een indicatie te geven van je hartslag. Wanneer je gebruik maakt van een borstband wordt je hartslag nauwkeuriger gemeten. In de computer van de crosstrainer zit namelijk een ingebouwde ontvanger om het signaal van een borstband draadloos te ontvangen. Hiervoor kun je een hartslagband van Senz Sports gebruiken. Met een hartslagband kun je nauwkeurig hartslagtrainingen uitvoeren. Wanneer je gebruikt maakt van een Bluetooth hartslagmeter kun je de hartslagmeter ook verbinden met bijvoorbeeld je smartphone.\r\n\r\n\r\nCOMPUTER\r\nDe Focus Fitness Fox 3 is voorzien van een elektronische trainingscomputer met kleur. Met deze computer is het mogelijk je weerstand te verhogen of te verlagen. De 16 verschillende weerstandniveaus zorgen ervoor dat je uitgebreid kunt afwisselen. Dankzij het eenvoudig te bedienen en duidelijk af te lezen display is het mogelijk om vele trainingsgegevens in één oogopslag in beeld te hebben. Zo kun je de volgende waardes inzien:\r\n\r\nTijd\r\nAfstand\r\nSnelheid\r\nAantal omwentelingen\r\nOmgevingstempratuur\r\nCalorieverbruik\r\nUithoudingsvermogen\r\nHartslag\r\n\r\nTRAININGSPROGRAMMA’S\r\nDe Fox 3 iPlus is voorzien van 18 trainingsprogramma’s. Deze programma’s bestaan uit 12 voorgeprogrammeerde programma’s, vier hartslag programma’s, één manueel programma, één persoonlijk programma. Met het persoonlijk programma kun je een geheel eigen programma samenstellen. Zo kun je iedere training geheel uniek maken en behaal je sneller je trainingsdoel.\r\n\r\n\r\nUSER PROFIELEN EN HARTSLAGPROGRAMMA’S\r\nJe kunt in de computer van de crosstrainer Fox 3 iPlus met 5 verschillende user profielen werken. Deze user profielen gebruik je om je persoonsgegevens in op te slaan, zoals je lengte, gewicht en geslacht. Daarnaast kun je een user profiel gebruiken om een hartslagprogramma uit te voeren. Bij een hartslagprogramma past de weerstand van de crosstrainer zich automatisch aan, wat gebeurt op basis van je hartslag en je persoonsgegevens. Met andere woorden: train je niet zwaar genoeg, dan zal de crosstrainer het je automatisch zwaarder maken door de weerstand te verhogen zodat je traint op het gekozen doel.\r\n\r\n\r\nMATERIAAL\r\nDe crosstrainer Fox 3 iPlus weegt 48 kg en is voorzien van een degelijke staalconstructie. Het is dankzij deze stabiele constructie mogelijk om een persoon tot 120 kg te laten trainen op deze crosstrainer.\r\n\r\n\r\nHOE TRAIN IK MET TABLET OF SMARTPHONE?\r\nDeze crosstrainer is voorzien van de iPlus module. Dit betekent dat de crosstrainer gekoppeld kan worden aan een tablet/smartphone door middel van Bluetooth. Zo kan er getraind worden met behulp van een applicatie. Leg je tablet/smartphone op de tablethouder van de crosstrainer en download de bijbehorende trainingsapplicatie. De applicatie zal hierna de functie van het display van de crosstrainer overnemen. Je tablet/smartphone is nu je trainingscomputer geworden en vanuit hier kun je gebruik maken van de verschillende functies van de applicatie. Daarnaast worden door middel van de applicatie jouw trainingsgegevens grafisch nog mooier in beeld gebracht. Omdat je tablet/smartphone via Bluetooth verbonden is, zal de weerstand automatisch worden aangepast wanneer je bijvoorbeeld een berg opgaat.\r\n\r\nGa naar de fitness apps pagina om te kijken welke applicaties momenteel te combineren zijn met de Fox 3 iPlus.', 2),
(8, 'Crosstrainer - Focus Fitness Fox 3 HRC', 'categories/crosstrainer/cr4.jpg', 'De Fox 3 HRC is een crosstrainer van Focus Fitness met een uitstekende prijs-kwaliteitverhouding. Door de grote keuze aan trainingsprogramma\'s raak je nooit uitgetraind en de trainingscomputer geeft je inzicht in al je prestaties.\r\n\r\n\r\nINCLUSIEF BORSTBAND\r\nDe Fox 3 HRC onderscheidt zich van de normale Fox 3 doordat het mogelijk is om draadloos met een borstband te trainen. Bij deze crosstrainer wordt namelijk een 5Hz borstband ter waarde van €25,00 (adviesprijs) meegeleverd.\r\n\r\nDit heeft drie voordelen:\r\n\r\nJe hoeft niet de middelste handvaten van de crosstrainer met de hartslag handsensoren vast te pakken om de hartslag te meten. Bij het vastpakken van de middelste handvaten train je namelijk niet het bovenlichaam.\r\nEen borstband meet jouw hartslag veel nauwkeuriger dan hartslagsensoren. Deze sensoren geven slechts een indicatie van de hartslag.\r\nDe Fox 3 HRC is de ideale crosstrainer voor de thuissporter. De crosstrainer is niet alleen stabiel en sterk maar ook nog eens geruisloos. De Fox 3 HRC is zo ontworpen dat de voetpedalen in drie standen te verstellen zijn. Mede hierdoor en het vliegwiel van 7 kg kun je met de Fox 3 HRC op een natuurlijke manier trainen.\r\n\r\nCOMPUTER\r\nDe Fox 3 HRC is voorzien van een elektronische LED computer met kleuren. Met deze computer is het mogelijk jouw weerstand te verhogen of te verlagen. Er zijn 16 weerstandniveaus waarmee je kunt afwisselen. Dankzij het eenvoudig te bedienen en duidelijke af te lezen display is het mogelijk om vele trainingsgegevens in één oogopslag in beeld te hebben, zoals:\r\n\r\nTijd\r\nAfstand\r\nSnelheid\r\nRPM\r\nOmgevingstempratuur\r\nCalorieverbruik\r\nUithoudingsvermogen\r\nHartslag\r\n\r\nTRAININGSPROGRAMMA’S\r\nDe Fox 3 HRC is voorzien van 18 trainingsprogramma’s. Deze programma’s variëren van 12 voorgeprogrammeerde programma’s, vier hartslag programma’s, één manueel programma en één persoonlijk programma. Met het persoonlijk programma kun je een geheel eigen programma samenstellen. Zo kun je iedere training geheel uniek maken en zal jouw lichaam geprikkeld blijven waardoor je sneller jouw trainingsdoel zult behalen.\r\n\r\n\r\nUSER PROFIELEN EN HARTSLAGPROGRAMMA’S\r\nJe kunt in de computer van de crosstrainer met 5 verschillende user profielen werken. Deze user profielen gebruik je om je persoonsgegevens in op te slaan zoals jouw lengte, gewicht en geslacht. Gebruik een user profiel om hartslagprogramma\'s te trainen. Bij een hartslagprogramma past de weerstand van de crosstrainer zich automatisch aan jouw hartslag aan. Met andere woorden, train je niet zwaar genoeg, dan zal de crosstrainer het automatisch zwaarder maken door de weerstand te verhogen zodat je traint op het gekozen doel.\r\n\r\n\r\nMATERIAAL\r\nDe Fox 3 HRC weegt 48 kg en is voorzien van een degelijke staalconstructie. Het is dankzij deze stabiele constructie mogelijk om een persoon tot 120 kg te laten trainen op deze crosstrainer.', 2),
(9, 'Crosstrainer - Focus Fitness Senator iPlus', 'categories/crosstrainer/cr5.jpg', 'De strakke Focus Fitness Senator iPlus Crosstrainer biedt je een breed scala aan mogelijkheden en voorziet je van de meest moderne technieken. Zo is de Senator voorzien van een stabiel in totaliteit 67 kg wegend frame en een 12 kg zwaar frontwheel wat zorgt voor een soepele en efficiënte work-out. Of je nu een startende of meer ervaren sporter bent de Senator iPlus biedt je voldoende uitdaging tijdens je training.\r\n\r\n\r\nVLIEGWIEL AAN DE VOORKANT\r\nHet vliegwiel van de Senator crosstrainer bevindt zich aan de voorkant. Met het vliegwiel aan de voorzijde heb je een langere lengtepas. Qua beweging moet je dan denken aan langlaufen. Dit levert de meeste natuurlijke beweging omdat de voet van hak naar de teen wordt afgewikkeld. Dit zorgt ervoor dat de training intensiever is, echter zal je er zelf weinig van merken. Deze beweging is minder belastend voor je gewrichten en knie. Het voordeel van crosstrainers met het vliegwiel aan de voorzijde is dat de voeten dichter bij elkaar kunnen staan, aangezien er geen behuizing tussen je voeten door loopt. Bij de Senator crosstrainer staan je voeten slechts 7 cm uit elkaar. Doordat het zwaartepunt van crosstrainers met het vliegwiel aan de voorzijde aan de voorkant ligt, zijn deze vaak stabieler. Daarbij wordt de instap van een front driven crosstrainer vaak als fijner beschouwd, aangezien je nergens overheen hoeft te stappen. \r\n\r\n\r\nHOE TRAIN JE MET EEN APPLICATIE?\r\nDeze crosstrainer is voorzien van de iPlus module, dit betekent dat de crosstrainer gekoppeld kan worden aan een tablet/smartphone door middel van Bluetooth. Zo kan er getraind worden met een applicatie. Leg je tablet/smartphone op de tablethouder van de crosstrainer en download de bijbehorende trainingsapplicatie. De applicatie zal hierna de functie van het display van de crosstrainer overnemen. Je tablet/smartphone is nu je trainingscomputer geworden en vanuit hier kun je gebruik maken van de verschillende functies van de applicatie. Daarnaast worden door middel van de applicatie jouw trainingsgegevens grafisch nog mooier in beeld gebracht.\r\n\r\nOmdat je tablet/smartphone via Bluetooth verbonden is, zal de weerstand automatisch aangepast worden. Wanneer je bijvoorbeeld een berg opgaat, zal de weerstand hoger worden.\r\n\r\nGa naar de fitness apps pagina om te kijken welke applicaties momenteel te combineren zijn met de Senator iPlus.\r\n\r\n\r\nMAGNETISCH WEERSTANDSYSTEEM\r\nDe Senator iPlus is voorzien van een Magnetisch Systeem. De magneet zorgt voor een accurate en nauwkeurige training. Daarnaast voorziet het systeem je van een geruisloze training.\r\n\r\n\r\nWATTAGE\r\nDe senator biedt je voldoende uitdaging tijdens het sporten. De 32 verschillende weerstandniveaus en de mogelijkheid om de crosstrainer te belasten tot wel 999 Watt maken deze crosstrainer geschikt voor zowel de beginnende als meer ervaren crosser. In het wattageprogramma kun je in stappen van 5 oplopend van 5 tot 350 Watt trainen.\r\n\r\n\r\nHARTSLAG\r\nNaast de 12 voorgeprogrammeerde trainingsprogramma’s beschikt de Focus Fitness Senator iPlus over een hartslagprogramma dat het mogelijk maakt op je gewenste hartslag te blijven trainen. Middels de geïntegreerde hartslagsensoren kun je tijdens de training je hartslag in de gaten houden. Ook is het mogelijk om de crosstrainer optioneel uit te breiden met een hartslagband. Met een hartslagband ontvang je draadloos een nauwkeurigere hartslag.', 2),
(10, 'Crosstrainer - Focus Fitness Fox 5 HRC', 'categories/crosstrainer/cr6.jpg', 'De Focus Fitness Fox 5 HRC is dankzij de zeer hoge kwaliteit en betaalbare prijs niet voor niets een van onze bestverkochte en best beoordeelde crosstrainers. Mede dankzij het vliegwiel van 10 kg zorgt de Fox 5 ervoor dat je altijd op een natuurlijke en soepele manier kunt trainen. Of je de Fox 5 gebruikt voor revalidatie, in beweging wilt blijven of er intensief gebruik van wilt maken. Deze crosstrainer is geschikt voor iedereen! En dat blijkt: in het verleden heeft de Focus Fitness Fox 5 crosstrainer een Kieskeurig Review Award gewonnen dankzij de positieve reviews van consumenten!\r\n\r\n\r\nINCLUSIEF BORSTBAND\r\nDe Focus Fitness Fox 5 HRC onderscheidt zich van de normale Fox 5 doordat er een 5Hz borstband twv €25,00 (adviesprijs) wordt bijgeleverd. De crosstrainer is verder volledig gelijk aan de Fox 5. Dankzij de meegeleverde borstband is het mogelijk om draadloos op hartslag te trainen. Dit heeft vele voordelen: je hoeft niet de sensoren op de handvaten vast te pakken om de hartslag te meten, waardoor je je beter kunt concentreren op je training. Een borstband meet daarnaast nauwkeurig je hartslag, terwijl de handsensoren slechts een indicatie geven. Hierdoor heeft het HRC-trainingsprogramma meer toegevoegde waarde.\r\n\r\n\r\nLENGTEPAS\r\nDe lengtepas van een crosstrainer bepaalt in grote mate het comfort van je training. Een grotere lengtepas maakt de omwenteling langer, waardoor de beweging meer lijkt op je natuurlijke loopbeweging. De lengtepas van de Focus Fitness Fox 5 is 47 cm lang, waardoor de pas op deze crosstrainer zeer natuurlijk aanvoelt. De Fox 5 is zo ontworpen dat de voetpedalen in drie en de lengtepas in vier standen te verstellen is. Door deze aspecten is de Fox 5 uitermate geschikt voor intensief thuisgebruik.\r\n\r\n\r\nLAGE INSTAP\r\nDe Focus Fitness Fox 5 crosstrainer heeft een lage instap. Dit houdt in dat je eenvoudig vanaf de grond op het fitnessapparaat kunt stappen. Hierdoor is deze crosstrainer niet alleen geschikt voor sporters, maar ook zeker voor (revaliderende) senioren.\r\n\r\n\r\nTRAININGSPROGRAMMA’S\r\nDe Fox 5 is uitgerust met 12 voorgeprogrammeerde trainingsprogramma’s en de weerstand is elektronisch verstelbaar in 16 niveaus. De verschillende trainingsprogramma’s zijn onderverdeeld in voorgeprogrammeerde trainingen, hartslag programma’s en één manueel programma. Het is mogelijk om je vooruitgang bij te houden d.m.v. de ingebouwde fitheidstest. Zo kun je je vooruitgang en uithoudingsvermogen vergelijken en in de gaten houden. Kies het trainingsdoel dat bij jou past en ga trainen voor vetverbranding, spieropbouw of conditieverbetering.\r\n\r\n\r\nMATERIAAL\r\nDe zeer robuuste Fox 5 is door de extra zware constructie van 68 kg ijzersterk. Het fitnessapparaat is tevens waterpas verstelbaar. Hierdoor is de crosstrainer stabiel genoeg om tot het lichaamsgewicht van 150 kg te trainen. Het vliegwiel van de Fox 5 bevindt zich aan de achterkant van de crosstrainer. Hierdoor neemt deze crosstrainer relatief weinig plaats in beslag, wat dit een perfect apparaat voor thuisgebruik maakt. Het vliegwiel aan de achterkant zorgt ervoor dat de druk op de voorkant van de benen komt te staan, waardoor de houding sportief aanvoelt.\r\n\r\nVerder heeft de Fox 5 ergonomisch ontworpen handgrepen en is de extra lange lengtepas van 47 cm verstelbaar in hoogte. Ook is de Fox 5 voorzien van de onderhoudsvrije SKF-lagers. Hierdoor train je op deze crosstrainer geheel geruisloos.\r\n\r\n\r\nDISPLAY\r\nDankzij het overzichtelijk en eenvoudig bedienbare display kun je het hoogwaardige magnetische weestandsysteem elektronisch aansturen. Ook kun je op het display de volgende waardes zien:\r\n\r\nTijd\r\nAfstand\r\nSnelheid\r\nRPM\r\nCalorieverbruik\r\nHartslag\r\nWattage\r\n\r\nV-BELT AANDRIJVING\r\nDe Focus Fitness Fox 5 crosstrainer is voorzien van een ijzersterke v-belt. Thuis trainen met behulp van een v-belt heeft als grote voordeel dat het een fluisterstille training garandeert. Hierdoor kun je ook in de ochtend of ’s avonds laat gebruik maken van de Fox 5 crosstrainer.\r\n\r\n\r\nVERSCHILLEN\r\nHet verschil tussen de Fox 5 HRC en bijvoorbeeld de Focus Fitness Fox 3 is de stabiliteit van het apparaat. De Focus Fitness Fox 5 heeft een zwaarder eigen gewicht, waardoor het apparaat een stuk stabieler staat en zwaarder en intensiever belast kan worden. Ook het vliegwiel is zwaarder, waardoor de beweging soepeler zal aanvoelen. Het verschil tussen de Focus Fitness Fox 5 HRC en Fox 5 is de toevoeging van een hartslagband bij deze HRC. Verder is het apparaat precies hetzelfde. Bij de Focus Fitness Fox 5 iPlus is een interactieve trainingsmodule toegevoegd, waardoor het aantal trainingsprogramma’s wordt uitgebreid.', 2);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
