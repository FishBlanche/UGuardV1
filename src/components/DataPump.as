package components
{	
	import flash.events.Event;
	import flash.events.EventDispatcher;
	
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	
	import mx.collections.ArrayCollection;

	import mx.messaging.ChannelSet;
	import mx.messaging.Consumer;
	import mx.messaging.channels.AMFChannel;
	
	import mx.messaging.events.ChannelEvent;
	import mx.messaging.events.ChannelFaultEvent;
	import mx.messaging.events.MessageEvent;
	import mx.messaging.events.MessageFaultEvent;

	
	import model.MyDictionary;
	import model.UrlInfo;

	public class DataPump  extends EventDispatcher
	{
		public var isConnected:Boolean = false;
		public  var newestSensing:ArrayCollection=new ArrayCollection;
		public var consumer:Consumer=new Consumer;  
        private var myAMF:AMFChannel=new AMFChannel;
		private var channelSet:ChannelSet=new ChannelSet;
		private var subscribetimes:int=0;
		private	var timer:Timer;
		
		
		public function DataPump()
		{		

			
			myAMF.url=UrlInfo.URL;
		    channelSet.addChannel(myAMF); 
			consumer.destination="newSense";  
			consumer.subtopic="LiveSensing";  
			
			consumer.channelSet=channelSet;  
			consumer.addEventListener(MessageEvent.MESSAGE, messageHandler,false,0,true);  
			consumer.addEventListener(ChannelFaultEvent.FAULT,fault,false,0,true);  
			consumer.addEventListener(ChannelEvent.CONNECT,connected,false,0,true); 
			consumer.addEventListener(MessageFaultEvent.FAULT,fault2,false,0,true);  
			//consumer.subscribe();
			 
		}
		protected function InfoTip(event:Event):void
		{
			
		}
		public function getConsumer():Consumer
		{
			return consumer;
		}
		public function refresh():void
		{
			consumer.subscribe();
		}
		private function messageHandler(event:MessageEvent):void  
		{  
			newestSensing.removeAll();
			var entyArray:String =  event.message.body.toString();
		//	trace("messageHandler"+entyArray);
			
			var a:Array = entyArray.split(",");
			 for(var i:int=0;i<a.length;i++)
			 {
				 var b:Array=String(a[i]).split(" ");
				 if(b.length==2)
				 {
					 var myDict:MyDictionary=new MyDictionary;
					 myDict.ikey=b[0];
					 myDict.ivalue=b[1];
					 newestSensing.addItem(myDict);
			//		 trace("键值"+myDict.ikey+","+ myDict.ivalue);
				 }
				
			 }
			 dispatchEvent(new Event("_newSensingData"));
			
		}  

		
		private function connected(e:ChannelEvent):void  
		{		
		//	trace("---connected----");
		}  
		
		
		private function fault(e:ChannelFaultEvent):void  
		{  
			//trace("---channel fault----");
			newestSensing.removeAll();
			if(!timer)
			{
				timer= new Timer(5000,1);
			}
			timer.addEventListener(TimerEvent.TIMER,timer_Handler,false,0,true);
			timer.start();
		}  
		
		protected function timer_Handler(event:TimerEvent):void
		{
			// TODO Auto-generated method stub
			timer.stop();
			timer.removeEventListener(TimerEvent.TIMER,timer_Handler);
			timer=null;
			consumer.subscribe();
		}
		
		private function fault2(e:MessageFaultEvent):void  
		{  
			trace("---message fault----");
			newestSensing.removeAll();
			
			if(!timer)
			{
				timer= new Timer(5000,1);
			}
			timer.addEventListener(TimerEvent.TIMER,timer_Handler,false,0,true);
			timer.start();
	    	//consumer.subscribe();
		}  
	
	}  

}	
	
