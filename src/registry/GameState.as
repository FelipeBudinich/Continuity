package registry 
{
	import org.flixel.FlxGame;
	import org.flixel.FlxGroup;
	import org.flixel.FlxSound;
	import org.flixel.FlxSprite;
	/**
	 * ...
	 * @author Felipe Budinich
	 */
	public class GameState 
	{
		public static var text:String;
		public static var currentText:Array;
		public static var currentParagraph:int = 0;
		public static var paragraphPosition:int = 0;
		
		public static var x_counter:int = 1;
		public static var y_counter:int = 1;
		
		public static var x_counter_two:int = 2;
		public static var y_counter_two:int = 1;
		
		public static var inputTextGroup:FlxGroup;
		public static var textSprite:FlxSprite;
		
		public static var inputCursorGroup:FlxGroup;
		public static var cursorSprite:FlxSprite;
		public static var cursorOffset_x:int;
		
		public static var inputCursorGroup_02:FlxGroup;
		public static var cursorSprite_02:FlxSprite;
		
		public static var inputCursorGroup_03:FlxGroup;
		public static var cursorSprite_03:FlxSprite;

		
		public static var backgroundImage:FlxGroup;
		public static var backgroundSprite:FlxSprite;
		
		public static var keyTimer:Number = 0.1;
		public static var keyTyped:Boolean = true;
		
		public static var song_01:FlxSound = new FlxSound();
		public static var song_02:FlxSound = new FlxSound();
		public static var song_01_played:Boolean = false;
		public static var song_02_played:Boolean = false;
		
		public function GameState() 
		{
		}
		
	}

}