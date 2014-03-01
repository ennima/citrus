package  
{
	
	import citrus.core.starling.StarlingState;
	import citrus.objects.platformer.box2d.Hero;
	import citrus.objects.platformer.box2d.Platform;
	import citrus.physics.box2d.Box2D;

	/**
	 * ...
	 * @author ennima
	 */
	public class GameState extends StarlingState 
	{
		
		public function GameState() 
		{
			super();
			
		}
		
		override public function initialize():void
		{
				super.initialize();
				var box2d:Box2D = new Box2D("box2d");
				box2d.visible = true;
				add(box2d);
				
				var floor:Platform = new Platform("floor");
				floor.width = stage.stageWidth;
				floor.height = 20;
				floor.x = stage.stageWidth / 2;
				floor.y = stage.stageHeight;
				add(floor);
				
				var hero:Hero = new Hero("hero");
				hero.inputChannel = 1;
				add(hero);
		}
	}

}