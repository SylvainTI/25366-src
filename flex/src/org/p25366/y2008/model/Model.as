package org.p25366.y2008.model
{
	import mx.collections.ArrayCollection;
	
	import org.p25366.y2008.vo.*;
	
	[Bindable]
	public class Model
	{
		/**
		 * Attention, il ne faut rien prendre hors du dossier bin-debug, c'est ce qu'on mettra en ligne
		 * Arnaud
		 */
		//public var data:String = "http://srcbordeaux2009.com/25366/data/";
		//public var assets:String = "http://srcbordeaux2009.com/25366/data/media/";

		public var data:String = "data/";
		public var assets:String = "data/media/";

		public var langSource:String = "";
		public var langDest:String = "";

		public var keys:ArrayCollection = new ArrayCollection(); // Liste des clés
		
		
		
		public var keyVO:KeyVO;
		public var subkeyVO:SubkeyVO;
		public var wordsVO:WordsVO;
		public var wordVO:WordVO;
	
		public var langDestProvider:ArrayCollection = new ArrayCollection([{label:"français",data:"fr-fra"},{label:"chinois",data:"zh-zho"}]);
		public var langSrcProvider:ArrayCollection = new ArrayCollection([{label:"français",data:"fr-fra"},{label:"chinois",data:"zh-zho"}]);
		
		public var currentState:String;

		public var page:String = PAGE_CHOIX_LANGUE;
		public var souspage:String = SOUSPAGE_EXPLORATEUR_THEMES;
		
		/**
		 * Lister toutes les pages possibles, pour éviter les fautes de frappe
		 */
		public const PAGE_HOME:String = "home";
		public const PAGE_CHOIX_LANGUE:String = "choixLangue";
		
		public const SOUSPAGE_REPERES_HISTORIQUES:String = "reperesHistoriques";
		public const SOUSPAGE_EXPLORATEUR_THEMES:String = "explorateurThemes";
		
		private static var instance:Model;

		public function Model(enforcer:SingletonEnforcer)
		{
		}
		
		public static function getInstance():Model
		{
			if (! instance){
				instance = new Model(new SingletonEnforcer())
			}
			return instance;
		}	
	}
}
class SingletonEnforcer{}