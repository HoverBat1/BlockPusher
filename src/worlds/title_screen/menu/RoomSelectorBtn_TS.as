package worlds.title_screen.menu 
{
	/**
	 * ...
	 * @author Jacob Stewart
	 */
	public class RoomSelectorBtn_TS extends TitleMenuButton 
	{
		
		public function RoomSelectorBtn_TS(btnsIndex:uint, onClick:Function=null, text:String="TextPlus", x:Number=0, y:Number=0, options:Object=null, layer:int=Game.TEXTLAYER) 
		{
			super(btnsIndex, onClick, text, x, y, options, layer);
		}
		
		override public function init():void 
		{
			super.init();
			
			
			normalAlpha = ALPHAUNQUAL;
			qualified = false;
			activationCheck();
		}
		// ----------------------------------------------------------------------
		
		
		override public function activationCheck():void 
		{
			if (SaveFileData.getRoomCompleteCount(SaveFileData.getSaveFileInUse()) > 0)
			{
				normalAlpha = NORMALALPHA;
				qualified = true;
				super.activationCheck();
			}
		}
		// ----------------------------------------------------------------------
		
		
		
		// ----------------------------------------------------------------------
		
		
		
		// ----------------------------------------------------------------------
		
	}

}