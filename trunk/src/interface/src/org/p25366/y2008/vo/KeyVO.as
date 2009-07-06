package org.p25366.y2008.vo
{
	import mx.collections.ArrayCollection;
	
	import org.p25366.y2008.model.Model;
	
	[Bindable]
	public class KeyVO
	{
		public var id:String = "";
		public var label:String = "";
		public var image:String = "";
		public var langSrc:String = "";
		public var asset:String = "";
		
		public var children:ArrayCollection = new ArrayCollection();// Array of subkeyVOs
		
		public function KeyVO(pObj:Object = null){
			if (pObj==null) return;
			id = pObj.id;
			image =pObj.image;
			label = pObj.lib;
			langSrc = pObj.lang;
			asset = pObj.asset;
		}
	}
}