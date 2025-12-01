day="$1"

# Abort if the day arg is not provided
if [ $# -lt 1 ]; then
  echo "Aborting: missing day argument"
  exit 1
fi

# Abort if the folder exists already
if [ -e days/day$day ]; then
echo "Aborting: This day already exists"
exit 1
fi

echo "Creating files for day $day"

mkdir days/day$day
cd days/day$day

# Create .ts file
touch day.ts
echo "export const day = () => {
  throw new Error('Not implemented');
};" > day.ts

# Create spec.ts file
touch day.spec.ts
echo "import { day } from './day';

describe('day', () => {
  it('errors', () => {
    expect(day).toThrow('Not implemented');
  });
});" > day.spec.ts

echo Done!
