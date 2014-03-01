package 
{
	import citrus.core.CitrusEngine;
	import citrus.core.starling.StarlingCitrusEngine;
	import flash.display.Sprite;
	import flash.events.Event;
	import citrus.input.controllers.Keyboard;
	
	
	/**
	 * ...
	 * @author ennima
	 */
	[SWF(backgroundColor = "0xeeeeee",width="480", height ="320", frameRate="60")]
	public class Main extends StarlingCitrusEngine 
	{
		
		
		public function Main():void 
		{
			
			
		}
		
		override protected function handleAddedToStage (e:Event):void
		{
			super.handleAddedToStage(e);
			setUpStarling(true);
			_input.keyboard.resetAllKeyActions();
 
			_input.keyboard.addKeyAction("up", Keyboard.W, 1);
			_input.keyboard.addKeyAction("left", Keyboard.A, 1);
			_input.keyboard.addKeyAction("right", Keyboard.D, 1);
			_input.keyboard.addKeyAction("duck", Keyboard.S, 1);
			_input.keyboard.addKeyAction("jump", Keyboard.SPACE, 1);
			_input.keyboard.addKeyAction("left", Keyboard.LEFT, 1);
			_input.keyboard.addKeyAction("right", Keyboard.RIGHT, 1);
			
			
		}
		
		override public function handleStarlingReady ():void
		{
			state = new GameState();
		}
		
	}
	
}