package org.p25366.y2008.business
{
	import flash.display.Loader;
	import flash.events.Event;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import flash.net.URLRequestMethod;
	import flash.net.URLVariables;
	import flash.system.ApplicationDomain;
	import flash.xml.XMLDocument;
	
	import mx.collections.ArrayCollection;
	import mx.rpc.xml.SimpleXMLDecoder;
	
	import org.p25366.y2008.model.Model;
	import org.p25366.y2008.model.swfManager.SwfManager;
	import org.p25366.y2008.vo.KeyVO;
	import org.p25366.y2008.vo.SubkeyVO;
	import org.p25366.y2008.vo.WordsVO;
	
	public class Delegate
	{
		
		private var _action:String = "";
		private var _variables:URLVariables = new URLVariables();
		private var _urlLoader:URLLoader = new URLLoader();
		private var _loader:Loader = new Loader();
		private var _app:ApplicationDomain;
		//_loader.contentLoaderInfo.applicationDomain.
		
		
		public function Delegate()
		{
		}
		
		public function loadKeys():void
		{
			this._action = "themes";
			this._variables.use_db = "true";
			this._variables.action = this._action;
			this._variables.langSource = Model.getInstance().langSource;
			var url_request:URLRequest = new URLRequest();
			url_request.method = URLRequestMethod.GET;
			url_request.url = Model.getInstance().data+"/index.php";
			url_request.data = this._variables;
			this._urlLoader.load(url_request);
			this._urlLoader.addEventListener(Event.COMPLETE,onXmlLoaded);	
		}
		public function loadAssets():void {
			_loader.contentLoaderInfo.addEventListener(Event.COMPLETE, _onAssetComplete);
			_loader.load(new URLRequest('data/keys.swf'));
		}
		
		public function loadLangs():void
		{
			this._action = "langs";
			this._variables.action = this._action;
			this._variables.use_db = "true";
			var url_request:URLRequest = new URLRequest();
			url_request.method = URLRequestMethod.GET;
			url_request.url = Model.getInstance().data+"/index.php";
			url_request.data = this._variables;
			this._urlLoader.load(url_request);
			this._urlLoader.addEventListener(Event.COMPLETE,onXmlLoaded);	
		}
		
		public function loadSubkeys(pKeyVO:KeyVO):void
		{	
			this._action = "subthemes";
			this._variables.use_db = "true";
			this._variables.action = this._action;
			this._variables.langSource = Model.getInstance().langSource;
			this._variables.langDest = Model.getInstance().langDest;
			this._variables.themeId = pKeyVO.id;
			var url_request:URLRequest = new URLRequest();
			url_request.method = URLRequestMethod.GET;
			url_request.url = Model.getInstance().data+"/index.php";
			url_request.data = this._variables;
			this._urlLoader.load(url_request);
			this._urlLoader.addEventListener(Event.COMPLETE,onXmlLoaded);	
		}
		
		public function loadWords(pSubKeyVO:SubkeyVO):void
		{
			this._action = "words";
			this._variables.use_db = "true";
			this._variables.action = this._action;
			this._variables.langSource = Model.getInstance().langSource;
			this._variables.langDest = Model.getInstance().langDest;
			this._variables.subthemeId = pSubKeyVO.id;
			var url_request:URLRequest = new URLRequest();
			url_request.method = URLRequestMethod.GET;
			url_request.url = Model.getInstance().data+"/index.php";
			url_request.data = this._variables;
			this._urlLoader.load(url_request);
			this._urlLoader.addEventListener(Event.COMPLETE,onXmlLoaded);
		}
		
		private function onXmlLoaded( event : Event ) : void {
		/*
			var itemVO:Object;
			
			var xmlStr:String = event.target.data.toString();
	        var xmlDoc:XMLDocument = new XMLDocument(xmlStr);
	        var decoder:SimpleXMLDecoder = new SimpleXMLDecoder(true);
	        var xmlObj:Object = decoder.decodeXML(xmlDoc);
		
			switch(_action){
				case "langs":
				Model.getInstance().langDestProvider = new ArrayCollection();
				Model.getInstance().langSrcProvider = new ArrayCollection();
					Model.getInstance().langSrcProvider.addItem({data:"",label:"source"});
					Model.getInstance().langDestProvider.addItem({data:"",label:"cible"});
					for each(itemVO in xmlObj){ 
						Model.getInstance().langSrcProvider.addItem({data:itemVO.lang.id,label:itemVO.lang.lib});
						Model.getInstance().langDestProvider.addItem({data:itemVO.lang.destination.lang.id,label:itemVO.lang.destination.lang.libSource});
					}
				break;
				case "themes":
					trace('Th�mes');
					for each(itemVO in xmlObj.themes.theme){
						Model.getInstance().keys.addItem((new KeyVO(itemVO)));
					}
					loadAssets();
					
				break;
				case "subthemes":
					for each(itemVO in xmlObj.subthemes.subtheme){
						Model.getInstance().keyVO.children.addItem((new SubkeyVO(itemVO)));
					}
				break;
				case "words":
					for each(itemVO in xmlObj.words.word){
						Model.getInstance().subkeyVO.children.addItem((new WordsVO(itemVO)));
					}
				break;
				
			}
			*/
		}
		private function _onAssetComplete(evt:Event):void {
			SwfManager.getInstance().pushSwf(_loader.contentLoaderInfo.url.toString(),_loader.contentLoaderInfo.applicationDomain );
		}
	}
}