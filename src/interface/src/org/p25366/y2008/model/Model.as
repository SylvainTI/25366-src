package org.p25366.y2008.model
{
	import mx.collections.ArrayCollection;
	import mx.collections.XMLListCollection;
	
	import org.p25366.y2008.vo.*;
	
	[Bindable]
	public class Model
	{
		public var data:String = "data/";
		public var langSource:String = "fr-fra";
		public var langDest:String = "zh-zho";
		
		public var elements:XMLListCollection = new XMLListCollection();
		public var structure:XMLListCollection = new XMLListCollection();
		public var langs:XMLListCollection = new XMLListCollection();
		
		/*
		public var SM:SwfManager;
		
		public var keyVO:KeyVO;
		public var subkeyVO:SubkeyVO;
		public var wordVO:WordsVO;
	
		
		*/
		public var langDestProvider:ArrayCollection;
		public var langSrcProvider:ArrayCollection;
		public var langSrcString:String="";
		public var langDestString:String="";
		
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
