package org.p25366.y2008.components.themeExplorer.model
{	
	import org.p25366.y2008.components.themeExplorer.business.SubkeysDelegate;
	import org.p25366.y2008.components.themeExplorer.business.WordsDelegate;
	
	[Bindable]
	public class Model
	{
		public static var instance:Model;
	
		public function Model()
		{
			
		}
		
		public static function getInstance():Model
		{
			if (! instance){
				instance = new Model()
			}
			return instance;
		}
		
	}
}
