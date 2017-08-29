package embp.toolbelt
{
	/**
	 * Truncates provided string at the mac character count provided.
	 * @param maxCount The max characters before truncating
	 * @param str The string to truncate if longer than maxCount
	 * @param addEllipsis Adds ellipsis if true, does not if false
	 * @return
	 */
	public function stringTruncate(maxCount:int, str:String, addEllipsis:Boolean = true):String
	{
		var newStr:String = new String();
		var ellipsis:String = addEllipsis ? '...' : '';
		newStr = str.length > maxCount ? str.substr(0, maxCount) + ellipsis : str;
		
		return newStr;
	}
}
