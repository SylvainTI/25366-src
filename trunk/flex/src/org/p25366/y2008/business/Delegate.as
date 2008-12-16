package org.p25366.y2008.business
{
	import flash.events.Event;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import flash.net.URLRequestMethod;
	import flash.net.URLVariables;
	import flash.xml.XMLDocument;
	
	import mx.rpc.xml.SimpleXMLDecoder;
	
	import org.p25366.y2008.model.Model;
	import org.p25366.y2008.vo.KeyVO;
	import org.p25366.y2008.vo.SubkeyVO;
	import org.p25366.y2008.vo.WordVO;
	import org.p25366.y2008.vo.WordsVO;
	
	public class Delegate
	{
		
		private var _action:String = "";
		private var variables:URLVariables = new URLVariables();
		public var url_loader:URLLoader = new URLLoader();
		
		public function Delegate()
		{
		}
		
		public function loadKeys():void
		{
			this._action = "themes";
			this.variables.use_db = "true";
			this.variables.action = this._action;
			this.variables.langSource = Model.getInstance().langSource;
			var url_request:URLRequest = new URLRequest();
			url_request.method = URLRequestMethod.GET;
			url_request.url = Model.getInstance().data+"/index.php";
			url_request.data = this.variables;
			this.url_loader.load(url_request);
			this.url_loader.addEventListener(Event.COMPLETE,onXmlLoaded);	
		}
		
		public function loadSubkeys(pKeyVO:KeyVO):void
		{	
			this._action = "subthemes";
			this.variables.action = this._action;
			this.variables.langSource = Model.getInstance().langSource;
			this.variables.langDest = Model.getInstance().langDest;
			this.variables.themeId = pKeyVO.id;
			var url_request:URLRequest = new URLRequest();
			url_request.method = URLRequestMethod.GET;
			url_request.url = Model.getInstance().data+"/index.php";
			url_request.data = this.variables;
			this.url_loader.load(url_request);
			this.url_loader.addEventListener(Event.COMPLETE,onXmlLoaded);	
		}
		
		public function loadWords(pSubKeyVO:SubkeyVO):void
		{
			this._action = "words";
			this.variables.action = this._action;
			this.variables.langSource = Model.getInstance().langSource;
			this.variables.langDest = Model.getInstance().langDest;
			this.variables.subthemeId = pSubKeyVO.id;
			var url_request:URLRequest = new URLRequest();
			url_request.method = URLRequestMethod.GET;
			url_request.url = Model.getInstance().data+"/index.php";;
			url_request.data = this.variables;
			this.url_loader.load(url_request);
			this.url_loader.addEventListener(Event.COMPLETE,onXmlLoaded);
		}
		
		public function loadWord(pWordsVO:WordsVO):void
		{
			this._action = "word";
			this.variables.action = this._action;
			this.variables.langSource = Model.getInstance().langSource;
			this.variables.langDest = Model.getInstance().langDest;
			this.variables.subthemeId = pWordsVO.id;
			var url_request:URLRequest = new URLRequest();
			url_request.method = URLRequestMethod.GET;
			url_request.url = Model.getInstance().data+"/index.php";;
			url_request.data = this.variables;
			this.url_loader.load(url_request);
			this.url_loader.addEventListener(Event.COMPLETE,onXmlLoaded);
		}
		
		private function onXmlLoaded( event : Event ) : void {
		
		var itemVO:Object;
		
		var xmlStr:String = event.target.data.toString();
        var xmlDoc:XMLDocument = new XMLDocument(xmlStr);
        var decoder:SimpleXMLDecoder = new SimpleXMLDecoder(true);
        var xmlObj:Object = decoder.decodeXML(xmlDoc);
		
			switch(_action){
				case "themes":
					for each(itemVO in xmlObj.themes.theme){
						Model.getInstance().keys.addItem((new KeyVO(itemVO)));
					}
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
				case "word":
				for each(itemVO in xmlObj){
					Model.getInstance().wordVO = new WordVO(itemVO);
				}
				break;
			}
		}
	}
}