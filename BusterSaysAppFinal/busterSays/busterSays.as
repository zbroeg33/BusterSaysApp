package 
{		
	// ANE Imports
	// Barcode ANE's
	import com.myflashlab.air.extensions.barcode.Barcode;
	import com.myflashlab.air.extensions.barcode.BarcodeEvent;
	// GPS ANE's
	import com.myflashlab.air.extensions.gps.Gps;
	import com.myflashlab.air.extensions.gps.LocationAccuracy;
	import com.myflashlab.air.extensions.gps.Location;
	import com.myflashlab.air.extensions.gps.GpsEvent;
	// Notification ANE's
	import com.myflashlab.air.extensions.localNotifi.NotificationAndroidSettings;
	import com.myflashlab.air.extensions.localNotifi.NotificationEvents;
	import com.myflashlab.air.extensions.localNotifi.Notification;
	// Firebase ANE's
	import com.myflashlab.air.extensions.firebase.core.Firebase;
	import com.myflashlab.air.extensions.firebase.db.*;
	// General ANE's
	import com.myflashlab.air.extensions.nativePermissions.PermissionCheck;
	import com.myflashlab.air.extensions.dependency.OverrideAir;
	
	// Flash Required Imports
	import flash.desktop.NativeApplication;
	import flash.desktop.SystemIdleMode;	
	
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	
	import flash.events.Event;
	import flash.events.InvokeEvent;
	import flash.events.KeyboardEvent;
	import flash.events.MouseEvent;
	import flash.events.StatusEvent;
	
	import flash.system.Capabilities;	

	import flash.text.AntiAliasType;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import flash.text.TextFormat;
	import flash.text.TextFormatAlign;

	import flash.ui.Keyboard;
	import flash.ui.Multitouch;
	import flash.ui.MultitouchInputMode;
	
	import flash.utils.setTimeout;	
	import flash.display.SimpleButton;
	
	
	public class busterSays extends Sprite
	{
		// GPS Variables
		private var _exPermissions:PermissionCheck = new PermissionCheck();		
		// GPS Location Range for the Boise State University "B"
		private var minLat_theB:Number = 43.60277;
		private var maxLat_theB:Number = 43.60309;
		private var minLong_theB:Number = -116.204115;
		private var maxLong_theB:Number = -116.205455;
		private var latCorrect_theB:Boolean = false;
		private var longCorrect_theB:Boolean = false;
		
		// GPS Location Range for the Boise State University SUB
		private var minLat_theSUB:Number = 43.602179;
		private var maxLat_theSUB:Number = 43.602205;
		private var minLong_theSUB:Number = -116.201697;
		private var maxLong_theSUB:Number = -116.201717;
		private var latCorrect_theSUB:Boolean = false;
		private var longCorrect_theSUB:Boolean = false;
		
		// GPS Location Range for the Boise State University ILC
		private var minLat_theILC:Number = 43.605108;
		private var maxLat_theILC:Number = 43.605132;
		private var minLong_theILC:Number = -116.206077;
		private var maxLong_theILC:Number = -116.206102;
		private var latCorrect_theILC:Boolean = false;
		private var longCorrect_theILC:Boolean = false;
		
		// GPS Location Range for the Boise State University Stadium
		private var minLat_Stadium:Number = 43.602109;
		private var maxLat_Stadium:Number = 43.602129;
		private var minLong_Stadium:Number = -116.196895;
		private var maxLong_Stadium:Number = -116.196915;
		private var latCorrect_Stadium:Boolean = false;
		private var longCorrect_Stadium:Boolean = false;
		
		// GPS Location Range for the Boise State University REC Center
		private var minLat_theREC:Number = 43.600765;
		private var maxLat_theREC:Number = 43.600785;
		private var minLong_theREC:Number = -116.200233;
		private var maxLong_theREC:Number = -116.200253;
		private var latCorrect_theREC:Boolean = false;
		private var longCorrect_theREC:Boolean = false;
		
		// GPS Location Range for the Boise State University Micron Building
		private var minLat_Micron:Number = 43.605569;
		private var maxLat_Micron:Number = 43.605593;
		private var minLong_Micron:Number = -116.209642;
		private var maxLong_Micron:Number = -116.209666;
		private var latCorrect_Micron:Boolean = false;
		private var longCorrect_Micron:Boolean = false;
		
		// GPS Location Range for the Boise State University Library
		private var minLat_Library:Number = 43.60369;
		private var maxLat_Library:Number = 43.60376;
		private var minLong_Library:Number = -116.203765;
		private var maxLong_Library:Number = -116.203775;
		private var latCorrect_Library:Boolean = false;
		private var longCorrect_Library:Boolean = false;
		
		// GPS Location Range for the Boise State University Taco Bell Arena
		private var minLat_TacoBell:Number = 43.602959;
		private var maxLat_TacoBell:Number = 43.602981;
		private var minLong_TacoBell:Number = -116.197922;
		private var maxLong_TacoBell:Number = -116.197946;
		private var latCorrect_TacoBell:Boolean = false;
		private var longCorrect_TacoBell:Boolean = false;
		
		// GPS Location Range for the Boise State University RFH
		private var minLat_theRFH:Number = 43.604673;
		private var maxLat_theRFH:Number = 43.604697;
		private var minLong_theRFH:Number = -116.204814;
		private var maxLong_theRFH:Number = -116.204838;
		private var latCorrect_theRFH:Boolean = false;
		private var longCorrect_theRFH:Boolean = false;
		
		// GPS Location Range for the Boise State University Friendship Bridge
		private var minLat_Friendship:Number = 43.605085;
		private var maxLat_Friendship:Number = 43.605108;
		private var minLong_Friendship:Number = -116.203721;
		private var maxLong_Friendship:Number = -116.203744;
		private var latCorrect_Friendship:Boolean = false;
		private var longCorrect_Friendship:Boolean = false;
		
		// Barcode Variables
		private var _ex:Barcode;
		
		
		public function busterSays() {

			scanBtn.visible = false;

			Multitouch.inputMode = MultitouchInputMode.GESTURE;
			
			NativeApplication.nativeApplication.addEventListener(Event.ACTIVATE, handleActivate, false, 0, true);
			NativeApplication.nativeApplication.addEventListener(Event.DEACTIVATE, handleDeactivate, false, 0, true);
			NativeApplication.nativeApplication.addEventListener(InvokeEvent.INVOKE, onInvoke, false, 0, true);
			NativeApplication.nativeApplication.addEventListener(KeyboardEvent.KEY_DOWN, handleKeys);
			
			stage.scaleMode = StageScaleMode.EXACT_FIT;
			stage.align = StageAlign.TOP_LEFT;			
			
			startFirebase();
			checkPermissions();
			checkScanPermissions();			
			this.addEventListener(Event.ADDED_TO_STAGE, startApp);
		}
		
		private function startFirebase(): void
		{
			Firebase.init();
			startDatabase();
		}
		
		private function startDatabase(): void
		{
			DB.init();
		}
		
		public function sendToFirebase(incomingRNG:int, accessLocation:String, accessMethod:String): void
		{
			var myRef:DBReference = DB.getReference("BusterSays");
			
			var userInfo:Object = new Object();
			userInfo.location = accessLocation;
			userInfo.quoteNumber = incomingRNG;
			userInfo.timestamp = new Date().getTime();
			
			var key:String = myRef.child(accessMethod).push().key;
			
			var newUser:Object = {};
			
			newUser["/" + accessMethod + "/" + key] = userInfo;
			
			myRef.updateChildren(newUser);

		}
		
		private function onInvoke(e:InvokeEvent):void
		{
			NativeApplication.nativeApplication.removeEventListener(InvokeEvent.INVOKE, onInvoke);
		}
		
		private function handleActivate(e:Event):void 
		{
			NativeApplication.nativeApplication.systemIdleMode = SystemIdleMode.KEEP_AWAKE;
		}
		
		private function handleDeactivate(e:Event):void 
		{
			NativeApplication.nativeApplication.systemIdleMode = SystemIdleMode.NORMAL;
		}
		
		private function handleKeys(e:KeyboardEvent):void
		{
			if(e.keyCode == Keyboard.BACK)
            {
				e.preventDefault();
				
				NativeApplication.nativeApplication.exit();
            }
		}		
		
		private function startApp(evt: Event): void
		{
			init();
		}
		
		private function init(): void
		{
			Notification.init();
			createNotification();
		}
		
		private function checkPermissions():void
		{
			var permissionState:int;
			
			if(_exPermissions.os == PermissionCheck.ANDROID)
			{
				permissionState = _exPermissions.check(PermissionCheck.SOURCE_LOCATION);
			}
			else if(_exPermissions.os == PermissionCheck.IOS)
			{
				permissionState = _exPermissions.check(PermissionCheck.SOURCE_LOCATION_WHEN_IN_USE);
			}
			
			if (permissionState == PermissionCheck.PERMISSION_UNKNOWN || permissionState == PermissionCheck.PERMISSION_DENIED)
			{
				if(_exPermissions.os == PermissionCheck.ANDROID)
				{
					_exPermissions.request(PermissionCheck.SOURCE_LOCATION, onRequestResult);
				}
				else if(_exPermissions.os == PermissionCheck.IOS)
				{
					_exPermissions.request(PermissionCheck.SOURCE_LOCATION_WHEN_IN_USE, onRequestResult);
				}
			}
			else
			{
				init();
			}
			
			function onRequestResult($state:int):void
			{
				if ($state != PermissionCheck.PERMISSION_GRANTED)
				{
				}
				else
				{
					init();
				}
			}
		}

		public function createNotification(): void
		{			
			var setting: NotificationAndroidSettings = new NotificationAndroidSettings();
			setting.notificationId = 3;
			setting.payload = "playload data";
			setting.title = "Buster Says...";
			setting.message = "It's been awhile since we've talked...";
			setting.time = new Date().getTime() + 20000;
			var alarmId: int = Notification.adjust(setting);
			startGPS();
		}
		
		public function startGPS(): void
		{
			Gps.init();
			Gps.location.getLastLocation(onLocationResult);     
			Gps.location.getCurrentLocation(onLocationResult); 			
		}
		
		function onLocationResult($result:Location):void
		{
			var randomNumber:int;
			var rngQuote:quoteGenerator = new quoteGenerator();
			
			if (!$result)
			{
				 return;
			}
		 
			var currentLatitude = $result.latitude;
			var currentLongitude = $result.longitude;
		 
			if (currentLatitude > minLat_theB && currentLatitude < maxLat_theB)
			{
				latCorrect_theB = true;
			} else if (currentLatitude > minLat_theSUB && currentLatitude < maxLat_theSUB)
			{
				latCorrect_theSUB = true;
			} else if (currentLatitude > minLat_theILC && currentLatitude < maxLat_theILC)
			{
				latCorrect_theILC = true;
			} else if (currentLatitude > minLat_Stadium && currentLatitude < maxLat_Stadium)
			{
				latCorrect_Stadium = true;
			} else if (currentLatitude > minLat_theREC && currentLatitude < maxLat_theREC)
			{
				latCorrect_theREC = true;
			} else if (currentLatitude > minLat_Micron && currentLatitude < maxLat_Micron)
			{
				latCorrect_Micron = true;
			} else if (currentLatitude > minLat_Library && currentLatitude < maxLat_Library)
			{
				latCorrect_Library = true;
			} else if (currentLatitude > minLat_TacoBell && currentLatitude < maxLat_TacoBell)
			{
				latCorrect_TacoBell = true;
			} else if (currentLatitude > minLat_theRFH && currentLatitude < maxLat_theRFH)
			{
				latCorrect_theRFH = true;
			} else if (currentLatitude > minLat_Friendship && currentLatitude < maxLat_Friendship)
			{
				latCorrect_Friendship = true;
			}
		 
			if (currentLongitude > maxLong_theB && currentLongitude < minLong_theB)
			{
				longCorrect_theB = true;
			} else if (currentLongitude > maxLong_theSUB && currentLongitude < minLong_theSUB)
			{
				longCorrect_theSUB = true;
			} else if (currentLongitude > maxLong_theILC && currentLongitude < minLong_theILC)
			{
				longCorrect_theILC = true;
			} else if (currentLongitude > maxLong_Stadium && currentLongitude < minLong_Stadium)
			{
				longCorrect_Stadium = true;
			} else if (currentLongitude > maxLong_theREC && currentLongitude < minLong_theREC)
			{
				longCorrect_theREC = true;
			} else if (currentLongitude > maxLong_Micron && currentLongitude < minLong_Micron)
			{
				longCorrect_Micron = true;
			} else if (currentLongitude > maxLong_Library && currentLongitude < minLong_Library)
			{
				longCorrect_Library = true;
			} else if (currentLongitude > maxLong_TacoBell && currentLongitude < minLong_TacoBell)
			{
				longCorrect_TacoBell = true;
			} else if (currentLongitude > maxLong_theRFH && currentLongitude < minLong_theRFH)
			{
				longCorrect_theRFH = true;
			} else if (currentLongitude > maxLong_Friendship && currentLongitude < minLong_Friendship)
			{
				longCorrect_Friendship = true;
			}
		 
			if (latCorrect_theB == true && longCorrect_theB == true)
			{
				randomNumber = Math.random() * 3;
				sendToFirebase(randomNumber, "BSU_Boise_B", "at location");
				rngQuote.theBQuotes(randomNumber);
			} else if (latCorrect_theSUB == true && longCorrect_theSUB == true)
			{
				randomNumber = Math.random() * 3;
				sendToFirebase(randomNumber, "BSU_Student_Union_Building", "at location");
				rngQuote.subQuotes(randomNumber);
			} else if (latCorrect_theILC == true && longCorrect_theILC == true)
			{
				randomNumber = Math.random() * 3;
				sendToFirebase(randomNumber, "BSU_ILC_Building", "at location");
				rngQuote.ilcQuotes(randomNumber);
			} else if (latCorrect_Stadium == true && longCorrect_Stadium == true)
			{
				randomNumber = Math.random() * 3;
				sendToFirebase(randomNumber, "BSU_Stadium", "at location");
				rngQuote.stadiumQuotes(randomNumber);
			} else if (latCorrect_theREC == true && longCorrect_theREC == true)
			{
				randomNumber = Math.random() * 3;
				sendToFirebase(randomNumber, "BSU_REC_Center", "at location");
				rngQuote.recCenterQuotes(randomNumber);
			} else if (latCorrect_Micron == true && longCorrect_Micron == true)
			{
				randomNumber = Math.random() * 3;
				sendToFirebase(randomNumber, "BSU_Micron_Building", "at location");
				rngQuote.micronQuotes(randomNumber);
			} else if (latCorrect_Library == true && longCorrect_Library == true)
			{
				randomNumber = Math.random() * 3;
				sendToFirebase(randomNumber, "BSU_Albertsons_Library", "at location");
				rngQuote.libraryQuotes(randomNumber);
			} else if (latCorrect_TacoBell == true && longCorrect_TacoBell == true)
			{
				randomNumber = Math.random() * 3;
				sendToFirebase(randomNumber, "BSU_Taco_Bell_Arena", "at location");
				rngQuote.tacoBellQuotes(randomNumber);
			} else if (latCorrect_theRFH == true && longCorrect_theRFH == true)
			{
				randomNumber = Math.random() * 3;
				sendToFirebase(randomNumber, "BSU_Riverfront_Hall", "at location");
				rngQuote.rfhQuotes(randomNumber);
			} else if (latCorrect_Friendship == true && longCorrect_Friendship == true)
			{
				randomNumber = Math.random() * 3;
				sendToFirebase(randomNumber, "BSU_Friendship_Bridge", "at location");
				rngQuote.friendshipQuotes(randomNumber);
			} else {
				scanBtn.visible = true;
				scanBtn.addEventListener(MouseEvent.CLICK, startScan);
			}
		}
		
		public function startScan(event:MouseEvent): void
		{
			_ex = new Barcode();
			_ex.addEventListener(BarcodeEvent.RESULT, onResult);
			_ex.addEventListener(BarcodeEvent.CANCEL, onCancel);			
			
			_ex.warmup();
			_ex.open();
		}
		
		private function checkScanPermissions():void
		{
			var permissionState:int = _exPermissions.check(PermissionCheck.SOURCE_CAMERA);
			
			if (permissionState == PermissionCheck.PERMISSION_UNKNOWN || permissionState == PermissionCheck.PERMISSION_DENIED)
			{
				_exPermissions.request(PermissionCheck.SOURCE_CAMERA, onRequestResult);
			}
			else
			{
				init();
			}
			
			function onRequestResult($state:int):void
			{
				if ($state != PermissionCheck.PERMISSION_GRANTED)
				{

				}
				else
				{
					init();
				}
			}
		}
		
		private function onCancel(e:BarcodeEvent):void
		{

		}
		
		private function onResult(e:BarcodeEvent):void
		{
			var randomNumber:int;
			var rngQuote:quoteGenerator = new quoteGenerator();
			
			switch (e.param.data){
				case "BSU_Student_Union_Building":
					randomNumber = Math.random() * 3;
					sendToFirebase(randomNumber, e.param.data, "Scanned QR");
					rngQuote.subQuotes(randomNumber);
					break;
				case "BSU_ILC_Building":
					randomNumber = Math.random() * 3;
					sendToFirebase(randomNumber, e.param.data, "Scanned QR");
					rngQuote.ilcQuotes(randomNumber);
					break;
				case "BSU_Stadium":
					randomNumber = Math.random() * 3;
					sendToFirebase(randomNumber, e.param.data, "Scanned QR");
					rngQuote.stadiumQuotes(randomNumber);
					break;
				case "BSU_REC_Center":
					randomNumber = Math.random() * 3;
					sendToFirebase(randomNumber, e.param.data, "Scanned QR");
					rngQuote.recCenterQuotes(randomNumber);
					break;
				case "BSU_Micron_Building":
					randomNumber = Math.random() * 3;
					sendToFirebase(randomNumber, e.param.data, "Scanned QR");
					rngQuote.micronQuotes(randomNumber);
					break;
				case "BSU_Albertsons_Library":
					randomNumber = Math.random() * 3;
					sendToFirebase(randomNumber, e.param.data, "Scanned QR");
					rngQuote.libraryQuotes(randomNumber);
					break;
				case "BSU_Boise_B":
					randomNumber = Math.random() * 3;
					sendToFirebase(randomNumber, e.param.data, "Scanned QR");
					rngQuote.theBQuotes(randomNumber);
					break;
				case "BSU_Taco_Bell_Arena":
					randomNumber = Math.random() * 3;
					sendToFirebase(randomNumber, e.param.data, "Scanned QR");
					rngQuote.tacoBellQuotes(randomNumber);
					break;
				case "BSU_Riverfront_Hall":
					randomNumber = Math.random() * 3;
					sendToFirebase(randomNumber, e.param.data, "Scanned QR");
					rngQuote.rfhQuotes(randomNumber);
					break;
				case "BSU_Friendship_Bridge":
					randomNumber = Math.random() * 3;
					sendToFirebase(randomNumber, e.param.data, "Scanned QR");
					rngQuote.friendshipQuotes(randomNumber);
					break;
			}
		}		
	}	
}
