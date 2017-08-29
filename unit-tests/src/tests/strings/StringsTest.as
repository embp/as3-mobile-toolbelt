package strings {
	import embp.toolbelt.containsString;
	import embp.toolbelt.stringMax;
	import embp.toolbelt.stringTruncate;

	import org.flexunit.asserts.assertEquals;
	import org.flexunit.asserts.assertFalse;
	import org.flexunit.asserts.assertTrue;

	public class StringsTest {

		[Test(description="Truncates string with an ellipsis")]
		public function it_truncates_with_ellipsis():void {
			var str:String = stringTruncate(10, "This is a string");
			assertEquals(str, "This is a ...");
		}

		[Test(description="Truncates string without an ellipsis")]
		public function it_truncates_without_ellipsis():void {
			var str:String = stringTruncate(10, "This is a string", false);
			assertEquals(str, "This is a ");
		}

		[Test(description="Returns longest string when both are under the limit")]
		public function it_returns_longest_under_limit():void {
			var str1:String = "This is string 1";
			var str2:String = "String 2";
			var str:String = stringMax(str1, str2, 100);
			assertEquals(str, str1);
		}

		[Test(description="Returns string within limit when one is outside the limit")]
		public function it_returns_longest_outside_limit():void {
			var str1:String = "This is string 1";
			var str2:String = "String 2";
			var str:String = stringMax(str1, str2, 10);
			assertEquals(str, str2);
		}

		[Test(description="Returns 1st string truncated with ellipsis when both strings are outside the limit")]
		public function it_returns_truncated_ellipsis_when_both_outside_limit():void {
			var str1:String = "This is string 1";
			var str2:String = "This is string 2";
			var str:String = stringMax(str1, str2, 5);
			assertEquals(str, "This ...");
		}

		[Test(description="Returns 1st string truncated with ellipsis when 2nd string is empty/null/undefined")]
		public function it_returns_truncated_when_string2_invalid():void {
			var str1:String = "This is string 1";
			var str2:String = " ";
			var str:String = stringMax(str1, str2, 5);
			assertEquals(str, "This ...");

			str2 = null;

			str = stringMax(str1, str2, 5);
			assertEquals(str, "This ...");

			str2 = undefined;

			str = stringMax(str1, str2, 5);
			assertEquals(str, "This ...");
		}

		[Test(description="Returns 2nd string truncated with ellipsis when 1st string is empty/null/undefined")]
		public function it_returns_truncated_when_string1_invalid():void {
			var str1:String = " ";
			var str2:String = "This is string 2";
			var str:String = stringMax(str1, str2, 5);
			assertEquals(str, "This ...");

			str1 = null;

			str = stringMax(str1, str2, 5);
			assertEquals(str, "This ...");

			str1 = undefined;

			str = stringMax(str1, str2, 5);
			assertEquals(str, "This ...");
		}

		[Test(description="Returns empty string when both strings are invalid (empty/null/undefined)")]
		public function it_returns_empty_when_both_invalid():void {
			var str1:String = "";
			var str2:String = "";
			var str:String = stringMax(str1, str2, 5);
			assertEquals(str, "");

			str1 = null;
			str2 = null;

			str = stringMax(str1, str2, 5);
			assertEquals(str, "");

			str1 = undefined;
			str2 = undefined;

			str = stringMax(str1, str2, 5);
			assertEquals(str, "");
		}

		[Test(description="Returns 1st string truncated when both strings are longer than limit")]
		public function it_returns_string1_truncated_when_both_out_of_limit():void {
			var str1:String = "String #1 it is pretty long";
			var str2:String = "String #2 it is pretty long";
			var str:String = stringMax(str1, str2, 9);
			assertEquals(str, "String #1...");
		}

		[Test(description="Returns string1 if string2 is longer than limit, even if string1 is an empty string")]
		public function it_returns_string1_when_string2_out_of_limit():void {
			var str1:String = " ";
			var str2:String = "String #2 it is pretty long";
			var str:String = stringMax(str1, str2, 5, false);
			assertEquals(str, " ");
		}

		[Test(description="Returns string2 if string1 is longer than limit, even if string2 is an empty string")]
		public function it_returns_string2_when_string1_out_of_limit():void {
			var str1:String = "This is string 1";
			var str2:String = " ";
			var str:String = stringMax(str1, str2, 5, true, false);
			assertEquals(str, " ");
		}

		[Test(description="Returns true if target string is found in source string")]
		public function it_returns_true_if_target_string_found_in_source_string():void {
			var targetString:String = "path";
			var sourceString:String = "This is the path";
			assertTrue(containsString(sourceString, targetString));
		}

		[Test(description="Returns false if target string is not found in source string")]
		public function it_returns_false_if_target_string_not_found_in_source_string():void {
			var targetString:String = "yesterday";
			var sourceString:String = "This is the path";
			assertFalse(containsString(sourceString, targetString));
		}
	}
}
