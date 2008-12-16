package org.p25366.y2008.components.themeExplorer.business
{
	import flash.display.Sprite;
	import flash.events.*;
	import flash.net.*;
	
	import mx.collections.ArrayCollection;
	
	import org.p25366.y2008.components.themeExplorer.model.ThemeExplorerModel;
	import org.p25366.y2008.model.Model;
	import org.p25366.y2008.vo.KeyVO;
	import org.p25366.y2008.vo.SubkeyVO;
	
	[Bindable]
	public class ThemesDelegate extends Sprite
	{		
		public var currentSubKey:SubkeyVO;
		private var variables:URLVariables = new URLVariables();
		public var url_loader:URLLoader = new URLLoader();
		public var themes_arr:ArrayCollection = new ArrayCollection();
		
		public static var instance:ThemesDelegate;

		private const URL_SERVICE:String = Model.getInstance().data+"/index.php";
		private const LANG_DEST:String = Model.getInstance().langDest;
		private const LANG_SOURCE:String = Model.getInstance().langSource;
		private const ACTION:String = "themes";
		
		public static function getInstance():ThemesDelegate
		{
			if (! instance){
				instance = new ThemesDelegate();
			}
			return instance;
		}
		
		public function getDatas() : void {
			this.variables.action = this.ACTION;
			this.variables.langSource = this.LANG_SOURCE;
			this.variables.langDest = this.LANG_DEST;
			var url_request:URLRequest = new URLRequest();
			url_request.method = URLRequestMethod.GET;
			url_request.url = this.URL_SERVICE;
			url_request.data = this.variables;
			this.url_loader.load(url_request);
			this.url_loader.addEventListener(Event.COMPLETE,onXmlLoaded);			
		}

	private function onXmlLoaded( event : Event ) : void {
		Model.getInstance().themesProvider = new ArrayCollection();
		this.themes_arr = Model.getInstance().themesProvider;
		var xml:XML = new XML(event.target.data);
		for each( var element:XML in xml.elements()){
			var keyVO:KeyVO = new KeyVO();
			keyVO.id = element.id.toString();
			keyVO.label = element.lib.toString();
			keyVO.image =element.image.toString();
			keyVO.langSrc = element.lang.toString();
			this.themes_arr.addItem(keyVO);
		}
	}
}
}