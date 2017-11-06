package embp.toolbelt {
	/**
	 * Checks if target string is found in source string.
	 * @param source The source string
	 * @param target The target string
	 * @param ignoreCase Ignores any differences in upper/lower case
	 * @return true if the target string is found in the source string, false if not
	 */
	public function containsString(source:String, target:String, ignoreCase:Boolean=true):Boolean {
		if(ignoreCase) {
			target = target.toLowerCase();
			source = source.toLowerCase();
		}
		return source.indexOf(target) != -1;
	}
}
