package org.p25366.y2008.components.definitionPage.controler
{
	import org.p25366.y2008.components.definitionPage.business.WordDelegate;
	import org.p25366.y2008.vo.WordVO;
	/**
	 * Ce controller est inutile !
	 * Arnaud
	 */
	[Bindable]
	public class DefinitionPageControler
	{
		
		public var _word:WordDelegate = WordDelegate.getInstance();
		
		public function DefinitionPageControler()
		{
		}
		
		
	}
}