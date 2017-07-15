package embp.toolbelt {
	import flash.desktop.NativeApplication;

	public function getAppVersion():String {
		var appXml:XML = NativeApplication.nativeApplication.applicationDescriptor;
		var ns:Namespace = appXml.namespace();
		var appVersion:String = appXml.ns::versionNumber[0];
		return appVersion;
	}
}
