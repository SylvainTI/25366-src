package org.p25366.y2008.model
{
	import mx.collections.ArrayCollection;
	
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
		public function Model(enforcer:SingletonEnforcer)
		{
		}
		private static var instance:Model;
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