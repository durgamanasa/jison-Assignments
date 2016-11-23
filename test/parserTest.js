var assert = require('assert');
var parser = require('../assignment01/parser.js');

describe('Representation of Expression', function() {
	it('should represent the given exp with parentheses', function() {
		var parseTree = parser.parse('1+2');
		assert.equal(parseTree.evaluate(), '(1+2)')
	});

	it('should represent the given exp in words with parentheses', function() {
		var parseTree = parser.parse('1+2');
		assert.equal(parseTree.convertToWords(), '(one plus two)')
	});
});


