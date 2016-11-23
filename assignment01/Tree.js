var Tree = function(leftChild, root, rightChild) {
	this.leftChild = leftChild;
	this.root = root;
	this.rightChild = rightChild;
};
Tree.prototype = {
	evaluate: function() {
		return ['(', this.leftChild.evaluate(), this.root.evaluate(), this.rightChild.evaluate(), ')'].join('');
	},

	convertToWords: function() {
		return ['(', this.leftChild.convertToWords(), this.root.convertToWords(), this.rightChild.convertToWords(), ')'].join('');
	}
};

module.exports = Tree;