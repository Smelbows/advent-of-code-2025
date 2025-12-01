day="$1"

# Abort if the day arg is not provided
if [ $# -lt 1 ]; then
  echo "Aborting: missing day argument"
  exit 1
fi

ts-node days/day$day/day.ts