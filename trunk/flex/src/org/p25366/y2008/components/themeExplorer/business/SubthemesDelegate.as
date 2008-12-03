package org.p25366.y2008.components.themeExplorer.business
{
	import flash.events.*;
	import flash.net.*;
	
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;
	import flash.display.Sprite;
	
	import org.p25366.y2008.model.Model;
	import org.p25366.y2008.vo.SubkeyVO;
	
	[Bindable]
	public class SubthemesDelegate extends Sprite
	{		
		public var currentSubKey:SubkeyVO;
		private var variables:URLVariables = new URLVariables();
		public var url_loader:URLLoader = new URLLoader();
		public var subkeys_arr:ArrayCollection = new ArrayCollection();
		public static var instance:SubthemesDelegate;

		private const URL_SERVICE:String = Model.getInstance().data+"/index.php";
		private const LANG_DEST:String = Model.getInstance().langDest;
		private const LANG_SOURCE:String = Model.getInstance().langSource;
		private const ACTION:String = "subthemes";
		
		public static function getInstance():SubthemesDelegate
		{
			if (! instance){
				instance = new SubthemesDelegate();
			}
			return instance;
		}
		
		public function getDatas(pThemeId:String) : void {
			this.variables.action = this.ACTION;
			this.variables.langSource = this.LANG_SOURCE;
			this.variables.langDest = this.LANG_DEST;
			this.variables.themeId = pThemeId;
			var url_request:URLRequest = new URLRequest();
			url_request.method = URLRequestMethod.GET;
			url_request.url = this.URL_SERVICE;
			url_request.data = this.variables;
			this.url_loader.load(url_request);
			this.url_loader.addEventListener(Event.COMPLETE,onXmlLoaded);			
		}

	private function onXmlLoaded( event : Event ) : void {
		this.subkeys_arr = new ArrayCollection();
		var xml:XML = new XML(event.target.data);
		for each( var element:XML in xml.elements()){
			var subKeysVO:SubkeyVO = new SubkeyVO();
			subKeysVO.id = element.id.toString();
			subKeysVO.genderDest = element.destination.genre.toString();
			subKeysVO.genderSrc = element.source.genre.toString();
			subKeysVO.langDest = element.destination.lang.toString();
			subKeysVO.langSrc = element.source.lang.toString();
			subKeysVO.libDest = element.destination.lib.toString();
			subKeysVO.libSrc =element.source.lib.toString();
			this.subkeys_arr.addItem(subKeysVO);
		}
		this.dispatchEvent(new Event("subThemesLoaded"));
	}
}
}