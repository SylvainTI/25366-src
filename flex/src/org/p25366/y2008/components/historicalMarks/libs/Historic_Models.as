package org.p25366.y2008.components.historicalMarks.libs
{
	import mx.collections.ArrayCollection;
	
	[Bindable]
	public class Historic_Models
	{
		public var keys:ArrayCollection;
		
		public function Historic_Models()
		{
			keys = new ArrayCollection();
			var keyVO:Object = new Object();
			keyVO.date = 1000;
			keys.addItem(keyVO);
		}

	}
}