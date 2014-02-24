package
{
	
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.display3D.Context3DProfile;
	import flash.events.Event;
	
	import citrus.core.starling.StarlingCitrusEngine;
	import citrus.core.starling.ViewportMode;

	[SWF(frameRate="60", width="320", height="480")]
	public class cit2m extends StarlingCitrusEngine
	{
		public function cit2m()
		{
			super();
			_baseWidth = 320;
			_baseHeight = 480;
			_viewportMode = ViewportMode.FULLSCREEN;
			_fullScreen = true;	
			
			//_assetSizes = [1, 1.5, 2, 4, 5];
		}
		
		override protected function handleAddedToStage(e:Event):void
		{
			super.handleAddedToStage(e);
			_context3DProfiles = [Context3DProfile.BASELINE,Context3DProfile.BASELINE_EXTENDED];
			_context3DProfileTestDelay = 125;
			setUpStarling(true,1,null,"auto");
		}
		
		override public function handleStarlingReady():void
		{
			state = new GameState();
		}
	}
}