
package embp.toolbelt {

	/**
	 * Checks validity of an integer. The app uses ToolbeltConstants.INTEGER_INVALID_VALUE to identify and invalid value.
	 * @param value The integer to check
	 * @return true if the integer is is not of value ToolbeltConstants.INTEGER_INVALID_VALUE, false
	 * if the integer value is equal to ToolbeltConstants.INTEGER_INVALID_VALUE
	 */
	public function integerHasValue(value:int):Boolean {
		return value != ToolbeltConstants.INTEGER_INVALID_VALUE;
	}
}
