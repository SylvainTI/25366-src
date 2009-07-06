package org.p25366.y2008.vo
{
	import mx.collections.ArrayCollection;
	
	import org.p25366.y2008.model.Model;
	
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
		
		public function SubkeyVO(pObj:Object = null){
			if (pObj==null) return;
			this.id = pObj.id;
			this.langDest = pObj.destination.lang;
			this.genderDest = pObj.destination.genre;
			this.genderSrc = pObj.source.genre;
			this.langSrc = pObj.source.lang;
			this.libDest = pObj.destination.lib;
			this.libSrc = pObj.source.lib;
			this.keyVO = Model.getInstance().keyVO;
		}
	}
}