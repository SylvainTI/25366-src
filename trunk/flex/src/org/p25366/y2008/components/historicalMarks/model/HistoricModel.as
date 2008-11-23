package org.p25366.y2008.components.historicalMarks.model
{
	import mx.collections.ArrayCollection;
	
	//import org.p25366.y2008.components.historicalMarks.vo.HistoricalMarkVO;
	
	[Bindable]
	public class HistoricModel
	{
		public var marks:ArrayCollection;
		public function HistoricModel(enforcer:SingletonEnforcer)
		{
			marks = new ArrayCollection();
			
			/*var historicalMarkVO:HistoricalMarkVO = new HistoricalMarkVO();
			historicalMarkVO.date = "-1000";
			historicalMarkVO.description = "hohohohohoho";
			marks.addItem(historicalMarkVO);
			
		    historicalMarkVO = new HistoricalMarkVO();
			historicalMarkVO.date = "-2000";
			historicalMarkVO.description = "ihihihih"
			marks.addItem(historicalMarkVO);*/
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