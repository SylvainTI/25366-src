package org.p25366.y2008.vo
{
	import mx.collections.ArrayCollection;
	
	[Bindable]
	public class WordVO
	{
		public var keyVO:KeyVO;
		public var subkeyVO:SubkeyVO;
		
		public var id:String;
		
		public var tags:String;
		
		public var langDest:String;
		public var libDest:String;
		public var genderDest:String;
		public var sensDest:String
		
		public var langSrc:String;
		public var libSrc:String;
		public var genderSrc:String;
		public var sensSrc:String
	}
}