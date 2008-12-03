package org.p25366.y2008.model
{
	import mx.collections.ArrayCollection;
	
	import org.p25366.y2008.event.ProjectEvents;
	import org.p25366.y2008.vo.KeyVO;
	
	[Bindable]
	public class Model
	{
		public var data:String = "../../data";
		public var langSource:String = "";
		public var langDest:String = "";
		public var keys:ArrayCollection;
		public var currentKey:KeyVO;
		public var page:String = "choixLangue";
		public var defPageVisible:Boolean = false;
		private static var instance:Model;
		
		public function Model(enforcer:SingletonEnforcer)
		{
			addEventListener(ProjectEvents.OPEN_PAGE,initDefinitionPage);
		}
		
		public function  initDefinitionPage(event : ProjectEvents) : void{
			dispatchEvent(event);
		}
		
		public static function getInstance():Model
		{
			if (! instance){
				instance = new Model(new SingletonEnforcer())
			}
			return instance;
		}	
	}
}
class SingletonEnforcer{}

