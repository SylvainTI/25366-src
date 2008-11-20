package org.p25366.y2008.components.historicalMarks.libs
{
	import mx.collections.ArrayCollection;
	
	[Bindable]
	public class Historic_Models
	{
		public var keys:ArrayCollection;
		public static var instance:Historic_Models;
		
		public function Historic_Models(enforcer:SingletonEnforcer)
		{
			keys = new ArrayCollection();
			var keyVO:Object = new Object();
			keyVO.date = 1000;
			keys.addItem(keyVO);
		}
				
		public static function getInstance():Model
		{
			if (! instance){
				instance = new Historic_Models(new SingletonEnforcer())
			}
			return instance;
		}

	}
	
}
class SingletonEnforcer{}