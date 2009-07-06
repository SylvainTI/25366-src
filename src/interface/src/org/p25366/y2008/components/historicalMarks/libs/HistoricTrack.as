package  org.p25366.y2008.components.historicalMarks.libs {
  	import mx.core.UIComponent;  
   
     public class HistoricTrack extends UIComponent  
     {  
     	private var track_height:Number = 2.5;
             override public function get height():Number{  
                 return 20;  
             }  
   
         override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number):void{  
             super.updateDisplayList(unscaledWidth, unscaledHeight);  
   
             //create 2 circle that will act like round corners  
            /* this.graphics.beginFill(0xdadada,1);  
             this.graphics.drawCircle(0,0,2);  
             this.graphics.drawCircle(unscaledWidth,0,2);  
             this.graphics.endFill();  */
             //create the line that represents the track  
             this.graphics.moveTo(0,track_height*4);  
             this.graphics.lineStyle(track_height,0xdadada);  
             this.graphics.lineTo(unscaledWidth,track_height*4);  
  
         }  
  
     }  
}