package embp.toolbelt {
	/**
	 * Checks if target string is found in source string.
	 * @param source The source string
	 * @param target The target string
	 * @return true if the target string is found in the source string, false if not
	 */
	public function containsString(source:String, target:String):Boolean {
		return source.indexOf(target) != -1;
	}
}
