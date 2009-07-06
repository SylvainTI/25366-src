package org.p25366.y2008.event
{
	import flash.events.*;
	
	public class ProjectEvents extends Event
	{
		public function ProjectEvents(type:String, bubbles:Boolean=false, cancelable:Boolean=false) 
		{
  				 super(type, bubbles, cancelable); 
		}
		public var wordId:String;
  		public static const OPEN_PAGE : String = "openPage";
	}
}