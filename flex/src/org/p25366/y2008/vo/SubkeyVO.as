package org.p25366.y2008.vo
{
	import mx.collections.ArrayCollection;
	
	[Bindable]
	public class SubkeyVO
	{
		public var parent:SubkeyVO;
		public var label:String;
		public var id:Number;
		public var langSource:String;
		public var langDest:String;
		
		//public var image:String;
		public var children:ArrayCollection;
	}
}