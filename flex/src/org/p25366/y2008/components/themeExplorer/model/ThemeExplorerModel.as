package org.p25366.y2008.components.themeExplorer.model
{	
	import mx.collections.ArrayCollection;
	
	import org.p25366.y2008.components.themeExplorer.business.SubthemesDelegate;
	import org.p25366.y2008.components.themeExplorer.business.ThemesDelegate;
	import org.p25366.y2008.components.themeExplorer.business.WordsDelegate;
	
	[Bindable]
	public class ThemeExplorerModel
	{
		public var themes_arr:ArrayCollection;
		public var subthemes_arr:ArrayCollection;
		public var words_arr:ArrayCollection;
		
		private var _keysDelegate:ThemesDelegate = ThemesDelegate.getInstance();
		private var _subkeysDelegate:SubthemesDelegate = SubthemesDelegate.getInstance();
		private var _wordsDelegate:WordsDelegate = WordsDelegate.getInstance();

		public static var instance:ThemeExplorerModel;
		
		public static function getInstance():ThemeExplorerModel
		{
			if (! instance){
				instance = new ThemeExplorerModel()
			}
			return instance;
		}
		
		public function openSection(pSection:String,pId:String = null) : void {
			if(pSection==null && pId==null && pSection!="themes")throw (new Error("Erreur ThemeExplorer.openSection : Parametre nul"));
			switch(pSection){
				case "themes":
				this._keysDelegate.getDatas();
				this._keysDelegate.addEventListener("themesLoaded",onThemesLoaded);
				break;
				case "subthemes":
				this._subkeysDelegate.getDatas(pId);
				this._subkeysDelegate.addEventListener("subThemesLoaded",onSubThemeLoaded);
				break;
				case "words":
				this._wordsDelegate.getDatas(pId);
				this._wordsDelegate.addEventListener("wordsLoaded",onWordsLoaded);
				break;
			}
		}
		
		private function onSubThemeLoaded( event : Event ) : void {
				this.subthemes_arr = this._subkeysDelegate.subkeys_arr;
		}
		
		private function onWordsLoaded( event : Event ) : void {
				this.words_arr = this._wordsDelegate.words_arr;
		}
		
		private function onThemesLoaded( event : Event ) : void {
				this.themes_arr = this._keysDelegate.themes_arr;
		}
		
	}
}
