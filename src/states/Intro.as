package states
{
	/**
	 * ...
	 * @author Felipe Budinich
	 */
	
	import org.flixel.*;
	import states.*;
	import registry.AssetsRegistry;
	import registry.GameState;
	
	public class Intro extends FlxState
	{
		private var credits : FlxSprite = new FlxSprite(375, 386, AssetsRegistry.CREDITS);
		private var oscillate : Boolean = true;
		private var enterGameTimer : Number = 0.0;
		private var shouldEnterGame : Boolean = false;
		
		public function Intro() 
		{
			
		}
		
		override public function create():void {
			
			var clickSprite : FlxSprite = new FlxSprite(19, 19, AssetsRegistry.CLICKTOPLAY);
			clickSprite.blend = "multiply";
			credits.blend = "multiply";
			credits.alpha = .5;
			GameState.backgroundImage = new FlxGroup();
			GameState.backgroundSprite = new FlxSprite(0, 0);
			GameState.backgroundSprite.loadGraphic(AssetsRegistry.BG_01, false, false, 720, 480, true);
			add(GameState.backgroundImage);
			add(clickSprite);
			add(credits);
			GameState.backgroundImage.add(GameState.backgroundSprite);
		}
		
		override public function update():void {
			
			if (oscillate) {
				credits.alpha += .3*FlxG.elapsed;
			}
			
			if (oscillate && credits.alpha > 0.85) {
				oscillate = false;
			}
			
			if (!oscillate) {
				credits.alpha -= .3*FlxG.elapsed;
			}
			
			if (!oscillate && credits.alpha < 0.15) {
				oscillate = true;
			}
			
			if (shouldEnterGame) {
				enterGameTimer += 1 * FlxG.elapsed;
			}
			
			if (enterGameTimer > .9) {
				FlxG.switchState(new Game());
			}
			
			//Click to start game
			if (FlxG.mouse.justReleased()) 
			{
				FlxG.play(AssetsRegistry.CR);
				shouldEnterGame = true;
			}	
			
		}

	}

}