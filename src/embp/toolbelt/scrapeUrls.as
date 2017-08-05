package embp.toolbelt {
	/**
	 * Scrapes all URLs from the provided string. A URL is considered to be any path starting with http://, https://, or ftp://, with at least one period "."
	 * The URL can have any character and slashes, dashes, etc. but it may not have spaces.
	 *
	 * The end of the URL is considered to be at the first space found or at the end of the line, therefore the URLs may not have spaces as it will not be extracted properly.
	 * If you have a URL with spaces you should encode that URL before passing it to the function. You should not encode the entire string, just the URL/s.
	 *
	 * @param s The string to scrape
	 * @param extractAnchorTags If set to true, the URLs that belong to anchor tags will be extracted along with the anchor tag. If false,
	 * these urls are extracted but the anchor tag from which the url was extracted is discarded.
	 *
	 * NOTE: Since anchor tags could have the URL as the href attribute, AND as the visual text within the tag, the URL for an anchor tag may cause duplicate URLs in the array.
	 *
	 * @return An array of all scraped URLs. If extractAnchorTags was set to true then the url belonging to the anchor tag is extracted along with the anchor tag itself.
	 */
	public function scrapeUrls(s:String, extractAnchorTags:Boolean=false):Array {
		var regEx:RegExp = /(?:http|ftp)s?:\/\/\S*?\.\S*?(?="|<| |\n|\r|$)/gi;
		var regExWAnchors:RegExp = /(?:<a href=".*">).*(?:<\/a>)|(?:http|ftp)s?:\/\/\S*\.\S*(?=")|(?:http|ftp)s?:\/\/\S*?\.\S*?(?="|<| |\n|\r|$)/gi;
		return s.match(extractAnchorTags ? regExWAnchors : regEx);
	}
}
