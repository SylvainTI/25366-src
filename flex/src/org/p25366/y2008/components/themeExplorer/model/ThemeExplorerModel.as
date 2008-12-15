package org.p25366.y2008.components.themeExplorer.model
{	
	import mx.collections.ArrayCollection;
	
	[Bindable]
	public class ThemeExplorerModel
	{
		public var currentState:String;
		
		public var themes_arr:ArrayCollection;
		public var subthemes_arr:ArrayCollection;
		public var words_arr:ArrayCollection;

		public static var instance:ThemeExplorerModel;
		
		public static function getInstance():ThemeExplorerModel
		{
			if (! instance){
				instance = new ThemeExplorerModel()
			}
			return instance;
		}
		
		public function ThemeExplorerModel(){
		}
	}
}
