function MyJsClass(init_param) {
	this.init_param = init_param;
}

MyJsClass.prototype.test = function(a, b) {
	console.log(a + b);
	console.log(this.init_param);
	return a + b;
}
