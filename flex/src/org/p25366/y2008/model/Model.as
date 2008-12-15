package org.p25366.y2008.model
{
	import mx.collections.ArrayCollection;
	
	import org.p25366.y2008.components.definitionPage.model.DefinitionPageModel;
	import org.p25366.y2008.vo.KeyVO;
	import org.p25366.y2008.vo.WordVO;
	
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
		public var currentKey:KeyVO;
		public var page:String = "choixLangue";
		public var defPageVisible:Boolean = false;
		private static var instance:Model;
		public var wordVO:WordVO = new WordVO();
		private var defPageProvider:DefinitionPageModel;
		
		public function Model(enforcer:SingletonEnforcer)
		{
			defPageProvider = DefinitionPageModel.getInstance();
			defPageProvider.word = wordVO;
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