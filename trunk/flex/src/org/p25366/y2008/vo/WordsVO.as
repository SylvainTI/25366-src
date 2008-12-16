package org.p25366.y2008.vo
{
	import org.p25366.y2008.model.Model;
	
	[Bindable]
	public class WordsVO
	{
		public var id:String;
		
		public var keyVO:KeyVO;
		public var subkeyVO:SubkeyVO;
		
		public var langDest:String;
		public var libDest:String;
		public var genderDest:String;
		
		public var langSrc:String;
		public var libSrc:String;
		public var genderSrc:String;
		
		public function WordsVO(pObj:Object = null){
			if (pObj==null) return;
			this.id = pObj.id;
			this.langDest = pObj.destination.lang;
			this.genderDest = pObj.destination.genre;
			this.genderSrc = pObj.source.genre;
			this.langSrc = pObj.source.lang;
			this.libDest = pObj.destination.lib;
			this.libSrc = pObj.source.lib;
			this.keyVO = Model.getInstance().keyVO;
			this.subkeyVO = Model.getInstance().subkeyVO;
		}
	}
}