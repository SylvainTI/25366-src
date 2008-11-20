package org.p25366.y2008.components.themeExplorer.business
{	
	import mx.collections.ArrayCollection;
	import mx.rpc.http.HTTPService;
	
	public class WordsDelegate
	{
		public var currentWord:WordsVO;
		private var words_arr:ArrayCollection = new ArrayCollection();
		private var variables:URLVariables = new URLVariables();
		public var request:HTTPService = new HTTPService();		
		public static var instance:WordsDelegate;

		private var URL_SERVICE:String = "";
		
		public function WordsDelegate()
		{
				
		}
		
		public static function getInstance():WordsDelegate
		{
			if (! instance){
				instance = new WordsDelegate()
			}
			return instance;
		}
				
		public function getDatas(pSubThemeId:Number,pLangSource:String,pLangDest:String) : ArrayCollection {
			
			this.variables.action = "words";
			this.variables.langSource = pLangSource;
			this.variables.langDest = pLangDest;
			this.variables.subThemeId = pSubThemeId;
			
			request.url = this.URL_SERVICE;
			request.send();
			
			words_arr = new ArrayCollection();
			
			var wordVO:WordVO = new WordVO();
			wordVO.label = "";
			wordVO.id = "";
			keys.addItem(wordVO);
			
			return words_arr;
		}
	}
}