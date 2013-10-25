package org.fb 
{
	/**
	 * ...
	 * @author Felipe Budinich
	 */
	import registry.AssetsRegistry;
	import registry.GameState;
	import org.flixel.FlxSound;
	import org.flixel.FlxG;
	 
	public class Music 
	{
		

	
		
		public function Music() 
		{
			
		}
		
		public static function playMusic():void {

			if (GameState.currentParagraph == 2 && GameState.paragraphPosition == 53 && GameState.song_02_played == false) {
				GameState.song_02 = FlxG.loadSound (AssetsRegistry.MUSIC_02, 0.2, true);
				GameState.song_02.fadeIn(9);
				GameState.song_02_played = true;
				FlxG.play(AssetsRegistry.WALKMAN);
			}
		}
		
	}

}