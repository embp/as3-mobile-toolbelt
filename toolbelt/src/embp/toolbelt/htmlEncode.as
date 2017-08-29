/**
 * Created by naneco on 8/4/17.
 */
package embp.toolbelt {
	/**
	 * Modified htmlEncode function originally from: https://github.com/as3/as3-utils/blob/master/src/utils/string/htmlEncode.as
	 * @param s The string to encode
	 * @return The encoded string
	 */
	public function htmlEncode(s:String):String
	{
		s = s.split("&").join("&amp;");
		s = s.split(" ").join("&nbsp;");
		s = s.split("<").join("&lt;");
		s = s.split(">").join("&gt;");
		s = s.split("™").join("&trade;");
		s = s.split("®").join("&reg;");
		s = s.split("©").join("&copy;");
		s = s.split("€").join("&euro;");
		s = s.split("£").join("&pound;");
		s = s.split("—").join("&mdash;");
		s = s.split("–").join("&ndash;");
		s = s.split("…").join("&hellip;");
		s = s.split("†").join("&dagger;");
		s = s.split("·").join("&middot;");
		s = s.split("µ").join("&micro;");
		s = s.split("«").join("&laquo;");
		s = s.split("»").join("&raquo;");
		s = s.split("•").join("&bull;");
		s = s.split("°").join("&deg;");
		s = s.split('"').join("&quot;");
		s = s.split("'").join("&#39;");
		s = s.split("\n").join("&lt;br&gt;");
		s = s.split("\r").join("&lt;br&gt;");
		return s;
	}
}
