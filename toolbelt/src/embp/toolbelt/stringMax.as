
package embp.toolbelt {
	/**
	 * Returns the longest of the two strings provided that do not exceed the maximum character provided. If both
	 * strings are the same length the first string passed is returned. If both strings exceed the character limit
	 * the first string is returned truncated with an ellipsis. If both strings have no value (null/undefined), an
	 * empty string is returned. If one string has no value and the other does, the string with a value is returned, truncated
	 * with an ellipsis if necessary.
	 *
	 * @param str1 The first string
	 * @param str2 Second string
	 * @param maxChars The maximum amount of characters the string can have
	 * @param str1IsInvalidIfEmpty If set to true, it will consider str1 as null/invalid if the value is an empty string ("" or " ")
	 * @param str2IsInvalidIfEmpty If set to true, it will consider str2 as null/invalid if the value is an empty string ("" or " ")
	 * @return
	 */
	public function stringMax(str1:String, str2:String, maxChars:int, str1IsInvalidIfEmpty:Boolean = true, str2IsInvalidIfEmpty:Boolean = true):String {
		var str1Length:int = hasValue(str1, str1IsInvalidIfEmpty) ? str1.length : -1;
		var str2Length:int = hasValue(str2, str2IsInvalidIfEmpty) ? str2.length : -1;
		var str:String;

		if(str1Length == -1 && str2Length != -1) {
			str = stringTruncate(maxChars, str2, true);
		} else if(str1Length != -1 && str2Length == -1) {
			str = stringTruncate(maxChars, str1, true);
		} else if (str1Length == -1 && str2Length == -1) {
			str = "";
		} else if(str1Length == str2Length && str1Length < maxChars && str2Length < maxChars) {
			str = str1;
		} else if(str1Length > maxChars && str2Length <= maxChars) {
			str = str2;
		} else if (str1Length <= maxChars && str2Length > maxChars) {
			str = str1;
		} else if(str1Length > maxChars && str2Length > maxChars) {
			str = stringTruncate(maxChars, str1, true);
		} else if (str1Length <= maxChars && str2Length <= maxChars) {

			var maxLength:int = Math.max(str1Length, str2Length);

			if(maxLength == str1Length) {
				str = str1;
			} else if (maxLength == str2Length) {
				str = str2;
			}
		}

		return str;

	}
}
