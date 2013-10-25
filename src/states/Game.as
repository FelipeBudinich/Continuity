package states
{
	/**
	 * ...
	 * @author Felipe Budinich
	 */
	
	import org.flixel.*;
	import org.fb.*;
	import org.flixel.system.input.Keyboard;
	import states.*;
	import flash.events.KeyboardEvent;
	import org.flixel.system.input.Input;
	import registry.*;
	import org.flixel.FlxSound;
	import org.fb.Music;

	
	public class Game extends FlxState
	{
		private var introFinished:Boolean = false;
		private var introLenght:int = 116;

		
		public function Game() 
		{
		}
		
		private function typeSnd():void {
			if (GameState.currentText[GameState.paragraphPosition] != "SPACE" && GameState.currentText[GameState.paragraphPosition] != "*") {
				switch(RandomNumbers.rand(1,5)) {
						case 1: FlxG.play(AssetsRegistry.TYPE_01); break;
						case 2: FlxG.play(AssetsRegistry.TYPE_02); break;
						case 3: FlxG.play(AssetsRegistry.TYPE_03); break;
						case 4: FlxG.play(AssetsRegistry.TYPE_04); break;
						case 5: FlxG.play(AssetsRegistry.TYPE_05); break;
					}	
			}
			
				
			
		}
		

		
		override public function create():void {
			
			FlxG.bgColor = 0xffffffffff;
			GameState.backgroundImage = new FlxGroup();
			GameState.inputTextGroup = new FlxGroup();
			GameState.inputCursorGroup = new FlxGroup();
			GameState.inputCursorGroup_02 = new FlxGroup();
			GameState.inputCursorGroup_03 = new FlxGroup();
			
			GameState.backgroundSprite = new FlxSprite(0, 0);
			GameState.backgroundSprite.loadGraphic(AssetsRegistry.BG_01, false, false, 720, 480, true);
			
			add(GameState.backgroundImage);
			GameState.backgroundImage.add(GameState.backgroundSprite);
			
			add(GameState.inputTextGroup);
			add(GameState.inputCursorGroup);
			add(GameState.inputCursorGroup_02);
			add(GameState.inputCursorGroup_03);
			StringOperations.loadParagraph(GameState.currentParagraph);
		}
		
		private static function resetStory():void {
			if (GameState.paragraphPosition >= GameState.currentText.length)
				{	
					GameState.inputTextGroup.clear();

					GameState.paragraphPosition = 0;
					
					if (GameState.currentParagraph >= 26) {
						GameState.currentParagraph = 3;
					} else {
						GameState.currentParagraph += 1;
					}
					StringOperations.loadParagraph(GameState.currentParagraph);
				}
		}
			
		override public function update():void {
			
			Music.playMusic();
			
			GameState.keyTimer -= FlxG.elapsed;

			if (introFinished == true) {
			
			if ( GameState.keyTimer <= 0 && (GameState.currentText[GameState.paragraphPosition] == "APOSTROPHE" || GameState.currentText[GameState.paragraphPosition] == "PERIOD" || GameState.currentText[GameState.paragraphPosition] == "SEMICOLON" || GameState.currentText[GameState.paragraphPosition] == "QUESTIONMARK" || GameState.currentText[GameState.paragraphPosition] == "SPACE" || GameState.currentText[GameState.paragraphPosition] == "COMMA" || GameState.currentText[GameState.paragraphPosition] == "*")) {
			
				typeSnd();
				
				StringOperations.drawCliche(GameState.currentText[GameState.paragraphPosition]);
				StringOperations.drawNextCliche(GameState.currentText[GameState.paragraphPosition]);
				StringOperations.drawNextCliche_02(GameState.currentText[GameState.paragraphPosition]);
				StringOperations.drawNextCliche_03(GameState.currentText[GameState.paragraphPosition]);

				GameState.paragraphPosition += 1;
				
				GameState.keyTimer = 0.01;
				
			}
			
			if(GameState.keyTimer <= 0 && FlxG.keys[GameState.currentText[GameState.paragraphPosition]])
			{
				typeSnd();

				StringOperations.drawCliche(GameState.currentText[GameState.paragraphPosition]);
				StringOperations.drawNextCliche(GameState.currentText[GameState.paragraphPosition]);
				StringOperations.drawNextCliche_02(GameState.currentText[GameState.paragraphPosition]);
				StringOperations.drawNextCliche_03(GameState.currentText[GameState.paragraphPosition]);

				GameState.paragraphPosition += 1;
				GameState.keyTimer = 0.1;
				
			}
			resetStory();
			
			StringOperations.drawNextCliche(GameState.currentText[GameState.paragraphPosition]);
			StringOperations.drawNextCliche_02(GameState.currentText[GameState.paragraphPosition]);
			StringOperations.drawNextCliche_03(GameState.currentText[GameState.paragraphPosition]);

			}
			
			if (introFinished == false) {

				if (GameState.keyTimer <= 0 && GameState.paragraphPosition <= introLenght) {
					StringOperations.drawCliche(GameState.currentText[GameState.paragraphPosition]);
					typeSnd();
					GameState.paragraphPosition += 1;
					GameState.keyTimer = 0.1;
				 }

				 if (GameState.paragraphPosition >= introLenght) {
					 introFinished = true;
				 }

			}
			
			
		}
		

	}

}