package org.p25366.y2008.components.themeExplorer.model
{	
	import mx.collections.ArrayCollection;
	
	[Bindable]
	public class ThemeExplorerModel
	{
		public var subthemes:ArrayCollection;
		
		public static var instance:ThemeExplorerModel;
		public static function getInstance():ThemeExplorerModel
		{
			if (! instance){
				instance = new ThemeExplorerModel()
			}
			return instance;
		}
		
	}
}
