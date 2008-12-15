package org.p25366.y2008.components.definitionPage.model
{
	import mx.controls.Alert;
	
	import org.p25366.y2008.components.definitionPage.business.WordDelegate;
	import org.p25366.y2008.vo.WordVO;
	
	[Bindable]
	public class DefinitionPageModel
	{
		private static var instance:DefinitionPageModel;
		
		public var word:WordVO = new WordVO();

		public static function getInstance():DefinitionPageModel
		{
			if (! instance){
				instance = new DefinitionPageModel()
			}
			return instance;
		}
					
	}
}