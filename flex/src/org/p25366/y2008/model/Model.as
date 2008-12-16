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
		public var data:String = "data/";
		public var assets:String = "data/media/";

		public var langSource:String = "";
		public var langDest:String = "";

		public var keys:ArrayCollection; // Liste des clés
		/**
		 * Ces 3 variables doivent contrôler l'affichage des thèmes
		 * Si clé null, pas de clé choisie, etc
		 * Arnaud
		 */
		public var keyVO:KeyVO; // clé sélectionnée
		public var subkeyVO:SubkeyVO; // sous clé sélectionnée
		public var wordVO:WordVO; // mot sélectionné
		
		/**
		public var themesProvider:ArrayCollection; // = keys
		public var subthemesProvider:ArrayCollection; // = keyVO.children
		public var wordsProvider:ArrayCollection; // = subkeyVO.children
		*/
		
		public var currentState:String;

		public var page:String = PAGE_CHOIX_LANGUE;
		
		/**
		 * Lister toutes les pages possibles, pour éviter les fautes de frappe
		 */
		public static const PAGE_CHOIX_LANGUE:String = "choixLangue";
		
	
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