package org.p25366.y2008.model.swfManager
{
	import flash.display.DisplayObject;
	import flash.system.ApplicationDomain;
	
	[Bindable]
	public class SwfManager
	{
		private var _appDomains:Array;
		private static var instance:SwfManager;
		
		public function SwfManager(enforcer:SingletonEnforcer)
		{
			_appDomains = new Array();
		}
		
		public static function getInstance():SwfManager
		{
			if (! instance){
				instance = new SwfManager(new SingletonEnforcer())
			}
			return instance;
		}
		
 		public function pushSwf(pSwfPath:String, pAppDomain:ApplicationDomain):void {
 			var swfUrlParts:Array = pSwfPath.split('/');
 			var swfName:String =  swfUrlParts[swfUrlParts.length -1];
 			swfName = swfName.substring(0, swfName.length - 4);
			_appDomains[swfName] = pAppDomain;
			trace('pushSwf ::' +swfName+ 'registred');
			
		}	
		public function getDisplayObject(pSwfPath:String,pName:String):DisplayObject {
			trace(pSwfPath+ 'invoqued');
			var swfClassAsset:Class;
			var swfVisualAsset:DisplayObject;
			swfClassAsset = ApplicationDomain(_appDomains[pSwfPath]).getDefinition(pName) as Class;
			swfVisualAsset = new swfClassAsset() as DisplayObject;
			return swfVisualAsset;
		} 

	}
}
class SingletonEnforcer{}