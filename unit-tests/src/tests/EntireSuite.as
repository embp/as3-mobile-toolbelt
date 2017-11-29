package
{
	import date.DatesTest;

	import strings.StringsTest;

	[Suite]
	[RunWith("org.flexunit.runners.Suite")]
	public class EntireSuite
	{
		public var stringsSuite:StringsTest;
		public var datesSuite:DatesTest;
	}
}