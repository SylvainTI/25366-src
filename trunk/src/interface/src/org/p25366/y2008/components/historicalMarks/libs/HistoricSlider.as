package org.p25366.y2008.components.historicalMarks.libs {
	
     import flash.display.DisplayObject;
     
     import mx.controls.sliderClasses.SliderThumb;
   
     public class HistoricSlider extends SliderThumb  
     {  

   
            override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number):void{  
			super.updateDisplayList(unscaledWidth,unscaledHeight);  
			 
			 
			/*this.graphics.beginFill(0x000000,1);  
			this.graphics.drawCircle(2,-8,4);  
			this.graphics.endFill();*/
			 /*
			 var triangleHeight:uint = 16;
			var triangleBase:uint = 10;
			this.graphics.beginFill(0x676767);
			this.graphics.moveTo(0, triangleHeight/2);
			this.graphics.lineTo(triangleBase, triangleHeight/2);
			this.graphics.lineTo(-triangleBase/2, -triangleHeight/2);
			this.graphics.lineTo(-triangleBase/2, triangleHeight/2);  
			this.graphics.endFill();
			 */
			var triangleHeight:uint = 16;
			var triangleBase:uint = 10;
			this.graphics.beginFill(0x676767);
			this.graphics.moveTo(triangleHeight/2, 5);
			this.graphics.lineTo(triangleHeight, triangleHeight+5);
			this.graphics.lineTo(0, triangleHeight+5);
			this.graphics.lineTo(triangleHeight/2, 5);  

			
			this.graphics.endFill();
			this.removeChild(this.getChildAt(0));
		
        }
         public function HistoricSlider(){  
             super();  
 		}    
      }  
}