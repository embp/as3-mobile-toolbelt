package embp.toolbelt {
	/**
	 * Modified function originally from: https://github.com/as3/as3-utils/blob/master/src/utils/string/htmlDecode.as
	 * @param s The encoded string to decode
	 * @return The decoded string
	 */
	public function htmlDecode(s:String):String
	{
		s = s.split("&amp;").join("&");
		s = s.split("&nbsp;").join(" ");
		s = s.split("&lt;").join("<");
		s = s.split("&gt;").join(">");
		s = s.split("&trade;").join("™");
		s = s.split("&reg;").join("®");
		s = s.split("&copy;").join("©");
		s = s.split("&euro;").join("€");
		s = s.split("&pound;").join("£");
		s = s.split("&mdash;").join("—");
		s = s.split("&ndash;").join("–");
		s = s.split("&hellip;").join("…");
		s = s.split("&dagger;").join("†");
		s = s.split("&middot;").join("·");
		s = s.split("&micro;").join("µ");
		s = s.split("&laquo;").join("«");
		s = s.split("&raquo;").join("»");
		s = s.split("&bull;").join("•");
		s = s.split("&deg;").join("°");
		s = s.split('&quot;').join('"');
		s = s.split("&#39;").join("'");
		return s;
	}
}
