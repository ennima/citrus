package
{
	import citrus.core.starling.StarlingState;
	import citrus.objects.platformer.box2d.Platform;
	import citrus.physics.box2d.Box2D;
	
	public class GameState extends StarlingState
	{
		public function GameState()
		{
			super();
		}
		
		override public function initialize():void
		{
			super.initialize();
			
			var physics:Box2D = new Box2D("box2d");
			physics.visible = true;
			add(physics);
			
			var floor:Platform = new Platform("floor",{x:160,y:480,width:320, height:50});
			add(floor);
		}
	}
}