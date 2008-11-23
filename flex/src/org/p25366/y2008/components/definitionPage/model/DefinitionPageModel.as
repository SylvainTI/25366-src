package org.p25366.y2008.components.definitionPage.model
{
	import org.p25366.y2008.components.definitionPage.business.WordDelegate;
	
	[Bindable]
	public class DefinitionPageModel
	{
		private var _word:WordDelegate = WordDelegate.getInstance();
		private static var instance:DefinitionPageModel;
		
		public static function getInstance():DefinitionPageModel
		{
			if (! instance){
				instance = new DefinitionPageModel()
			}
			return instance;
		}
		
		public function openPage(pId:String) : void {
				this._word.getDatas(pId);
				this._word.addEventListener("definitionPageLoaded",onSubThemeLoaded);
		}
		
		private function onSubThemeLoaded( event : Event ) : void {

		}
	}
}