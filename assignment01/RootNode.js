var operators = {'+': ' plus ', '-': ' minus ', '*': ' times '};

var Root = function(operator) {
	this.value = operator;
};

Root.prototype = {
	evaluate: function() {
		return this.value;
	},

	convertToWords: function() {
		return operators[this.value]
	}
};

module.exports = Root;

