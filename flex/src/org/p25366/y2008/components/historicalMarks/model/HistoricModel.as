package org.p25366.y2008.components.historicalMarks.model
{
	import mx.collections.ArrayCollection;
	
	import org.p25366.y2008.components.historicalMarks.vo.HistoricalMarkVO;
	
	[Bindable]
	public class HistoricModel
	{
		
		public var marks:ArrayCollection;
		public function HistoricModel(enforcer:SingletonEnforcer)
		{
	
		}
		private static var instance:HistoricModel;
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