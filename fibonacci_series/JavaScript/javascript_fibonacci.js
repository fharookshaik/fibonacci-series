const fs = require("node:fs");

const raw = fs.readFileSync(0, "utf8").trim();
if (!/^\d+$/.test(raw)) {
  process.exit(2);
}

const n = Number(raw);
if (!Number.isSafeInteger(n)) {
  process.exit(2);
}

let a = 0n;
let b = 1n;
const terms = [];

for (let i = 0; i < n; i += 1) {
  terms.push(a.toString());
  [a, b] = [b, a + b];
}

process.stdout.write(`${terms.join(" ")}\n`);
