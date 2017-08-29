
package embp.toolbelt {
	/**
	 * Extracts query params and sets them to an object
	 */
	public function getQueryParams(url:String):Object {
		var params:Object;
		var paramsString:String = containsString(url, "?") ? url.split('?')[1] : null;

		if(paramsString) {
			params = {};
			var arr:Array = paramsString.split('&');

			for(var i:int = 0; i < arr.length; i++) {
				var split:Array = arr[i].split("=");
				var key:String = split[0];
				var val:String = split[1];

				params[key] = val;
			}
		}

		return params;
	}
}
