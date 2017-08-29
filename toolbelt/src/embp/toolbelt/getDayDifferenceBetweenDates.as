package embp.toolbelt
{
	public function getDayDifferenceBetweenDates(date1:Date, date2:Date):Number
	{
		var oneDay:Number = 1000 * 60 * 60 * 24;
		var date1Milliseconds:Number = date1.getTime();
		var date2Milliseconds:Number = date2.getTime();         
		var differenceMilliseconds:Number = Math.abs(date1Milliseconds - date2Milliseconds);
		return Math.round(differenceMilliseconds/oneDay);
	}
}
