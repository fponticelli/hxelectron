package electron;

/**
**/
@:require(js, electron) typedef Cookie = {
	/**
		The name of the cookie.
	**/
	var name : String;
	/**
		The value of the cookie.
	**/
	var value : String;
	/**
		The domain of the cookie.
	**/
	var domain : String;
	/**
		Whether the cookie is a host-only cookie.
	**/
	var hostOnly : String;
	/**
		The path of the cookie.
	**/
	var path : String;
	/**
		Whether the cookie is marked as secure.
	**/
	var secure : Bool;
	/**
		Whether the cookie is marked as HTTP only.
	**/
	var httpOnly : Bool;
	/**
		Whether the cookie is a session cookie or a persistent cookie with an expiration date.
	**/
	var session : Bool;
	/**
		(optional) - The expiration date of the cookie as the number of seconds since the UNIX epoch. Not provided for session cookies.
	**/
	@:optional
	var expirationDate : Float;
}