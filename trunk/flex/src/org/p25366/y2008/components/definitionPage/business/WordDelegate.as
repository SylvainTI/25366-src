package org.p25366.y2008.components.definitionPage.business
{
	import flash.display.*;
	import flash.events.*;
	import flash.net.*;
	
	import mx.controls.Alert;
	
	import org.p25366.y2008.model.Model;
	import org.p25366.y2008.vo.WordVO;
	//import com.carlcalderon.arthropod.Debug;
	
	[Bindable]
	public class WordDelegate extends Sprite
	{
		public var word:WordVO = new WordVO();
		public var url_loader:URLLoader = new URLLoader();	
		private var variables:URLVariables = new URLVariables();	
		public static var instance:WordDelegate;
		
		private const URL_SERVICE:String = Model.getInstance().data+"/index.php";
		private const LANG_DEST:String = Model.getInstance().langDest;
		private const LANG_SOURCE:String = Model.getInstance().langSource;
		private const ACTION:String = "word";
		
		public static function getInstance():WordDelegate
		{
			if (! instance){
				instance = new WordDelegate()
			}
			return instance;
		}
				
		public function getDatas(pWordId:String): void {
			if(pWordId==null)return;
			this.variables.action = this.ACTION;
			this.variables.langSource = this.LANG_SOURCE;
			this.variables.langDest = this.LANG_DEST;
			this.variables.wordId = pWordId;
			var url_request:URLRequest = new URLRequest();
			url_request.method = URLRequestMethod.GET;
			url_request.url = this.URL_SERVICE;
			url_request.data = this.variables;
			this.url_loader.load(url_request);
			this.url_loader.addEventListener(Event.COMPLETE,onXmlLoaded);
		}
	
		private function onXmlLoaded( event : Event ) : void {
			var xml:XML = new XML(event.target.data);
			for each( var element:XML in xml){
				var wordVO:WordVO = new WordVO();
				wordVO.id = element.id.toString();
				wordVO.genderDest = element.destination.genre.toString();
				wordVO.genderSrc = element.source.genre.toString();
				wordVO.langDest = element.destination.lang.toString();
				wordVO.langSrc = element.source.lang.toString();
				wordVO.libDest = element.destination.lib.toString();
				wordVO.libSrc =element.source.lib.toString();
				wordVO.sensDest = element.destination.sens.toString();
				wordVO.sensSrc = element.source.sens.toString();
				wordVO.tags = element.tags.toString();
				this.word = wordVO;
			}			
		this.dispatchEvent(new Event("definitionPageLoaded"));
		}
	}
}