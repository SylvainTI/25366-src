package org.p25366.y2008.components.definitionPage.model
{
	import flash.events.Event;
	
	import org.p25366.y2008.components.definitionPage.business.WordDelegate;
	import org.p25366.y2008.event.ProjectEvents;
	import org.p25366.y2008.vo.WordVO;
	
	[Bindable]
	public class DefinitionPageModel
	{
		public var word:WordVO = new WordVO();
		private var _word:WordDelegate = WordDelegate.getInstance();
		private static var instance:DefinitionPageModel;
		
		public static function getInstance():DefinitionPageModel
		{
			if (! instance){
				instance = new DefinitionPageModel()
			}
			return instance;
		}
		
		public function openPage(event : ProjectEvents) : void {
				this._word.getDatas(event.wordId);
				this._word.addEventListener("definitionPageLoaded",onSubThemeLoaded);
		}
		
		private function onSubThemeLoaded( event : Event ) : void {
			this.word = _word.word;
		}
		
	}
}