package org.p25366.y2008.components.themeExplorer.controler
{
	import flash.events.*;
	
	import org.p25366.y2008.components.themeExplorer.business.ThemeExplorerDelegate;
	import org.p25366.y2008.components.themeExplorer.business.ThemesDelegate;
	import org.p25366.y2008.components.themeExplorer.business.WordsDelegate;
	import org.p25366.y2008.components.themeExplorer.model.ThemeExplorerModel;
	import org.p25366.y2008.model.Model;
	
	public class ThemeExplorerControler
	{
		
		//private var _keysDelegate:ThemesDelegate = ThemesDelegate.getInstance();
		private var _delegate:ThemeExplorerDelegate = new ThemeExplorerDelegate();
		//private var _wordsDelegate:WordsDelegate = WordsDelegate.getInstance();
		
		public function ThemeExplorerControler()
		{
		}
		
		public function initThemeExplorer() : void {
			this._delegate.getDatas("word");
			Model.getInstance().currentState = "themes";
		}
		
		public function onThemeSelected( data : Object ) : void {
			this._delegate.getDatas("subthemes",data.selectedItem.id);
			Model.getInstance().currentState = "subthemes";
		}	
			
		public function onSubThemeSelected( data : Object ) : void{
			this._delegate.getDatas("words",data.selectedItem.id);
		}		
			
		public function onWordSelected( data : Object ) : void {
			Model.getInstance().wordVO.id = data.selectedItem.id;
		}
	}
}