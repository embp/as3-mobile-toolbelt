package date {
	import embp.toolbelt.getDayDifferenceBetweenDates;
	import embp.toolbelt.getHourDifferenceBetweenDates;

	import org.flexunit.asserts.assertEquals;

	public class DatesTest {

		[Test(description="Returns correct day difference between two date objects")]
		public function returns_correct_day_difference():void {
			var date1:Date = new Date(2017, 11, 28);
			var date2:Date = new Date(2017, 11, 27);
			var diff:Number = getDayDifferenceBetweenDates(date1, date2);
			assertEquals(diff, 1);
		}

		[Test(description="Returns correct hour difference between two date objects")]
		public function returns_correct_hour_difference():void {
			var date1:Date = new Date(2017, 11, 28, 10);
			var date2:Date = new Date(2017, 11, 28, 12);
			var diff:Number = getHourDifferenceBetweenDates(date1, date2);
			assertEquals(diff, 2);
		}

		[Test(description="Returns correct hour difference between two date objects, even when less than an hour")]
		public function returns_correct_hour_difference_as_decimal():void {
			var date1:Date = new Date(2017, 11, 28, 10);
			var date2:Date = new Date(2017, 11, 28, 10, 30);
			var diff:Number = getHourDifferenceBetweenDates(date1, date2);
			assertEquals(diff, .5);
		}


	}
}
