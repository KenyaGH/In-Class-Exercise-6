declare -A stock

office_inventory=(
  "pen"
  "pen"
  "pen"
  "pencil"
  "pencil"
  "notebook"
  "notebook"
  "notebook"
  "notebook"
  "stapler"
  "paper"
  "paper"
  "paper"
  "paper"
  "envelope"
  "envelope"
  "envelope"
  "tape"
  "tape"
  "scissors"
)

for item in "${supplies[@]}"; do
  ((stock["$item"]++))
done

# Print results
echo "Final Stock:"
for key in "${!stock[@]}"; do
  count=${stock[$key]}
  if [ "$count" -le 2 ]; then
    echo "$key: $count (RESTOCK NEEDED)"
  else
    echo "$key: $count"
  fi
done