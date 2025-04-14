# Relaties

## Introductie

Objecten uit het domein dat we wensen te beschouwen, kunnen een relatie hebben met andere objecten. Dergelijke relaties wensen we typeren. Deze typering is zowel op het conceptuele niveau van belang als op het logische gegevensniveau. Deze typering zal echter wel verschillen, zoals in deze verkenning tot uitdrukking wordt gebracht.

## Voorbeelduitwerking

Als voorbeeld nemen we de arbeidsrelatie: de dienstbetrekking tussen een werkgever en een werknemer. Hiervoor is een begrippenkader uitgewerkt conform Artikel 610 van het Burgerlijk wetboek, Boek 7. Zie: [Begrippenkader Dienstbetrekking](https://geonovum.github.io/mim-metamodel/modellen/dienstbetrekking).

## Typering van een relatie op conceptueel niveau

### Wat we willen vastleggen

Bij de typering van de dienstbetrekking op conceptueel niveau willen we de volgende zaken kunnen beschrijven. (NB: niet alles wil je voor elke relatie(type) beschrijven, maar elk onderdeel komt een keer voor):

1. Welke typen objecten (Objecttypen) een rol spelen in de relatie;
2. Welke kardinaliteit daarbij geldt;
3. Hoe deze rollen worden benoemd (de naam van de rol);
4. Wat de naam is van de relatie;
5. Hoe de relatie wordt verwoord, dwz: hoe je hem zou uitdrukken in een zinnetje.

Voor een dienstbetrekking gaat het daarmee om de volgende zaken:

1. In een dienstbetrekking spelen de objecttypen «Natuurlijk persoon» en «Organisatie» een rol;
2. Daarbij geldt dat een organisatie één of meerdere natuurlijke personen in dienst heeft, en een natuurlijk persoon bij meerdere organisatie kan werken;
3. Een «Natuurlijk persoon» vervult de rol van «Werknemer» in deze relatie, een «Organisatie» vervult de rol van «Werkgever»;
4. De relatie heeft de naam "dienstbetrekking";
5. De relatie kan op de volgende wijzen worden verwoord:
   - «Werknemer» *werkt voor* «Werkgever»;
   - «Natuurlijk persoon» *heeft werkgever* «Organisatie»;
   - «Organisatie» *heeft* «Natuurlijk persoon» *in dienst*.

### Uitgedrukt in FBM

Bovenstaande typering kun je uitdrukken in FBM met onderstaand figuur.

![](dienstbetrekking-fbm.svg)

## Uitgedrukt in MIM

De typering van de dienstbetrekking is in MIM (nu) niet helemaal goed uit te drukken. Het meest in de buurt komt onderstaand figuur.

![](dienstbetrekking-mim.svg)

Daarbij valt het volgende op:

1. Hoewel in bovenstaand figuur de naam van de relatie ("dienstbetrekking") en ook één van de verwoordingen ("werkt voor") zijn opgenomen, kan dit volgens het metamodel van MIM 1.2 nu niet. De verwoording is namelijk in het metamodel gelijk aan de naam van de relatie, en er mag maar 1 naam zijn;
2. Hoewel sprake is van 1 type relatie, moet dit in MIM als twee losse relatiesoorten beschreven worden (waarbij ook maar aan 1 van de relaties de relatieklasse kan worden gehangen);
3. Er is slechts ruimte voor één voorwoording OF naam. In dit geval is één van de twee verwoordingen weggevallen.
