package electron;
/**
	@see http://electronjs.org/docs/api/structures/input-event
**/
typedef InputEvent = {
	/**
		An array of modifiers of the event, can be `shift`, `control`, `alt`, `meta`, `isKeypad`, `isAutoRepeat`, `leftButtonDown`, `middleButtonDown`, `rightButtonDown`, `capsLock`, `numLock`, `left`, `right`.
	**/
	var modifiers : Array<String>;
}
