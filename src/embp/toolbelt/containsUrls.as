package embp.toolbelt {
	/**
	 * Checks if provided string contains at least one url
	 * @param s The string to check
	 * @return true if the string contains at least one valid urls, false if not
	 */
	public function containsUrls(s:String):Boolean {
		var regEx:RegExp = /(?:http|ftp)s?:\/\/\S*?\.\S*?(?="|<| |\n|\r|$)/gi;
		return regEx.test(s);
	}
}
