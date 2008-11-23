package org.p25366.y2008.components.themeExplorer.model
{	
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	
	import org.p25366.y2008.components.themeExplorer.business.SubthemesDelegate;
	import org.p25366.y2008.components.themeExplorer.business.WordsDelegate;
	
	[Bindable]
	public class ThemeExplorerModel
	{
		public var subthemes_arr:ArrayCollection;
		public var words_arr:ArrayCollection;
		
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
		
		public function openSection(pSection:String,pId:String) : void {
			switch(pSection){
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
		
	}
}
