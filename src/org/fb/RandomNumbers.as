package org.fb 
{
	/**
	 * ...
	 * @author Felipe Budinich
	 */
	public class RandomNumbers 
	{
		
		public function RandomNumbers() 
		{
			
		}
		
		public static function rand(min:int, max:int):int {
			//Retorna un valor al azar entre el minimo y el maximo de dos enteros.
			return Math.floor(Math.random() * (max - min + 1)) + min;
		}
	}

}