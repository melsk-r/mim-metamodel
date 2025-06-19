We zijn het eens over het volgende (en zijn er enkele discussiepunten waar we een keuze te maken hebben). Voorstel is om deze nog 1x te behandelen om een gezamelijk vertrekpunt te creeeren en daar waar we het niet (grotendeels) eens zijn, dit te inventariseren.

<hr/>

*[Lennart]* 0. Een CIM gaat over een bepaald perspecief op de werkelijkheid waar we informatie over willen weten en de definitie en specificatie daarvan en gaat niet over de gegevens zelf die in een bepaalde administratie of gegevensuitwisseling zitten. Natuurlijk, we gaan gegevens willen over de dingen uit de werkelijkheid dan er daar een heel sterke relatie tussen ons model van de werkelijkheid en ons gegevensmodel in een administratie, maar het zijn beide aparte beschouwingsniveaus.

*[Marco]* Eens. We hebben hiervoor het begrip «beschouwingsdomein» geintroduceerd als tegenhanger van het begrip «verwerkingsdomein»

*[Lennart]* MIM visie: om het verschil helder te maken kan je twee kanten op:<br/>
a) aparte begrippen en voorkeurstermen gebruiken voor de objecten uit de werkelijkheid en de gegevens erover. Bv. objecttype en gegevensobjecttype, of domeinobjecttype en gegevensobjecttype of<br/>
b) hetzelfde woord objecttype op vele plekken gebruiken en telkens de context waar in het gebruikt wordt aangeven: een objecttype in een CIM en een objecttype in een LGM en een objecttype in in een technisch schema.

*[Marco]* Bijna eens. Hierin vind ik het ongelovelijk belangrijk om onderscheid te maken in de notatievorm zoals deze wordt gebruikt door modelleurs en de formele ontologie van ons metamodel. Wat mij betreft is (b) prima voor de notatievorm (dat garandeert ook backwardscompatibility), maar het moet w.m.b. (a) zijn voor de formele ontologie. Hier hebben modelleurs dan dus niet last van, maar kunnen zij wel gebruik van maken.

*[Marco]* Voor het technisch schema moeten we echt nog even goed kijken. Het hangt er vanaf wat je bedoelt. Zo is het technisch schema van een XSD al gedefinieerd. Dan heb je echt te maken met taalbindingen: hoe vertaal je een logisch model naar een XSD? In veel technische talen kun je overigens alleen het logische model transformeren naar een technisch model (omdat het technische model alleen over vorm gaat, niet over semantiek). Uitzondering is Linked Data, die een expliciet onderscheid maakt tussen vorm (SHACL) en semantiek (OWL/RDFS). Maar ook daar worden dan dus andere termen gebruikt: Een mim:Gegevensobjecttype vertaalt naar een sh:NodeShape en een mim:Objecttype vertaalt (grofweg) naar een owl:Class.

*[Marco]* Tenslotte kan ik mij “punning” voorstellen: dat je een model maakt dat zowel een CIM als een LGM is, omdat je simpelweg geen onderscheid wilt maken en je jou logische model zo strikt mogelijk wilt relateren aan het beschouwingsdomein. In dat geval is dus 1 modelelement zowel een mim:Objecttype als een mim:Gegevensobjecttype. Dat moet wat mij betreft ook mogelijk zijn!

*[Lennart]* Merk op dat als je cf NL-SBB begrippen gaat definieren woord objecttype op vele plekken wordt gebruikt, maar niet hetzelfde betekent, dat je dan een andere definitie hebt en dezelfde  voorkeursterm niet 2x mag gebruiken voor iets wat anders is, zeker niet als het sterk met elkaar te maken heeft, want dat is verwarrend. Daarom kiezen we voor a).
[MB] Helemaal eens. Met dus de opmerking dat je in de notatievorm het best wel anders zou mogen doen, maar dan betekent dus de term “objecttype” als stereotype in UML dus niet hetzelfde als het begrip «objecttype»! Je moet dan de context weten, dus dan krijg je: (I) het UML-stereotype “objecttype” bij een model van het type «CIM» komt overeen met het begrip «objecttype» en (II) het UML-stereotype “objecttype” bij een model van het type «LGM» komt overeen met het begrip «gegevensobjecttype». Dat is feitelijk hoe MIM 1.2 het ook bedoelt, maar dat hebben we nooit formeel vastgelegd, en zou w.m.b. de grote verbetering van MIM 2.0 zijn m.b.t. het metamodel

*[Lennart]* Discussiepunt: je zou bij de uitwerking van een model het mogelijk kunnen maken om <<objecttype>> in een LGM te laten staan (maar in H2 van MIM waar onze definities staat kan dat niet). Het lijkt beter om aparte woorden te gebruiken en hierna consistent te gebruiken bij het modelleren van modelelementen. Dit kan ook bijna niet anders, want bv. 'mogelijk geen waarde' hoort echt alleen bij een LGM en niet bij een CIM. In een CIM heeft iedereen een geboortedatum, in een LGM van een administratie kan het zijn dat ie ontbreekt.

*[Marco]* Zie hierboven: ja, ik zou dat wel willen voorstellen als mogelijkheid, omdat we onderscheid willen tussen notatievorm en formeel metamodel wat mij betreft. Dat maakt het ook veel makkelijker denk ik voor de mensen die MIM 2.0 willen adopteren.

<hr/>

*[Lennart]* 1. In een CIM modelleren we eigenschappen van objecten en relaties tussen objecten.

*[Marco]* Eens. Alleen ben ik er zelf nog niet helemaal uit of een relatie tussen objecten ook gezien kan worden als een eigenschap. Of dat bv een relatierol een eigenschap is (maar de relatie zelf niet – dat lijkt logischer. Moeten we dus nog wat verder uitwerken.

<hr/>

*[Lennart]* 2. In een LGM modelleren we gegevens. Een gegeven is: zie definitie in MIM (is data over een eigenschap van een object, je moet het object en de eigenschap dus weten, anders weet je te weinig).  

*[Marco]* Eens

<hr/>

*[Lennart]* 3. Een logisch gegevensmodel beschrijft welke gegevens er zijn (of zouden moeten komen als het nog nieuwbouw is, zodra gerealiseerd zijn ze er). Dus niet een wens-wereld, maar hoe het echt is, de gegevens die er echt zijn, en echt over de lijn gaat.

*[Lennart]* Discussiepunt: als het CIM dus definities kent en er geen gegevens zijn die daar precies mee overeenkomen dan is de gegevensdefinitie van het gegevenstype in het LGM net anders dan de definitie van de eigenshcap het modelelement in het CIM  

*[Marco]* Een gegeven heeft geen definitie, een gegeven heeft een specificatie. Definitie veronderstelt de verbinding met het beschouwingsdomein, dat doe je niet in een LGM, dat doe je in een CIM. Door de verbinding tussen een LGM en een CIM te leggen, maak je duidelijk hoe een gegeven zich verhoudt tot het beschouwingsdomein. De discussie zit er voor mij in of een gegeven altijd 1-op-1 moet mappen op een eigenschap, of dat er een n:m mapping mag zijn, en zo ja: hoe je dan specificeert hoe dat in zijn werk gaat…

<hr/>

*[Lennart]* 4. We hebben het zelden (maar niet nooit) over 1 los gegeven of gegevenstype die we uitwisselen. Meestal als we 10 gegevens uitwisselen dan modelleren we er bv. 5 bij elkaar en 5 anderen ook bij elkaar maar wel apart van de eerste 5 en hierna leggen we er vaak nog een relatie tuseen. Bv. de gegevens over een plaats en de gegevens over een persoon en daarna zeggen we dat de plaats de woonplaats is van de persoon.
[MB] Eens. Reden is dat je moet specificeren over welk object een gegeven gaat, en daarvoor heb je (andere) gegevens nodig. De enige situatie waarbij dit niet hoeft, is als dit vanuit de context wordt geleverd. Denk bv aan een thermometer: die levert exact 1 gegeven, namelijk de temperatuur. Het object is hier impliciet, en betreft de plek waar deze thermometer zich bevind. Als je dat niet weet, weet je niet waarover je het hebt. En ook mis je dan metagegevens, zoals welke thermometer gaat het om (of is het een persoon die het afleest van een thermometer), en op welk moment is de meting gedaan.

*[Lennart]* De verzameling van gegevenstypen die we bij elkaar modelleren noemen we een gegevensobjecttype.

*[Marco]* ik zou liever spreken: “de verzameling van gegevenstypen waarvan de gegevens als één gegevensobject beheren”, anders is onduidelijk wat “bij elkaar modelleren” betekent. Ook gegevenstypen in hetzelfde gegevensmodel zijn “bij elkaar gemodelleerd”, maar dat is niet wat je bedoeld denk ik.

*[Lennart]* Belangrijk: je kan allerlei doorsnedes en verzamelingen van gegevenstypen maken. Zo kan je
- bv. alle gegevens over de woonplaats in het ene gegevensobjectype modelleren en alle gegevens over een natuurlijk persoon modelleren in een ander gegevensobjecttype. Dit is een good practise, om in een LGM ook het CIM te volgen, en in het LGM nog wat extra metagegevens erbij op te nemen (registratiemoment, begin geldigheid, enz).

*[Marco]* Eens.

*[Lennart]* - bv. een gegevensobject maken over een natuurlijk persoon en de woonplaats 'Apeldoorn' hier bij in te modelleren. Bv. naam: lennart, woonplaats: apeldoorn. In het CIM zou dit best wel eens Natuurlijk Persoon met een naam kunnen zijn en een relatie naar een Plaats, een Plaats die in dit geval de woonplaats is van Lennart (en in een ander geval de vestigingsplaats van een vestiging van een bedrijf). De naam van de woonplaats van Lennart en de naam van de natuurlijk persoon kunnen we dus ook best bij elkaar modelleren in hetzelfde gegevensobjecttype. Het moet dan wel duidelijk zijn dat: de naam van de plaats is en tegelijkertijd de woonplaats aangeeft van Lennart. Het gegevensobject gaat dus over Lennart, en zijn woonplaats, en gaat niet over Apeldoorn. We modelleren dan dus in hetzelfde gegevensobjecttype:<br/>
1. de naam van natuurlijk persoon: attribuuttype 'naam'
2. de naam van de plaats, zijnde de woonplaats is van Lennart: attriuuttype 'woonplaatsnaam'

*[Marco]* Eens, en aanvullend: van belang is dat wel dat dit nieuwe gegevenstype een extra specificatie krijgt, waaruit het “pad” duidelijk is van het hoofdonderwerp ([Lennart] in dit geval) naar het andere onderwerp ([Apeldoorn]). Dit “pad” zou dan beschreven moeten worden in termen van objecten, eigenschappen en relaties (uit het CIM).

*[Lennart]* - bv. een gegevensobject waarbij het niet duidelijk is dat het over 1 hoofdonderwerp gaat, dat is een anti-patroon. Als we bv. in 1 gegevensobjecttype 'plaatsnaam' en 'persoonnaam' modelleren dan moeten gaan raden. Gaat het om de woonplaats van de persoon die deze naam heeft, of gaat het over de meest voorkomende naam in de plaats? Dit willen we niet raden, daarom kan je niet zomaar alle gegevenstypen bij elkaar in 1 gegevensobject mikken.
Daarom zeggen we: elk gegevensobjecttype heeft 1 objecttype uit het CIM als hoofdonderwerp.

*[Marco]* Eens! Wel kan het zijn dat dit hoofdonderwerp impliciet is, dwz: er is geen identificatie waaruit blijkt welk hoofdonderwerp dit precies is. Zie mijn voorbeeld van de thermometer.

<hr/>

*[Lennart]* 5. Soms is er een behoefte om van alle gegevens die over hetzelfde hoofdonderwerp gaan aan te geven dat bepaalde hiervan bij elkaar horen. Zo kan je bv. bij alle gegevens over een natuurlijk persoon:
- de bsn modelleren
- de naam gegevens bij elkaar modelleren in een modelelement 'naamgegevens'
- de geboortegegevens bij elkaar modelleren in een modelelement 'geboortegegevens', dit zijn deels gegevens over de plaats waarin de persoon geboren is, maar ook een geboortedatum.
Merk op dat we hier maar 1 gegevensobjecttype zien (met daarbinnen een nadere onderverdeling, en die onderverdeling is zelf niet een gegevensobjecttype).

*[Marco]* Het is even de vraag hoe je een dergelijke onderverdeling ziet. Is dit puur een groepering van gegevenstypen, dwz: in de structuur van de gegevens zie je dit onderscheid niet meer terug, OF is het een groepering van gegevens, dwz: in de structuur van de gegevens zie je het onderscheid wel terug. Dit laatste wordt in de presentatie van Pano een “gegevenstype met een complexe waarde” genoemd. Die complexe waarde is dan dus inderdaad nog steeds niet getypeerd als gegevensobjecttype, ik zou hem zelf typeren als een gegevenstype met een complex waardetype (in MIM 1.2 termen is dat een gestructureerd datatype)

*[Lennart]* In een CIM zal je zeggen: 1 objecttype Natuurlijk persoon met een geboortedatum en 1 objecttype Plaats met een naam en een relatie tussen beide objecttypen: geboorteplaats.

*[Lennart]* In een LGM kan je best zeggen: 1 gegevensobjecttype Natuurlijk persoon met daarin een geboorteplaats (eigenlijk de naam ervan, dus geboorteplaatsnaam), maar netter zou zijn om in het LGM het CIM meer na te bootsen en de eigenschappen van Plaats consistent 1 op 1 hetzelfde te houden. Dan krijg je bv. een gegevensgroep 'geboorteplaats' (komt overeen met de rol van Plaats in het CIM) met een gegevensgroeptype Plaats met daarin een attribuuttype 'naam'. Anders gezegd, de rol geboorteplaats en de naam van de Plaats kan je platslaan in een LGM naar geboorteplaatsnaam (concatteneren) en ik zal je niet tegenhouden maar er is ook nette oplossing mogelijk en die willen we in ieder geval mogelijk maken.

*[Lennart]* Discussiepunt: je zou ook heel strikt in de leer kunnen zijn en zeggen: elk gegevensobjecttype in een LGM mag maar over 1 (domein)objecttype uit het CIM gaan en nooit over 2 of meer.

*[Marco]* Dat kan niet, want dan zou geboorteplaatsnaam niet mogen, want dat is een ander objecttype dan natuurlijk persoon. Wat wel kan is dat een gegevensobjecttype in een LGM maar over één hoofdonderwerp gaan, er dus bij extensie dus maar betrekking hebben op één objecttype als hoofdonderwerp.

<hr/>

*[Lennart]* 6. Omdat elk gegevensobject, in een administratie, een representatie is van een object uit de werkelijkheid en de deze werkelijkheid niet uit het oog willen verliezen (want wat is het gegevensobject dan nog he, over welk object in de werkelijkheid gaat deze?) ... stellen we de eis dat elk gegevensobject betrouwbaar te herleiden moet zijn naar een object uit de werkelijkheid (anders gezegd: als er een CIM is, naar het CIM). We moeten het object uit de werkelijkheid kunnen identificeren. We moeten het gegevensobject betrouwbaar kunnen matchen met een object uit de werkelijkheid. Daar zijn verschillende aanpakken voor, maar dit is wel een eis.

*[Marco]* Niet helemaal. Het hoeft niet zo te zijn dat je hem zou moeten kunnen identificeren, als dat niet nodig is (of niet kan). Maar het moet wel zo zijn dat zo’n hoofdonderwerp bestaat, maar soms kun je hem niet identificeren. Denk bv aan een signalement van een verdachte. Dat is juist zo’n beetje het enige dat je niet kunt, is het hoofdonderwerp identificeren… En overigens bestaan is ook een beetje twijfelachtig, want hoewel je bij dit signalement er vanuit gaat dat de persoon waarover het signalement gaat bestaat, kan het best zijn dat dit signalement opgesteld is op basis van verklaringen die -achteraf gezien- niet correct zijn, en dat dus de persoon waarover het signalement gaat helemaal niet bestaat…
