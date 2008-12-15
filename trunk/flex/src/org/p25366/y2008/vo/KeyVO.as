package org.p25366.y2008.vo
{
	import mx.collections.ArrayCollection;
	
	[Bindable]
	public class KeyVO
	{
		public var id:String = "";
		
		public var label:String = "";
		public var image:String = "";
		public var langSrc:String = "";
		
		/*
		// Ne devrait-il pas y avoir ces variables ? Arnaud
		public var langDest:String;
		public var libDest:String;
		public var genderDest:String;
		
		public var langSrc:String;
		public var libSrc:String;
		public var genderSrc:String;
		*/
		
		public var children:ArrayCollection = new ArrayCollection();// Array of subkeyVOs
	}
}