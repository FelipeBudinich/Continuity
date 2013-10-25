package org.fb 
{
	import registry.GameState;
	import registry.Config;
	import registry.AssetsRegistry;
	import org.flixel.*;
	/**
	 * ...
	 * @author Felipe Budinich
	 */
	public class StringOperations 
	{
		public static var input_array:Array;
		private static var ret_clicheNextString:Class;
		
		public function StringOperations() 
		{
		
		}
		
		public static function stringToInputArray ( input_string : String ) : void
		{
			
			input_string = input_string.toUpperCase();
			input_array = input_string.split('')
			
			for (var i:int = 0; i < input_array.length; i ++ )
			{
				if (input_array[i] == " ") {
					input_array[i] = "SPACE";
				}
				
				if (input_array[i] == ",") {
					input_array[i] = "COMMA";
				}
				
				if (input_array[i] == ".") {
					input_array[i] = "PERIOD";
				}
				
				if (input_array[i] == "'") {
					input_array[i] = "APOSTROPHE";
				}
				
				if (input_array[i] == "?") {
					input_array[i] = "QUESTIONMARK";
				}
			}

			GameState.currentText = input_array;

		}
		
		public static function loadParagraph ( paragraph : int ) : void
		{
			switch(paragraph)
{
case 0:
	GameState.text = "I began writing the*novel a few days ago,*can't seem to be able*to finish it.**...maybe...**I should just*start typing? ";
	break;
case 1:
	GameState.text = "But first,*I feel like gazing*out the window,*the cherry tree*orchard, blossoms.**Hanami. ";
	break;
case 2:
	GameState.text = "Then I sat in my*favorite recliner,*I set my walkman on repeat,*and I let my hands*stroke the keyboard once,*then again, ";
	break;
case 3:
	GameState.text = "Typing the final chapter. ";
	break;
case 4:
	GameState.text = "Taking an almost perverse*pleasure in letting myself*tear through**line...**after...**line... ";
	break;
case 5:
	GameState.text = "Then,*beyond the large windows,**hanafubuki,**the twilight air dancing*below the orchard. ";
	break;
case 6:
	GameState.text = "Word by word,*stroke the keyboard once,*then again,*absorbed by the heroe's*sordid dilemma, ";
	break;
case 7:
	GameState.text = "I cast myself adrift*towards the images which*concerted, acquiring*color and movement.**First the woman came in,*mistrustful. ";
	break;
case 8:
	GameState.text = "Then her lover arrived,*his face hurt from the*whiplash of a branch. ";
	break;
case 9:
	GameState.text = "She clotted the blood with*her kisses, but her*caresses were rejected.**He had not come to repeat*the rituals of a secret*passion. ";
	break;
case 10:
	GameState.text = "The dagger grew warm*against his chest.**A breathy dialog ran*through the pages*like a stream of serpents, ";
	break;
case 11:
	GameState.text = "Her caresses*swirled around his body*as if trying to hold him *and dissuade him, ";
	break;
case 12:
	GameState.text = "Yet they drew at the same*time the abominable shape*of another body which*had to be destroyed.**Nothing had been forgotten, ";
	break;
case 13:
	GameState.text = "alibis,*mishaps,*possible mistakes. ";
	break;
case 14:
	GameState.text = "From this hour forth,*each moment would have its*use, minutely detailed. ";
	break;
case 15:
	GameState.text = "It began to get dark.*they separated at the door*of the cabin. ";
	break;
case 16:
	GameState.text = "She had to follow the*trail that led north.**From the opposite trail,*he turned for a moment*to watch her run.**Her hair flowing loosely. ";
	break;
case 17:
	GameState.text = "He then ran in turn,*taking shelter beneath*the cherry trees,**hanafubuki. ";
	break;
case 18:
	GameState.text = "In the mallow mist*of twilight,*he was able to make out*the avenue that led*to the house. ";
	break;
case 19:
	GameState.text = "The dogs were not*supposed to bark,**and they didn't. ";
	break;
case 20:
	GameState.text = "The majordomo would not*be in at this hour,**and he wasn't.";
	break;
case 21:
	GameState.text = "He climbed the three*stairs of the porch*and went in. ";
	break;
case 22:
	GameState.text = "first a blue room,*then a gallery,*then a carpeted staircase. ";
	break;
case 23:
	GameState.text = "Upstairs, *two doors.*No one would be in the *first room,*no one in the second. ";
	break;
case 24:
	GameState.text = "The door of the study,*the clenched dagger in his*hand, the light of those*large windows, ";
	break;
case 25:
	GameState.text = "The old recliner,*the head of a man writing a novel. ";
	break;
case 26:
	GameState.text = "Stroking the keyboard once,*then again, ";
	break;
}
			resetPosition();
			stringToInputArray(GameState.text);
			
		}
		
		private static function resetPosition () : void {
			GameState.x_counter = 1;



			GameState.y_counter = 1;

		}
		
		public static function drawCliche ( clicheString : String ) : void
		{
				trace(GameState.currentParagraph);
				trace(GameState.paragraphPosition);
				
				if (GameState.x_counter+2 < Config.gameWidth / Config.tileWidth) {
					GameState.x_counter++;
				} else {
					GameState.x_counter = 1;
					GameState.y_counter++;
				}
				
				var _cliche : String = GameState.currentText[GameState.paragraphPosition];
				var _clicheAlpha : Number = (RandomNumbers.rand(57, 62)) / 100;
				
				if (_cliche == "*") {
					GameState.x_counter = 1;
					GameState.y_counter++;
					
				} else {
					GameState.textSprite = new FlxSprite((Config.tileWidth * GameState.x_counter)+GameState.cursorOffset_x, Config.tieHeight * GameState.y_counter);
				switch (_cliche) {
					case "A": 
					GameState.textSprite.loadGraphic(AssetsRegistry.ACLICHE, false, false, 32, 32, false);
					GameState.textSprite.alpha = _clicheAlpha;
					break;
					case "B": 
					GameState.textSprite.loadGraphic(AssetsRegistry.BCLICHE, false, false, 32, 32, false);
					GameState.textSprite.alpha = _clicheAlpha;
					break;
					case "C": 
					GameState.textSprite.loadGraphic(AssetsRegistry.CCLICHE, false, false, 32, 32, false);
					GameState.textSprite.alpha = _clicheAlpha;
					break;
					case "D": 
					GameState.textSprite.loadGraphic(AssetsRegistry.DCLICHE, false, false, 32, 32, false);
					GameState.textSprite.alpha = _clicheAlpha;
					break;
					case "E": 
					GameState.textSprite.loadGraphic(AssetsRegistry.ECLICHE, false, false, 32, 32, false);
					GameState.textSprite.alpha = _clicheAlpha;
					break;
					case "F": 
					GameState.textSprite.loadGraphic(AssetsRegistry.FCLICHE, false, false, 32, 32, false);
					GameState.textSprite.alpha = _clicheAlpha;
					break;
					case "G": 
					GameState.textSprite.loadGraphic(AssetsRegistry.GCLICHE, false, false, 32, 32, false);
					GameState.textSprite.alpha = _clicheAlpha;
					break;
					case "H": 
					GameState.textSprite.loadGraphic(AssetsRegistry.HCLICHE, false, false, 32, 32, false);
					GameState.textSprite.alpha = _clicheAlpha;
					break;
					case "I": 
					GameState.textSprite.loadGraphic(AssetsRegistry.ICLICHE, false, false, 32, 32, false);
					GameState.textSprite.alpha = _clicheAlpha;
					break;
					case "J": 
					GameState.textSprite.loadGraphic(AssetsRegistry.JCLICHE, false, false, 32, 32, false);
					GameState.textSprite.alpha = _clicheAlpha;
					break;
					case "K": 
					GameState.textSprite.loadGraphic(AssetsRegistry.KCLICHE, false, false, 32, 32, false);
					GameState.textSprite.alpha = _clicheAlpha;
					break;
					case "L": 
					GameState.textSprite.loadGraphic(AssetsRegistry.LCLICHE, false, false, 32, 32, false);
					GameState.textSprite.alpha = _clicheAlpha;
					break;
					case "M": 
					GameState.textSprite.loadGraphic(AssetsRegistry.MCLICHE, false, false, 32, 32, false);
					GameState.textSprite.alpha = _clicheAlpha;
					break;
					case "N": 
					GameState.textSprite.loadGraphic(AssetsRegistry.NCLICHE, false, false, 32, 32, false);
					GameState.textSprite.alpha = _clicheAlpha;
					break;
					case "O": 
					GameState.textSprite.loadGraphic(AssetsRegistry.OCLICHE, false, false, 32, 32, false);
					GameState.textSprite.alpha = _clicheAlpha;
					break;
					case "P": 
					GameState.textSprite.loadGraphic(AssetsRegistry.PCLICHE, false, false, 32, 32, false);
					GameState.textSprite.alpha = _clicheAlpha;
					break;
					case "Q": 
					GameState.textSprite.loadGraphic(AssetsRegistry.QCLICHE, false, false, 32, 32, false);
					GameState.textSprite.alpha = _clicheAlpha;
					break;
					case "R": 
					GameState.textSprite.loadGraphic(AssetsRegistry.RCLICHE, false, false, 32, 32, false);
					GameState.textSprite.alpha = _clicheAlpha;
					break;
					case "S": 
					GameState.textSprite.loadGraphic(AssetsRegistry.SCLICHE, false, false, 32, 32, false);
					GameState.textSprite.alpha = _clicheAlpha;
					break;
					case "T": 
					GameState.textSprite.loadGraphic(AssetsRegistry.TCLICHE, false, false, 32, 32, false);
					GameState.textSprite.alpha = _clicheAlpha;
					break;
					case "U": 
					GameState.textSprite.loadGraphic(AssetsRegistry.UCLICHE, false, false, 32, 32, false);
					GameState.textSprite.alpha = _clicheAlpha;
					break;
					case "V": 
					GameState.textSprite.loadGraphic(AssetsRegistry.VCLICHE, false, false, 32, 32, false);
					GameState.textSprite.alpha = _clicheAlpha;
					break;
					case "W": 
					GameState.textSprite.loadGraphic(AssetsRegistry.WCLICHE, false, false, 32, 32, false);
					GameState.textSprite.alpha = _clicheAlpha;
					break;
					case "X": 
					GameState.textSprite.loadGraphic(AssetsRegistry.XCLICHE, false, false, 32, 32, false);
					GameState.textSprite.alpha = _clicheAlpha;
					break;
					case "Y": 
					GameState.textSprite.loadGraphic(AssetsRegistry.YCLICHE, false, false, 32, 32, false);
					GameState.textSprite.alpha = _clicheAlpha;
					break;
					case "Z": 
					GameState.textSprite.loadGraphic(AssetsRegistry.ZCLICHE, false, false, 32, 32, false);
					GameState.textSprite.alpha = _clicheAlpha;
					break;
					case "COMMA": 
					GameState.textSprite.loadGraphic(AssetsRegistry.COMMACLICHE, false, false, 32, 32, false);
					GameState.textSprite.alpha = _clicheAlpha;
					break;
					case "PERIOD": 
					GameState.textSprite.loadGraphic(AssetsRegistry.PERIODCLICHE, false, false, 32, 32, false);
					GameState.textSprite.alpha = _clicheAlpha;
					break;
					case "APOSTROPHE": 
					GameState.textSprite.loadGraphic(AssetsRegistry.APOSTROPHECLICHE, false, false, 32, 32, false);
					GameState.textSprite.alpha = _clicheAlpha;
					break;
					case "QUESTIONMARK": 
					GameState.textSprite.loadGraphic(AssetsRegistry.QUESTIONMARKCLICHE, false, false, 32, 32, false);
					GameState.textSprite.alpha = _clicheAlpha;
					break;
					case "SPACE": 
					GameState.textSprite.loadGraphic(AssetsRegistry.SPACECLICHE, false, false, 32, 32, false);
					GameState.textSprite.alpha = _clicheAlpha;
					break;
					}
				GameState.textSprite.blend = "multiply";
				GameState.inputTextGroup.add(GameState.textSprite);
				
				}
				
				
				if (GameState.paragraphPosition >= GameState.currentText.length) {
					GameState.inputTextGroup.clear();
					GameState.inputTextGroup.destroy();
					GameState.paragraphPosition = 0;
				}
		}
		
		private static function chooseNextCliche( clicheNextString : String ) : Class {
			
			switch (clicheNextString) {
						case "A": 
						ret_clicheNextString = AssetsRegistry.ARED;
						break;
						case "B": 
						ret_clicheNextString = AssetsRegistry.BRED;
						break;
						case "C": 
						ret_clicheNextString = AssetsRegistry.CRED;
						break;
						case "D": 
						ret_clicheNextString = AssetsRegistry.DRED;
						break;
						case "E": 
						ret_clicheNextString = AssetsRegistry.ERED;
						break;
						case "F": 
						ret_clicheNextString = AssetsRegistry.FRED;
						break;
						case "G": 
						ret_clicheNextString = AssetsRegistry.GRED;
						break;
						case "H": 
						ret_clicheNextString = AssetsRegistry.HRED;
						break;
						case "I": 
						ret_clicheNextString = AssetsRegistry.IRED;
						break;
						case "J": 
						ret_clicheNextString = AssetsRegistry.JRED;
						break;
						case "K": 
						ret_clicheNextString = AssetsRegistry.KRED;
						break;
						case "L": 
						ret_clicheNextString = AssetsRegistry.LRED;
						break;
						case "M": 
						ret_clicheNextString = AssetsRegistry.MRED;
						break;
						case "N": 
						ret_clicheNextString = AssetsRegistry.NRED;
						break;
						case "O": 
						ret_clicheNextString = AssetsRegistry.ORED;
						break;
						case "P": 
						ret_clicheNextString = AssetsRegistry.PRED;
						break;
						case "Q": 
						ret_clicheNextString = AssetsRegistry.QRED;
						break;
						case "R": 
						ret_clicheNextString = AssetsRegistry.RRED;
						break;
						case "S": 
						ret_clicheNextString = AssetsRegistry.SRED;
						break;
						case "T": 
						ret_clicheNextString = AssetsRegistry.TRED;
						break;
						case "U": 
						ret_clicheNextString = AssetsRegistry.URED;
						break;
						case "V": 
						ret_clicheNextString = AssetsRegistry.VRED;
						break;
						case "W": 
						ret_clicheNextString = AssetsRegistry.WRED;
						break;
						case "X": 
						ret_clicheNextString = AssetsRegistry.XRED;
						break;
						case "Y": 
						ret_clicheNextString = AssetsRegistry.YRED;
						break;
						case "Z": 
						ret_clicheNextString = AssetsRegistry.ZRED;
						break;
						case "COMMA": 
						ret_clicheNextString = AssetsRegistry.COMMARED;
						break;
						case "PERIOD": 
						ret_clicheNextString = AssetsRegistry.PERIODRED;
						break;
						case "APOSTROPHE": 
						ret_clicheNextString = AssetsRegistry.APOSTROPHERED;
						break;
						case "QUESTIONMARK": 
						ret_clicheNextString = AssetsRegistry.QUESTIONMARKRED;
						break;
						case "SPACE": 
						ret_clicheNextString = AssetsRegistry.SPACECLICHE;
						break;
						case "*":
						ret_clicheNextString = AssetsRegistry.SPACECLICHE;
						break;
						}
						
			return ret_clicheNextString;
		}
		
		public static function drawNextCliche ( clicheNextString : String ) : void
		{
					
			if (GameState.paragraphPosition < GameState.currentText.length) {
				
					var _red : String = GameState.currentText[GameState.paragraphPosition];

						GameState.inputCursorGroup.members.pop();
					
						GameState.cursorSprite = new FlxSprite((Config.tileWidth * (GameState.x_counter+1))+GameState.cursorOffset_x, Config.tieHeight * GameState.y_counter);
						GameState.cursorSprite.loadGraphic(chooseNextCliche(_red), false, false, 32, 32, false);
						GameState.cursorSprite.blend = "multiply";
						GameState.inputCursorGroup.add(GameState.cursorSprite);
					
					
						
					
			}
		}
		
		
		public static function drawNextCliche_02 ( clicheNextString : String ) : void
		{		
			if (GameState.paragraphPosition +1 < GameState.currentText.length) {
				
					var _red_02 : String = GameState.currentText[GameState.paragraphPosition+1];
						
					GameState.inputCursorGroup_02.members.pop();
					
					GameState.cursorSprite_02 = new FlxSprite((Config.tileWidth * (GameState.x_counter+2))+GameState.cursorOffset_x, Config.tieHeight * GameState.y_counter);
					GameState.cursorSprite_02.loadGraphic(chooseNextCliche(_red_02), false, false, 32, 32, false);
					GameState.cursorSprite_02.alpha = .7;
					GameState.cursorSprite_02.blend = "multiply";
					GameState.inputCursorGroup_02.add(GameState.cursorSprite_02);
					

			}
		}
		
		public static function drawNextCliche_03 ( clicheNextString : String ) : void
		{
			
			if (GameState.paragraphPosition +2 < GameState.currentText.length) {

					var _red_03 : String = GameState.currentText[GameState.paragraphPosition + 2];

						GameState.inputCursorGroup_03.members.pop();
					
					GameState.cursorSprite_03 = new FlxSprite((Config.tileWidth * (GameState.x_counter+3))+GameState.cursorOffset_x, Config.tieHeight * GameState.y_counter);
					GameState.cursorSprite_03.loadGraphic(chooseNextCliche(_red_03), false, false, 32, 32, false);
					GameState.cursorSprite_03.alpha = .5;
					GameState.cursorSprite_03.blend = "multiply";
					GameState.inputCursorGroup_03.add(GameState.cursorSprite_03);

					
					
					
			}
		}
	}

}