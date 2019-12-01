package electron.main;
/**
	@see http://electronjs.org/docs/api/touch-bar-label
**/
@:jsRequire("electron", "TouchBarLabel") extern class TouchBarLabel extends js.node.events.EventEmitter<electron.main.TouchBarLabel> {
	/**
		A `String` representing the label's current text. Changing this value immediately updates the label in the touch bar.
	**/
	var label : String;
	/**
		A `String` hex code representing the label's current text color. Changing this value immediately updates the label in the touch bar.
	**/
	var textColor : String;
	function new(options:{ /**
		Text to display.
	**/
	@:optional
	var label : String; /**
		Hex color of text, i.e `#ABCDEF`.
	**/
	@:optional
	var textColor : String; }):Void;
}
@:enum abstract TouchBarLabelEvent<T:(haxe.Constraints.Function)>(js.node.events.EventEmitter.Event<T>) to js.node.events.EventEmitter.Event<T> {

}
