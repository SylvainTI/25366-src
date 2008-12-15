package org.p25366.y2008.components.themeExplorer.controler
{
	import flash.events.*;
	
	import mx.controls.Alert;
	
	import org.p25366.y2008.components.themeExplorer.business.SubthemesDelegate;
	import org.p25366.y2008.components.themeExplorer.business.ThemesDelegate;
	import org.p25366.y2008.components.themeExplorer.business.WordsDelegate;
	import org.p25366.y2008.components.themeExplorer.model.ThemeExplorerModel;
	import org.p25366.y2008.model.Model;
	
	public class ThemeExplorerControler
	{
		
		private var _keysDelegate:ThemesDelegate = ThemesDelegate.getInstance();
		private var _subkeysDelegate:SubthemesDelegate = SubthemesDelegate.getInstance();
		private var _wordsDelegate:WordsDelegate = WordsDelegate.getInstance();
		
		public function ThemeExplorerControler()
		{
			
		}

		public function onThemeSelected( data : Object ) : void {
			this._subkeysDelegate.getDatas(data.selectedItem.id);
			ThemeExplorerModel.getInstance().currentState = "subthemes";
		}	
			
		public function onItemSelected( data : Object ) : void{
			this._wordsDelegate.getDatas(data.selectedItem.id);
		}		
			
		public function onWordSelected( data : Object ) : void {
			/**
			 * Ca n'est pas nécessaire, c'est à l'application de voir que wordVO est défini
			 */
			Model.getInstance().defPageVisible = true;		
			Model.getInstance().wordVO.id = data.selectedItem.id;
		}
		
		public function initThemeExplorer() : void {
			ThemeExplorerModel.getInstance().currentState = "themes";
			this._keysDelegate.getDatas();
		}
	}
}