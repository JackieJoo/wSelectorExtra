
let _ = require( 'wselectorextra' );

/**/

let src = { a : { b : 1 }, c : { d : 2 } };
let got = _.entityProbe({ src, recursive : 1 });

console.log( got );
/*
{ src: { a: { b: 1 }, c: { d: 2 } },
  recursive: 1,
  result:
   [Object: null prototype] {
     b:
      [Object: null prototype] { times: 1, values: [Array], having: [Array], notHaving: [Array] },
     d:
      [Object: null prototype] { times: 1, values: [Array], having: [Array], notHaving: [Array] } },
  log: 'Probe : 2\n  *.b : 1 1\n  *.d : 1 2\n',
  total: 2,
  all: [ { b: 1 }, { d: 2 } ],
  title: 'Probe' }
*/
