package;

import kha.Framebuffer;
import kha.Scheduler;
import kha.System;
import MyJsClass;

class Project {
	public function new() {
		#if js
		kha.LoaderImpl.loadBlobFromDescription({ files: ["example.js"] }, function(b: kha.Blob) {
			untyped __js__("(1, eval)({0})", b.toString());
			init();
		}, function(e: kha.AssetError) {});
		#else
		trace("This only works in js mode.");
		#end		
	}

	function init(): Void {
		System.notifyOnRender(render);
		Scheduler.addTimeTask(update, 0, 1 / 60);

		var myjs = new MyJsClass("bla");
		myjs.test(2.0, 3.0);
		trace(myjs.init_param);
	}

	function update(): Void {
		
	}

	function render(framebuffer: Framebuffer): Void {
		
	}
}