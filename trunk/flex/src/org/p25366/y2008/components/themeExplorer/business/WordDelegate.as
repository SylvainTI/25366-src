package org.p25366.y2008.components.themeExplorer.business
{
	import flash.net.URLVariables;
	
	import mx.collections.ArrayCollection;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.http.HTTPService;
	
	public class WordDelegate
	{		
		public var currentSubKey:SubkeyVO;
		private var variables:URLVariables = new URLVariables();
		public var request:HTTPService = new HTTPService();
		private var subkeys_arr:ArrayCollection = new ArrayCollection();
		public static var instance:WordDelegate;

		private var URL_SERVICE:String = Model.getInstance().data;

		public function WordDelegate()
		{
			
		}
		
		public static function getInstance():WordDelegate
		{
			if (! instance){
				instance = new WordDelegate()
			}
			return instance;
		}
		
		public function getDatas(pThemeId:Number,pLangSource:String,pLangDest:String) : ArrayCollection{
			this.variables.action = "subthemes";
			this.variables.langSource = pLangSource;
			this.variables.langDest = pLangDest;
			this.variables.themeId = pThemeId;
			
			request.url = this.URL_SERVICE;
			request.send();
			request.addEventListener(ResultEvent.RESULT,onRequestSended);
			
			function onRequestSended(event : ResultEvent) : void {
			subkeys_arr = new ArrayCollection();
			
			var xml:XML = new XML(event.result.data);
			for each(var element:XML in xml.elements()){
			var subKeysVO:SubkeyVO = new SubkeyVO();
			//AJOUTER
			subkeys_arr.addItem(subKeysVO);
			}
			return subkeys_arr;
		}
	}
}