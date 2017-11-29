package embp.toolbelt
{
	/**
	 * Difference in hours between two Date objects
	 * @param date1
	 * @param date2
	 * @return Hour difference, an hour difference being 1, an hour and a half being 1.5, and so on...
	 */
	public function getHourDifferenceBetweenDates(date1:Date, date2:Date):Number
	{
		var oneHour:Number = 1000 * 60 * 60;
		var date1Milliseconds:Number = date1.getTime();
		var date2Milliseconds:Number = date2.getTime();         
		var differenceMilliseconds:Number = Math.abs(date1Milliseconds - date2Milliseconds);
		return differenceMilliseconds/oneHour;
	}
}
