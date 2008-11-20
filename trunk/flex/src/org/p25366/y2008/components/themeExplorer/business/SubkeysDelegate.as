package org.p25366.y2008.components.themeExplorer.business
{
	import flash.net.URLVariables;
	import org.p25366.y2008.model.Model;
	import mx.collections.ArrayCollection;
	import mx.rpc.http.HTTPService;
	
	public class SubkeysDelegate
	{		
		public var currentSubKey:SubkeyVO;
		private var variables:URLVariables = new URLVariables();
		public var request:HTTPService = new HTTPService();
		private var subkeys_arr:ArrayCollection = new ArrayCollection();
		public static var instance:SubkeysDelegate;

		private var URL_SERVICE:String = Model.getInstance().data;

		public function SubkeysDelegate()
		{
			
		}
		
		public static function getInstance():SubkeysDelegate
		{
			if (! instance){
				instance = new SubkeysDelegate()
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
			
			subkeys_arr = new ArrayCollection();
			
			var subKeysVO:SubkeyVO = new SubkeyVO();
			subKeysVO.label = "";
			subKeysVO.id = "";
			subkeys_arr.addItem(subKeysVO);
			
			return subkeys_arr;
		}
	}
}