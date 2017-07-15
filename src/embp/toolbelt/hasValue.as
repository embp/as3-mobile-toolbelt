
package embp.toolbelt {

	/**
	 * Checks if provided property has a valid value.
	 * @param	property Any object you'd like to check
	 * @param checkForEmptyStrings Optional argument to check if the property is an empty string ("" or " ")
	 */
	public function hasValue(property:*, checkForEmptyStrings:Boolean=false):Boolean {
		function _isEmpty(value:String, bol:Boolean):Boolean {
			if(bol) {
				return value == "" || value == " ";
			} else {
				return false;
			}
		}
		return property != null && property != "null" && property != undefined && property != "undefined" && property != ToolbeltConstants.INTEGER_INVALID_VALUE && !_isEmpty(property, checkForEmptyStrings);
	}
}
