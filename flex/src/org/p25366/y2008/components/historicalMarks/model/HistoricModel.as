package org.p25366.y2008.components.historicalMarks.model
{
	import mx.collections.ArrayCollection;
	
	[Bindable]
	public class HistoricModel
	{
		public var keys:ArrayCollection;
		public function HistoricModel(enforcer:SingletonEnforcer)
		{
			
		}
		public static var instance:HistoricModel;
		public static function getInstance():HistoricModel
		{
			if (! instance){
				instance = new HistoricModel(new SingletonEnforcer())
			}
			return instance;
		}
	}
}
class SingletonEnforcer{}