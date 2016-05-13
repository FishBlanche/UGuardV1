package model
{
	[RemoteClass(alias="cn.com.uguard.entity.WarningParam")]  
	[Bindable]  
	public class WParam
	{
		public var id:String;//主键
		public var user_id:String;
		public var node_id:int;//节点编号
		
		public var warningType:String;//预警参数
	
		public var max_num:String;//读数上限
		
		public var min_num:String;//读数下限
	
		public var alertType:String;//提醒方式
	
		public var is_warning:String;//是否提醒
	
		public var email:String;//电子邮件地址
	
		public var phone:String;//电话地址

		public var  sinaWeibo:String;//新浪微博

		public var englishName:String;//数据库字段名
		public function WParam()
		{
		}
	}
}