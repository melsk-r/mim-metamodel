# Gegevens en gegevenstypering

## Een (enkelvoudig) gegeven

Een gegeven is *een vastgelegde uitspraak over een getypeerde eigenschap van een object*. Kenmerkend aan een gegeven zijn een aantal elementen:

1. Een gegeven is **vastgelegd**: op papier, in steen, in een digitale vorm. In elk van deze vormen van sprake zijn van meer of minder mate van vluchtigheid of persistentie: gegevens in een bericht zullen minder persistent zijn dan gegevens die duurzaam worden opgeslagen in een administratie.
2. Een gegeven is een **uitspraak**: zo'n uitspraak kan een bewering, stelling of waarneming zijn en zo'n uitspraak kan gedaan worden door een mens of een sensor. Ook kan zo'n uitspraak betrekking hebben op een berekening of afleiding.
3. Een gegeven gaat over een **object**: het gaat over *iets*: de objecten die relevant zijn in het domein waarover we gegevens verwerken.
4. Een gegeven betreft een **eigenschap** van dat object: het gegeven legt een uitspraak vast over een eigenschap die het object heeft. Dit kan zowel een kenmerk van het object zelf betreffen, als een relatie die een object heeft met een ander object.

> Vijf voorbeelden van een gegeven:
> - [Jan]'s leeftijd is 25
> - [Jan]'s BSN-nummer is "12345679"
> - [Jan]'s lengte is 180 centimeter"
> - [Jan]'s geslacht is «mannelijk»
> - [Jan] is getrouwd met [Marie]

In bovenstaande voorbeelden wordt met [Jan] de verwijzing bedoeld naar een specifiek object waarover uitspraken worden gedaan. De vijf uitspraken gaan over hetzelfde object.

## Een gegevenstype

Een gegevenstype is *een typering van gelijksoortige gegevens*. Met een gegevenstype beschrijven we hoe een afzonderlijk gegeven er uit ziet, waarbij bovenstaande vier elementen terugkomen. Van een gegevenstype wil je de volgende zaken weten:

1. Hoe refereer je naar het object waarover het gegeven gaat? Welke identificerende eigenschappen gebruik je daarbij?
2. Over welke eigenschap gaat zo'n gegeven? (dwz: relatie naar het CIM waarin de eigenschappen zijn beschreven)
3. Welke waarden zijn mogelijk bij dit gegeven, welke beperkingen gelden hierbij? En hoeveel waarden zijn (gelijktijdig) mogelijk voor de betreffende eigenschap?
4. Welke informatie is er over de uitspraak zelf nodig?
5. In welke vorm vindt de vastlegging logisch gezien plaats, zijn er beperkingen aan de manier waarop deze vastlegging mag plaatsvinden?
6. Is een uitspraak over deze eigenschap van het object verplicht om vast te leggen?

Vier verschillende soorten gegevenstypen zijn te onderscheiden:

1. Gegevenstypen waarbij sprake is van *letterlijke waarden*. Een gegevenstype over de eigenschap «leeftijd» of «BSN-nummer» zijn voorbeelden van dergelijke gegevenstypen.
2. Gegevenstypen waarbij sprake is van *classificerende waarden*. Bij dit gegevenstype is geen sprake van een letterlijke waarde en refereert de waarde aan een betekenis die meer is dan de letterlijke waarde zelf. Een gegevenstype over de eigenschap «geslacht» is een voorbeeld van een dergelijk gegevenstype.
3. Gegevenstypen waarbij sprake is van *complexe waarden*. Bij dit gegevenstype is sprake van een waarde die is opgebouwd uit enkele afzonderlijke onderdelen die gezamenlijk de complexe waarde vormen. Een gegevenstype over de eigenschap «lengte» is een voorbeeld van een dergelijke gegevenstype (in dit geval bestaat de complexe waarde uit een getal en een eenheid).
4. Gegevenstypen waarbij sprake is van een *waarde die refereert aan een ander object*. Bij dit gegevenstype is sprake van een waarde die een referentie bevat naar dit andere object.

In MIM 1.2 specificeren we de eerste drie soorten gegevenstypen met behulp van een attribuutsoort en het vierde gegevenstype met een relatiesoort. Merk daarbij op dat daarbij **ook** meegenomen moet worden tot welk objecttype de attribuutsoort of relatiesoort behoort, anders is niet bekend waarover het gegeven gaat en hoe hier naar verwezen moet worden.

## Een gegevensobject

Een gegevensobject is *een groep van gegevens over één of meerdere objecten*. Zet enkele gegevens bij elkaar, en je hebt een gegevensobject. Deze vastlegging van meerdere gegevens biedt ook mogelijkheden voor de vorm waarin de afzonderlijke gegevens zijn vastgelegd.

Zo kunnnen we de vijf gegevens hierboven ook vastleggen door de referentie naar [Jan] niet elke keer te herhalen:

> Een voorbeeld van een gegevensobject, bestaande uit vijf gegevens:
> - Er is een object [Jan]
> - De leeftijd (van dit object) is 25
> - Het BSN-nummer (van dit object) is "12345679"
> - De lengte (van dit object) is 180 centimeter"
> - Het geslacht (van dit object) is «mannelijk»
> - (dit object) is getrouwd met [Marie]

Een gegevensobject kan ook gegevens bevatten die over andere objecten gaan. Meta-gegevens bijvoorbeeld: gegevens *over* het gegevensobject zelf.

> - Het registratiemoment (van dit gegevensobject) was 12-03-2024 om 15:22:12
> - Het registratie-ID (van dit gegevensobject) is 1234567874

Ook kunnen er gegevens opgenomen worden in het gegevensobject over andere objecten die aan dit gegevensobject zijn gerelateerd.

> - De naam van de woonplaats (van dit object) is "Enschede"

## Een gegevensobjecttype

Een gegevensobjecttype is *een typering van gelijksoortige gegevensobjecten*. Met een gegevensobjecttype beschrijven we hoe een afzonderlijk gegevensobject er uit ziet, als groepering van gegevens. Van een gegevensobjecttype wil je de volgende zaken weten:

1. Welke gegevenstypen zijn onderdeel van dit gegevensobjecttype?
2. Welke gegevenstypen zijn beoogd voor de identificatie van het object waarover de gegevens gaat? (dwz: welke gegevenstypen vormen de sleutel)
3. Welke metagegevenstypen worden toegevoegd aan het gegevensobjecttype?
4. Welke gegevenstypen gaan over andere objecten dan het gegevensobjecttype zelf? En hoe is het toegangspad van dit object naar het object waarover deze objecttypen gaat? (zoals in het «naam van de woonplaats» voorbeeld: dit gegevenstype gaat niet over het hoofdonderwerp [Jan] maar over zijn woonplaats)
5. (Optioneel - relatie naar het CIM): welk objecttype is het *hoofdonderwerp* van dit gegevensobjecttype, dwz: over welk type objecten *gaan* gegevensobjecten van dit gegevensobjecttype?
