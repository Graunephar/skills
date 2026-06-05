# C: FEEDBACK-LOOP — Kør Generator + Kritiker igen og igen

Loopet stopper **aldrig** af sig selv. Det kører indtil brugeren har navne de er glade for.

Hver iteration er identisk:
1. **Generator** — kør øvelser, vis arbejdet
2. **Kritiker** — evaluer eksplicit per navn
3. **Præsentér** de 15 stærkeste
4. **Få feedback**
5. **Tilbage til 1**

---

## Hvad der sker efter feedback

Når brugeren reagerer på en præsentation — uanset hvad de siger — starter en ny fuld iteration.

**Før Generator kører igen, skriv altid denne recap:**

```
=== ITERATION [N] ===

Produkt (3 linjer):
- [hvad det er]
- [hvem det er til]
- [tonen / referencer]

Afvist hidtil og hvorfor:
- [navn] — [afvisningsgrund]
- [navn] — [afvisningsgrund]
- [mønster der ikke virker]

Hvad der virker hidtil:
- [navn på kandidatlisten] — [hvorfor]
- [retning der trak]

Øvelser denne runde (vælg 4-5 der ikke dominerede sidst):
[ ] Øvelse X
[ ] Øvelse Y
[ ] Øvelse Z
```

Kør derefter Generator med de valgte øvelser — **med fuldt output-format**.
Kør derefter Kritiker på **alle** kandidater — **med eksplicit evaluering**.

---

## Bredde-sikring mellem iterationer

Iterationer må ikke konvergere mod varianter af det samme.

**Tjek inden Generator starter:**
- Er alle navne i forrige runde fra samme navnetype? → skift navnetype denne runde
- Er alle navne enkeltord? → prøv sammensætninger
- Er alle navne engelske? → prøv fremmedsprog, etymologi
- Har ingen øvelser 2, 3, 6, 8 kørt endnu? → tving dem

**Minimum krav per iteration:**
- Mindst 2 øvelser der IKKE dominerede forrige runde
- Mindst ét navn fra en menneskelig placeholder-kombination
- Mindst ét navn fra en PO-provokation
- Mindst ét navn fra Random Stimulus

---

## Læs reaktionen rigtigt

**"Jeg kan lide X"**
→ Spørg: "Hvad er det ved X — lyden, hvad det betyder, at det er uventet?"
→ Brug svaret til at kalibrere retning — **ikke** til at generere varianter af X
→ Start ny fuld iteration med den kalibrering

**"Ingen af dem virker"**
→ Spørg: "Hvad er galt — tonen, for abstrakt, for konstrueret, noget andet?"
→ Start ny fuld iteration med helt nye øvelser
→ Skift navnetype fuldstændigt

**"X er ok men ikke helt"**
→ Spørg: "Hvad mangler den?"
→ Tilføj svaret til brief-recap under "hvad der mangler"
→ Start ny fuld iteration

**"Kør igen" / "mere bredde" / ingen klar reaktion**
→ Start ny fuld iteration med mindst 3 nye øvelser
→ Ingen yderligere spørgsmål — bare kør

---

## Hvornår stopper loopet

Fortsæt indtil:
- Brugeren har 2-3 navne de er begejstrede for, **eller**
- Brugeren selv siger stop

Afslut med at minde om:
1. Tjek domænetilgængelighed (.com, .io, .app)
2. Kør en varemærke-søgning
3. Test det højt i en sætning med en person uden for projektet
4. Sov på det
