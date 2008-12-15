package org.p25366.y2008.model
{
	import mx.collections.ArrayCollection;
	
	import org.p25366.y2008.components.definitionPage.model.DefinitionPageModel;
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

		public var keys:ArrayCollection;
		/**
		 * Ces 3 variables doivent contrôler l'affichage des thèmes
		 * Si clé null, pas de clé choisie, etc
		 * Arnaud
		 */
		public var keyVO:KeyVO;
		public var subKeyVO:SubkeyVO;
		public var wordVO:WordVO;

		public var page:String = PAGE_CHOIX_LANGUE;
		
		/**
		 * C'est quoi ça ? 
		 * A priori, pas nécessaire. 
		 * Si changement de page, alors jouer avec page
		 * Arnaud
		 */
		public var defPageVisible:Boolean = false;
<<<<<<< .mine
=======
		
		/**
		 * Pas de privé dans le modèle !
		 * Arnaud
		 */
		//private var defPageProvider:DefinitionPageModel;
		
		/**
		 * Lister toutes les pages possibles, pour éviter les fautes de frappe
		 */
		public static const PAGE_CHOIX_LANGUE:String = "choixLangue";
		
		private static var instance:Model;
>>>>>>> .r119
<<<<<<< .mine
		public var wordVO:WordVO = new WordVO();
	
		private static var instance:Model;

=======
>>>>>>> .r119
		public function Model(enforcer:SingletonEnforcer)
		{
<<<<<<< .mine
=======
			//defPageProvider = DefinitionPageModel.getInstance();
			//defPageProvider.word = wordVO;
>>>>>>> .r119
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