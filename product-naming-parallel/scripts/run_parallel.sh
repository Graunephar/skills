#!/bin/bash
# Kører alle 11 navneøvelser parallelt og samler output

SKILLS_DIR="$(cd "$(dirname "$0")/.." && pwd)"
CANDIDATES_DIR="/tmp/naming-candidates"
BRIEF_FILE="/tmp/naming-brief.txt"

mkdir -p "$CANDIDATES_DIR"
rm -f "$CANDIDATES_DIR"/ex*.txt

echo "Spawner 11 øvelsesagenter parallelt..."

for i in 01 02 03 04 05 06 07 08 09 10 11; do
    EXERCISE_FILE=$(ls "$SKILLS_DIR/references/exercises/ex${i}_"*.md 2>/dev/null | head -1)
    if [ -f "$EXERCISE_FILE" ]; then
        echo "  → Agent $i: $(basename $EXERCISE_FILE .md)"
        (
            claude -p "Du er en navngivningsagent. Din opgave: generer rånavnekandidater.

BRIEF:
$(cat "$BRIEF_FILE")

DIN ØVELSE:
$(cat "$EXERCISE_FILE")

OUTPUT: Kun navne, ét per linje, ingen forklaring, ingen tomme linjer." \
            > "$CANDIDATES_DIR/ex${i}.txt" 2>/dev/null
        ) &
    fi
done

echo "Venter på alle agenter..."
wait

echo "Samler kandidater..."
cat "$CANDIDATES_DIR"/ex*.txt 2>/dev/null | \
    grep -v '^$' | grep -v '^#' | sort -u \
    > "$CANDIDATES_DIR/bruttoliste.txt"

COUNT=$(wc -l < "$CANDIDATES_DIR/bruttoliste.txt")
echo "✓ Bruttoliste: $COUNT unikke kandidater"
echo ""
echo "Per øvelse:"
for i in 01 02 03 04 05 06 07 08 09 10 11; do
    [ -f "$CANDIDATES_DIR/ex${i}.txt" ] && \
        echo "  ex${i}: $(grep -c . $CANDIDATES_DIR/ex${i}.txt 2>/dev/null || echo 0)"
done
