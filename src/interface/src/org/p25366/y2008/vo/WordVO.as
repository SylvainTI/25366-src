package org.p25366.y2008.vo
{
	import org.p25366.y2008.model.Model;
	
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
		public var sensSrc:String;
		
		public function WordVO(pObj : Object = null){
			if (pObj==null) return;
			this.id = pObj.id;
			this.langDest = pObj.destination.lang;
			this.genderDest = pObj.destination.genre;
			this.genderSrc = pObj.source.genre;
			this.langSrc = pObj.source.lang;
			this.libDest = pObj.destination.lib;
			this.libSrc = pObj.source.lib;
		}
		
		public var loaded:Boolean = false;// indique si le mot entier a été chargé, ou juste une partie des infos
	}
}