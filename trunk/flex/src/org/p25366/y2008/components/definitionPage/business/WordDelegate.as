package org.p25366.y2008.components.definitionPage.business
{
	import flash.display.*;
	import flash.events.*;
	import flash.net.*;
	import flash.xml.XMLDocument;
	
	import mx.rpc.xml.SimpleXMLDecoder;
	
	import org.p25366.y2008.model.Model;
	import org.p25366.y2008.vo.WordVO;
	//import com.carlcalderon.arthropod.Debug;
	
	[Bindable]
	public class WordDelegate extends Sprite
	{
		public var url_loader:URLLoader = new URLLoader();	
		private var variables:URLVariables = new URLVariables();	
		public static var instance:WordDelegate;
		
		public static function getInstance():WordDelegate
		{
			if (! instance){
				instance = new WordDelegate()
			}
			return instance;
		}
				
		public function getDatas(pWordId:String): void {
			if(pWordId==null)return;
			this.variables.action = "word";
			this.variables.langSource = Model.getInstance().langSource;
			this.variables.langDest = Model.getInstance().langDest;
			this.variables.wordId = pWordId;
			var url_request:URLRequest = new URLRequest();
			url_request.method = URLRequestMethod.GET;
			url_request.url = Model.getInstance().data+"/index.php";
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
        
        Model.getInstance().keys.addItem((new WordVO(itemVO)));
        			
		}
	}
}