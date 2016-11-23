var converter = require('number-to-words');

var NumberNode = function(number) {
	this.value = number;
};

NumberNode.prototype = {
	evaluate: function() {
		return this.value;
	},

	convertToWords:function() {
		return converter.toWords(this.value)
	}
};

module.exports = NumberNode;
