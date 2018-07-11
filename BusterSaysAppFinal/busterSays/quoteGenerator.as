package  {

	import flash.display.Sprite;
	import flash.events.Event;
	import flash.media.Sound; 
	import flash.net.URLRequest;
	
	public class quoteGenerator extends Sprite
	{
		var busterQuote:Sound = new Sound();
		var soundFile:URLRequest;

		public function quoteGenerator() {
			// constructor code
		}
		
		public function subQuotes(randomQuote:int):void{
			
			switch (randomQuote){
				case 0:
					busterQuote.addEventListener(Event.COMPLETE, onSoundLoaded);
					soundFile = new URLRequest("http://www.laughinglance.com/broncoAppSounds/SUB.mp3");
					busterQuote.load(soundFile);
					break;
				case 1:
					busterQuote.addEventListener(Event.COMPLETE, onSoundLoaded);
					soundFile = new URLRequest("http://www.laughinglance.com/broncoAppSounds/ChickFlia.mp3");
					busterQuote.load(soundFile);
					break;
				case 2:
					busterQuote.addEventListener(Event.COMPLETE, onSoundLoaded);
					soundFile = new URLRequest("http://www.laughinglance.com/broncoAppSounds/party.mp3");
					busterQuote.load(soundFile);
					break;
			}
		}
		
		public function ilcQuotes(randomQuote:int):void{
			
			switch (randomQuote){
				case 0:
					busterQuote.addEventListener(Event.COMPLETE, onSoundLoaded);
					soundFile = new URLRequest("http://www.laughinglance.com/broncoAppSounds/theILC.mp3");
					busterQuote.load(soundFile);
					break;
				case 1:
					busterQuote.addEventListener(Event.COMPLETE, onSoundLoaded);
					soundFile = new URLRequest("http://www.laughinglance.com/broncoAppSounds/ilc.mp3");
					busterQuote.load(soundFile);
					break;
				case 2:
					busterQuote.addEventListener(Event.COMPLETE, onSoundLoaded);
					soundFile = new URLRequest("http://www.laughinglance.com/broncoAppSounds/Tacobell.mp3");
					busterQuote.load(soundFile);
					break;
			}
		}
		
		public function stadiumQuotes(randomQuote:int):void{
			
			switch (randomQuote){
				case 0:
					busterQuote.addEventListener(Event.COMPLETE, onSoundLoaded);
					soundFile = new URLRequest("http://www.laughinglance.com/broncoAppSounds/footballfield.mp3");
					busterQuote.load(soundFile);
					break;
				case 1:
					busterQuote.addEventListener(Event.COMPLETE, onSoundLoaded);
					soundFile = new URLRequest("http://www.laughinglance.com/broncoAppSounds/DenverBroncos.mp3");
					busterQuote.load(soundFile);
					break;
				case 2:
					busterQuote.addEventListener(Event.COMPLETE, onSoundLoaded);
					soundFile = new URLRequest("http://www.laughinglance.com/broncoAppSounds/gobroncos.mp3");
					busterQuote.load(soundFile);
					break;
			}
		}
		
		public function recCenterQuotes(randomQuote:int):void{
			
			switch (randomQuote){
				case 0:
					busterQuote.addEventListener(Event.COMPLETE, onSoundLoaded);
					soundFile = new URLRequest("http://www.laughinglance.com/broncoAppSounds/REC.mp3");
					busterQuote.load(soundFile);
					break;
				case 1:
					busterQuote.addEventListener(Event.COMPLETE, onSoundLoaded);
					soundFile = new URLRequest("http://www.laughinglance.com/broncoAppSounds/gobroncos.mp3");
					busterQuote.load(soundFile);
					break;
				case 2:
					busterQuote.addEventListener(Event.COMPLETE, onSoundLoaded);
					soundFile = new URLRequest("http://www.laughinglance.com/broncoAppSounds/power.mp3");
					busterQuote.load(soundFile);
					break;
			}
		}
		
		public function micronQuotes(randomQuote:int):void{
			
			switch (randomQuote){
				case 0:
					busterQuote.addEventListener(Event.COMPLETE, onSoundLoaded);
					soundFile = new URLRequest("http://www.laughinglance.com/broncoAppSounds/micron.mp3");
					busterQuote.load(soundFile);
					break;
				case 1:
					busterQuote.addEventListener(Event.COMPLETE, onSoundLoaded);
					soundFile = new URLRequest("http://www.laughinglance.com/broncoAppSounds/sigh.mp3");
					busterQuote.load(soundFile);
					break;
				case 2:
					busterQuote.addEventListener(Event.COMPLETE, onSoundLoaded);
					soundFile = new URLRequest("http://www.laughinglance.com/broncoAppSounds/parking.mp3");
					busterQuote.load(soundFile);
					break;
			}
		}
		
		public function libraryQuotes(randomQuote:int):void{
			
			switch (randomQuote){
				case 0:
					busterQuote.addEventListener(Event.COMPLETE, onSoundLoaded);
					soundFile = new URLRequest("http://www.laughinglance.com/broncoAppSounds/library.mp3");
					busterQuote.load(soundFile);
					break;
				case 1:
					busterQuote.addEventListener(Event.COMPLETE, onSoundLoaded);
					soundFile = new URLRequest("http://www.laughinglance.com/broncoAppSounds/jasonsad.mp3");
					busterQuote.load(soundFile);
					break;
				case 2:
					busterQuote.addEventListener(Event.COMPLETE, onSoundLoaded);
					soundFile = new URLRequest("http://www.laughinglance.com/broncoAppSounds/sigh.mp3");
					busterQuote.load(soundFile);
					break;
			}
		}
		
		public function theBQuotes(randomQuote:int):void{
			
			switch (randomQuote){
				case 0:
					busterQuote.addEventListener(Event.COMPLETE, onSoundLoaded);
					soundFile = new URLRequest("http://www.laughinglance.com/broncoAppSounds/theB.mp3");
					busterQuote.load(soundFile);
					break;
				case 1:
					busterQuote.addEventListener(Event.COMPLETE, onSoundLoaded);
					soundFile = new URLRequest("http://www.laughinglance.com/broncoAppSounds/president.mp3");
					busterQuote.load(soundFile);
					break;
				case 2:
					busterQuote.addEventListener(Event.COMPLETE, onSoundLoaded);
					soundFile = new URLRequest("http://www.laughinglance.com/broncoAppSounds/founding.mp3");
					busterQuote.load(soundFile);
					break;
			}
		}
		
		public function tacoBellQuotes(randomQuote:int):void{
			
			switch (randomQuote){
				case 0:
					busterQuote.addEventListener(Event.COMPLETE, onSoundLoaded);
					soundFile = new URLRequest("http://www.laughinglance.com/broncoAppSounds/Tacobell.mp3");
					busterQuote.load(soundFile);
					break;
				case 1:
					busterQuote.addEventListener(Event.COMPLETE, onSoundLoaded);
					soundFile = new URLRequest("http://www.laughinglance.com/broncoAppSounds/gobroncos.mp3");
					busterQuote.load(soundFile);
					break;
				case 2:
					busterQuote.addEventListener(Event.COMPLETE, onSoundLoaded);
					soundFile = new URLRequest("http://www.laughinglance.com/broncoAppSounds/ThreeBroncos.mp3");
					busterQuote.load(soundFile);
					break;
			}
		}
		
		public function rfhQuotes(randomQuote:int):void{
			
			switch (randomQuote){
				case 0:
					busterQuote.addEventListener(Event.COMPLETE, onSoundLoaded);
					soundFile = new URLRequest("http://www.laughinglance.com/broncoAppSounds/riverfront.mp3");
					busterQuote.load(soundFile);
					break;
				case 1:
					busterQuote.addEventListener(Event.COMPLETE, onSoundLoaded);
					soundFile = new URLRequest("http://www.laughinglance.com/broncoAppSounds/ThreeBroncos.mp3");
					busterQuote.load(soundFile);
					break;
				case 2:
					busterQuote.addEventListener(Event.COMPLETE, onSoundLoaded);
					soundFile = new URLRequest("http://www.laughinglance.com/broncoAppSounds/founding.mp3");
					busterQuote.load(soundFile);
					break;
			}
		}
		
		public function friendshipQuotes(randomQuote:int):void{
			
			switch (randomQuote){
				case 0:
					busterQuote.addEventListener(Event.COMPLETE, onSoundLoaded);
					soundFile = new URLRequest("http://www.laughinglance.com/broncoAppSounds/friendshipBridge.mp3");
					busterQuote.load(soundFile);
					break;
				case 1:
					busterQuote.addEventListener(Event.COMPLETE, onSoundLoaded);
					soundFile = new URLRequest("http://www.laughinglance.com/broncoAppSounds/party.mp3");
					busterQuote.load(soundFile);
					break;
				case 2:
					busterQuote.addEventListener(Event.COMPLETE, onSoundLoaded);
					soundFile = new URLRequest("http://www.laughinglance.com/broncoAppSounds/power.mp3");
					busterQuote.load(soundFile);
					break;
			}
		}
		
		function onSoundLoaded(event:Event):void 
		{ 
			var busterSound:Sound = event.target as Sound; 
			busterSound.play();
		}
	}	
}
