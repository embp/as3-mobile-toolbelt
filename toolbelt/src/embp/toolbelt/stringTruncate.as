package embp.toolbelt
{
	/**
	 * Truncates provided string at the max character count provided.
	 * @param maxCount The max characters before truncating
	 * @param str The string to truncate if longer than maxCount
	 * @param append Adds the truncateWith value to the end of the truncated string if true, does not if false
	 * @param truncateWith The set of characters to append to a truncated string, if append is set to true
	 * @return
	 */
	public function stringTruncate(maxCount:int, str:String, append:Boolean = true, truncateWith:String='...'):String
	{
		var newStr:String = new String();
		var ellipsis:String = append ? truncateWith : '';
		newStr = str.length > maxCount ? str.substr(0, maxCount) + ellipsis : str;
		
		return newStr;
	}
}
