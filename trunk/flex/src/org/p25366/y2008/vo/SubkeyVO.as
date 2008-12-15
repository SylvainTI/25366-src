package org.p25366.y2008.vo
{
	import mx.collections.ArrayCollection;
	
	[Bindable]
	public class SubkeyVO
	{
		public var keyVO:KeyVO;// la clé parente
		
		public var id:String;
		
		public var langDest:String;
		public var libDest:String;
		public var genderDest:String;
		
		public var langSrc:String;
		public var libSrc:String;
		public var genderSrc:String;
		
		public var children:ArrayCollection = new ArrayCollection();// Array of wordVOs
	}
}