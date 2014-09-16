package com.xinguoedu.evt.media
{
	import flash.events.Event;
	
	/**
	 * 专门负责媒体组件的事件类 
	 * @author yatsen_yang
	 * 
	 */	
	public class MediaEvt extends Event
	{
		public static const MEDIA_LOADED:String = "media_loaded";
		
		public static const MEDIA_METADATA:String = "media_metadata";
		
		public static const MEDIA_INFO:String = "media_info";
		
		public static const MEDIA_ERROR:String = "media_error";
		
		public static const MEDIA_TIME:String = "media_time";
		
		public static const MEDIA_STATE:String = "media_state";
		
		/**
		 * 视频播放完 
		 */		
		public static const MEDIA_COMPLETE:String = "media_complete";
		
		public var data:*;
		
		public function MediaEvt(type:String, d:*=null, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			
			data = d;
		}
		
		override public function clone():Event
		{
			return new MediaEvt(type, data, bubbles, cancelable);
		}
		
		
	}
}