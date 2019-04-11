package;

@:native('MyJsClass')
extern class MyJsClass {
	public function new(init_param:String): Void;
	public function test(a:Float, b:Float): Float;
	public var init_param: String;
}