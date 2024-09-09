queryfile="$1"
subjectfile="$2"
outputfile="$3"
blastn -query "$queryfile" -subject "$subjectfile" -outfmt "6 pident length qlen slen" | \
awk '$1 == 100' > "$outputfile"
perfect_match=$(wc -l < "$outputfile")
echo number of perfect matches: $perfect_match