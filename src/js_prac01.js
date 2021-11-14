class Person {
  constructor(age, name) {
    this.age = age;
    this.name = name;
  }

  say() {
    console.log(`Hi, my name is ${this.name} and im ${this.age} years old`);
  }
}

async function main() {
  const j = { x: 1, z: 'z' };
  console.log(j.y);
  // the last keys value takes precedence in the spread operator
  const j2 = { x: 2, ...j };
  console.log(j2);
  const j3 = { ...j, ...{ x: 2 } };
  console.log(j3);
  const j4 = { ...j, y: 2, x: 5 };
  console.log(j4);
  const p = new Person(1, 'bob');
  const p2 = new Person(1, 'bob');
  const p3 = new Person(1, 'sam');
  p.say();
  // native sets are very basic. only works with basic values, not list,json,obj
  const pset = new Set([p, p2, p3]);
  console.log(pset);
  const nset = new Set([1, 1, 3]);
  console.log(nset);
  const jset = new Set([{ x: 1 }, { x: 1 }, {}, {}]);
  console.log(jset);
}

main();
