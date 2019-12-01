package electron.renderer;
/**
	@see http://electronjs.org/docs/api/desktop-capturer
**/
@:jsRequire("electron", "desktopCapturer") extern class DesktopCapturer extends js.node.events.EventEmitter<electron.renderer.DesktopCapturer> {
	/**
		Resolves with an array of `DesktopCapturerSource` objects, each `DesktopCapturerSource` represents a screen or an individual window that can be captured.
	**/
	static function getSources(options:{ /**
		An array of Strings that lists the types of desktop sources to be captured, available types are `screen` and `window`.
	**/
	var types : Array<String>; /**
		The size that the media source thumbnail should be scaled to. Default is `150` x `150`. Set width or height to 0 when you do not need the thumbnails. This will save the processing time required for capturing the content of each window and screen.
	**/
	@:optional
	var thumbnailSize : electron.Size; /**
		Set to true to enable fetching window icons. The default value is false. When false the appIcon property of the sources return null. Same if a source has the type screen.
	**/
	@:optional
	var fetchWindowIcons : Bool; }):js.lib.Promise<Any>;
}
@:enum abstract DesktopCapturerEvent<T:(haxe.Constraints.Function)>(js.node.events.EventEmitter.Event<T>) to js.node.events.EventEmitter.Event<T> {

}
