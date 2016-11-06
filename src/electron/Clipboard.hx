package electron;

/**
	Perform copy and paste operations on the system clipboard.

	[Documentation](http://electron.atom.io/docs/api/clipboard)
**/
@:require(js, electron) @:jsRequire("electron", "clipboard") extern class Clipboard {
	static function readText(?type:String):String;
	/**
		Writes the text into the clipboard as plain text.
	**/
	static function writeText(text:String, ?type:String):Void;
	static function readHTML(?type:String):String;
	/**
		Writes markup to the clipboard.
	**/
	static function writeHTML(markup:String, ?type:String):Void;
	static function readImage(?type:String):NativeImage;
	/**
		Writes image to the clipboard.
	**/
	static function writeImage(image:NativeImage, ?type:String):Void;
	static function readRTF(?type:String):String;
	/**
		Writes the text into the clipboard in RTF.
	**/
	static function writeRTF(text:String, ?type:String):Void;
	/**
		Returns an Object containing title and url keys representing the bookmark in the clipboard. The title and url values will be empty strings when the bookmark is unavailable.
	**/
	static function readBookmark():{ @:optional
	var title : String; @:optional
	var url : String; };
	/**
		Writes the title and url into the clipboard as a bookmark. Note: Most apps on Windows don't support pasting bookmarks into them so you can use clipboard.write to write both a bookmark and fallback text to the clipboard.
	**/
	static function writeBookmark(title:String, url:String, ?type:String):Void;
	static function readFindText():String;
	/**
		Writes the text into the find pasteboard as plain text. This method uses synchronous IPC when called from the renderer process.
	**/
	static function writeFindText(text:String):Void;
	/**
		Clears the clipboard content.
	**/
	static function clear(?type:String):Void;
	static function availableFormats(?type:String):Array<String>;
	static function has(data:String, ?type:String):Bool;
	static function read(data:String, ?type:String):String;
	/**
		Writes data to the clipboard.
	**/
	static function write(data:{ @:optional
	var text : String; @:optional
	var html : String; @:optional
	var image : NativeImage; @:optional
	var rtf : String; /**
		The title of the url at .
	**/
	@:optional
	var bookmark : String; }, ?type:String):Void;
}