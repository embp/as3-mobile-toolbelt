
package embp.toolbelt {
	/**
	 * Checks if provided string has a valid value
	 * @param value The string to check
	 * @param checkEmptyString true will also check if the string is empty or not
	 * @return true if the string is not undefined or null. If checkEmptyString is true it will also check if the string is empty ("" or " ").
	 * In that case,if the string is empty then false is returned.
	 */
	public function stringHasValue(value:String, checkEmptyString:Boolean=true):Boolean {
		function _isEmpty(value:String, bol:Boolean):Boolean {
			if(bol) {
				return value == "" || value == " ";
			} else {
				return false;
			}
		}
		return hasValue(value) && !_isEmpty(value, checkEmptyString);
	}
}
