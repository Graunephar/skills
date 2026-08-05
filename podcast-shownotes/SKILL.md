---
name: podcast-shownotes
description: Skriv shownotes til podcasten "Idioter med Computere" i husets stil. Læser altid det nyeste RSS-feed for at lære tonen fra tidligere afsnit, beder om afsnittets rundown (typisk et Google Doc), går det igennem segment for segment, spørger ind til dine takes hvor rundownet er tyndt, og skriver så shownotes du kan copy-paste. Brug når Daniel eller Magnus siger "lav shownotes", "shownotes til afsnit X", "rundown til afsnittet", eller deler et rundown-dokument.
---

# Podcast shownotes — Idioter med Computere

Skriv shownotes til ét afsnit i husets stil. Du er ikke en generator der spytter en skabelon ud — du læser tidligere afsnit for tonen, forstår hvad DETTE afsnit handler om, og spørger ind hvor rundownet er for tyndt til at skrive noget ærligt.

Fakta om podcasten (brug dem, opfind ikke nye):
- **RSS-feed:** `https://anchor.fm/s/109da48b4/podcast/rss`
- **Værter:** Magnus & Daniel
- **Hjemmeside:** https://idioter.med.computer
- **Feedback/spørgsmål:** feedback@idioter.med.computer
- **Tilbagevendende segment:** "Hvorfor finder vi os i det?" (en digital ting der irriterer)
- Sprog: dansk. Tone: afslappet, selvironisk, klog uden at være smart. **Anti-AI-slop** — ingen emoji-raketter, ingen "spændende nyheder", ingen buzzwords.

## Loopet (kør i rækkefølge)

### 1. Læs altid det nyeste feed først
Hent feedet hver gang (det opdaterer sig):

```bash
curl -sL "https://anchor.fm/s/109da48b4/podcast/rss" -o /tmp/imc-feed.xml
```

Læs ALLE tidligere afsnits `<description>` igennem. Det er din stilguide — du kalibrerer intro-længde, tone, hvordan links grupperes, sætningsrytme. Læg mærke til:
- Hvert afsnit åbner med "I dette afsnit …" og beskriver segmenterne i rækkefølge, afslappet.
- "Hvorfor finder vi os i det?" nævnes typisk som opvarmer.
- Derefter **Referencer og links:** med kilder grupperet under små kursiv-overskrifter.
- Slutter med hjemmeside + feedback-mail.
- Find det højeste afsnitsnummer, så du ved hvad det næste hedder ("Afsnit N: …").

### 2. Skaf rundownet
Rundownet er kilden til hvad afsnittet indeholder. Hvis brugeren allerede har delt det (et Google Doc-link, indsat tekst, en fil) — brug det. Hvis ikke: **spørg efter det** ("Har du et rundown til afsnittet? Del gerne Google Doc-linket eller indsæt det.").

Google Docs læses med Drive-værktøjet `read_file_content` (fileId = id'et fra doc-URL'en). Docs kan indeholde "SE IKKE MAGNUS"/"SE IKKE DANIEL"-sektioner — det er quiz/surprise-segmenter den ene vært udsætter den anden for. De hører med i afsnittet, men beskriv dem som en quiz, ikke som et selvstændigt hovedemne, og spoil ikke svaret i shownotes.

### 3. Gå rundownet igennem — segment for segment
For hvert segment i rundownet, vurdér: **er der nok her til at skrive noget ærligt?**

- **Godt beskrevet** (klar vinkel, konkret pointe, evt. links) → skriv det, spørg ikke ind.
- **Tyndt / ukonkret / bare et stikord** (fx bare "Facebook" eller "NCIS s2e5") → **spørg: "Hvad er jeres take på det her?"** Én kort afklaring pr. tyndt segment. Vent på svar før du skriver det segment.

Bland ikke det hele i ét stort spørgsmål — spørg målrettet kun til de segmenter der mangler kød. Ting rundownet allerede forklarer, spørger du ikke om.

Ting der IKKE kom med i afsnittet (brev der blev sprunget over, emne der udgik) — spørg hvis du er i tvivl, og **udelad dem** fra shownotes.

### 4. Skriv shownotes
Match feedets stil præcist. Struktur:

```
### Afsnit N: <titel>

I dette afsnit … <2-5 korte afsnit der beskriver segmenterne i rækkefølge,
i "vi"-form, afslappet. Nævn "Hvorfor finder vi os i det?" som opvarmer hvis
det er med. Beskriv, forklar ikke i dybden — teas, uden jargon der kræver at
man har lyttet.>

**Referencer og links:**

*<lille kursiv gruppeoverskrift>:*
- <kilde> — <url>

Hjemmeside: https://idioter.med.computer
Feedback og spørgsmål: feedback@idioter.med.computer
```

Regler for teksten:
- Ingen intern jargon uforklaret. Hvis rundownet bruger et fagudtryk ("paperclip maximizer"), skriv hvad det ER i stedet, så en lytter der ikke har hørt afsnittet forstår det.
- Kun links der faktisk hører til afsnittet. Mangler et link til et emne, opfind det ikke — skriv at det mangler og bed om URL'en.
- Grupper links under små kursiv-overskrifter som i feedet.

### 5. Iterér på feedback
Brugeren giver feedback ("den er for tør", "Facebook-vinklen er samfundskritisk, ikke personlig", "drop det brev"). Ret målrettet og vis den fulde opdaterede version igen. Gentag til de er gode. Små, kirurgiske rettelser — lav ikke hele teksten om når kun én linje skal ændres.

## Til sidst
Tilbyd HTML-versionen (klar til Anchor/Spotify) hvis brugeren vil have den — feedets `<description>` er HTML (`<p>`, `<strong>`, `<em>`, `<a>`, `<ul>`).
