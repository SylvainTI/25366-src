package org.p25366.y2008.model
{
	import mx.collections.ArrayCollection;
	
	import org.p25366.y2008.event.ProjectEvents;
	import org.p25366.y2008.vo.KeyVO;
	
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
		
		/**
		 * Pas de logique applicative dans le modèle !
		 * Arnaud
		 */
		public function  initDefinitionPage(event : ProjectEvents) : void{
			var event2:ProjectEvents = event;
			this.dispatchEvent(event2);
		}
		
		public function Model(enforcer:SingletonEnforcer)
		{
			// Pas d'init dans le modèle ! Arnaud
			addEventListener(ProjectEvents.OPEN_PAGE, initDefinitionPage);
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