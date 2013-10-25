package 
{
	/**
	 * Template
	 * @author Felipe Budinich
	 */
	
	/*Lo que hace import es traer las clases necesarias para ejecutar el programa, el primer import se trae todo flixel
	 * El segundo trae los diferentes estados del juego, y el tercero las variables de configuración.
	*/
	import org.flixel.*;
	import states.*;
	import registry.Config;
	
	//Aquí damos la instrucción para el tamaño del SWF, el framerate y el color de fondo, por ahora negro
	[SWF(width = "720", height = "480", frameRate = "30", backgroundColor = "#000000")]
	
	
	public class Main extends FlxGame
	{
		
		public function Main():void 
		{
			//Le pasamos las variables para la confirguración del Stage de Flixel(contenida en Config.as )
			super(Config.gameWidth, Config.gameHeight, Intro, 1);
			
		}
		
	}
	
}