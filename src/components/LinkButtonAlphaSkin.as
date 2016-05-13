package components
{
	import mx.skins.halo.LinkButtonSkin;
	import flash.geom.Matrix;
	public class LinkButtonAlphaSkin extends LinkButtonSkin
	{
		public function LinkButtonAlphaSkin()
		{
			super();
		}
		override protected function drawRoundRect(x:Number, y:Number, width:Number, height:Number, cornerRadius:Object=null, color:Object=null, alpha:Object=null, gradientMatrix:Matrix=null, gradientType:String="linear", gradientRatios:Array=null, hole:Object=null):void
		{
			super.drawRoundRect(x, y, width, height, cornerRadius, color, 0.2, gradientMatrix, gradientType, gradientRatios, hole);
		}
	}
}