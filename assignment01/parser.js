var fs = require("fs");
var jison = require("jison");
var bnf = fs.readFileSync("../assignment01/parseTree.jison", "utf8");
var parser = new jison.Parser(bnf);

var parseTree = parser.parse('1+2');

console.log(parseTree,'parsetree');

console.log('Expression with parentheses --->', parseTree.evaluate());
console.log('Expression in words with parentheses --->', parseTree.convertToWords());


module.exports = parser;