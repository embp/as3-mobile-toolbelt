package embp.toolbelt {
	/**
	 * Checks if provided string is a valid url
	 * @param s The string to check
	 * @return true if the string is a valid url, false if not
	 */
	public function isUrl(s:String):Boolean {
		var regex:RegExp = /(?:http|ftp)s?:\/\/\S*?\.\S*?(?="|<| |\n|\r|$)/gi;
		return regex.test(s);
	}
}
