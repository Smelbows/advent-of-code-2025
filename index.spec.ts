import { greeting } from '.';

describe('index.js', () => {
  it('greets', () => {
    expect(greeting('Sarah')).toBe('Hello Sarah');
  });
});
