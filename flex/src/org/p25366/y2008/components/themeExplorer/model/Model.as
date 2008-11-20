package org.p25366.y2008.model
{
	import mx.collections.ArrayCollection;
	
	import org.p25366.y2008.vo.KeyVO;
	
	[Bindable]
	public class Model
	{
		public var keys:ArrayCollection;
		public var currentKey:KeyVO;
		public function Model(enforcer:SingletonEnforcer)
		{
			keys = new ArrayCollection();
			var keyVO:KeyVO = new KeyVO();
			keyVO.label = "Vie";
			keyVO.image = "zezef§/zef/Zef/zesf.jpg";
			keyVO.children = new ArrayCollection();
			keys.addItem(keyVO);
				var subkeyVO:KeyVO = new KeyVO();
				subkeyVO.parent = keyVO;
				subkeyVO.label = "Naissance";
				subkeyVO.image = "zezefzef/Zef/zesf.jpg";
				keyVO.children.addItem(subkeyVO);			
			keyVO = new KeyVO();
			keyVO.label = "Temps";
			keyVO.image = "zezef§/zef/Zef/zesf.jpg";
			keys.addItem(keyVO);
			keyVO = new KeyVO();
			keyVO.label = "Espace";
			keyVO.image = "zezef§/zef/Zef/zesf.jpg";
			keys.addItem(keyVO);
		}
		public static var instance:Model;
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