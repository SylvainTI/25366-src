package org.p25366.y2008.vo
{
	import mx.collections.ArrayCollection;
	
	[Bindable]
	public class KeyVO
	{
		public var parent:KeyVO;
		public var label:String;
		public var image:String;
		public var children:ArrayCollection;
	}
}