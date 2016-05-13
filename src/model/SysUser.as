package model
{
	
	[RemoteClass(alias="cn.com.emcms.entity.SysUser")]  
	[Bindable]  
	public class SysUser
	{
		public var userId:String;
		public var userName:String;
		public var password:String;
		public var roleId:String;
		public var status:String;
		public var trueName:String;
		public var gender:String;
		public var phone:String;
		public var email:String;
		public var sina_weibo:String;
		public var address:String;
		public var createDate:Date;
		public var userDataTable:String;
		public var c2DataTable:String;
		public var c3DataTable:String;
		public var roleName:String;
		
		public function SysUser()
		{		
			 
		}	
		
	
		public function getUserId():String { 
			return this.userId;
		}
		
		public function setUserId(userId:String):void {
			this.userId = userId;
		}
		
		public function getUserName():String {
			return this.userName;
		}
		
		public function setUserName( userName:String):void {
			this.userName = userName;
		}
		
		public function getPassword():String {
			return this.password;
		}
		
		public function setPassword( password:String):void {
			this.password = password;
		}
		
		public function getRoleId():String {
			return this.roleId;
		}
		
		public function setRoleId( roleId:String):void {
			this.roleId = roleId;
		}
		
		public function getTrueName():String {
			return this.trueName;
		}
		
		public function setTrueName( trueName:String):void {
			this.trueName = trueName;
		}
		
		public function getGender():String {
			return this.gender;
		}
		
		public function setGender( gender:String):void {
			this.gender = gender;
		}
		
		public function getPhone():String {
			return this.phone;
		}
		
		public function setPhone( phone:String):void {
			this.phone = phone;
		}
		
		public function getAddress():String {
			return this.address;
		}
		
		public function setAddress( address:String):void {
			this.address = address;
		}
		
		public function getCreateDate():Date {
			return this.createDate;
		}
		
		public function setCreateDate( createDate:Date):void {
			this.createDate = createDate;
		}
		
		public function getStatus():String {
			return this.status;
		}
		
		public function setStatus( status:String):void {
			this.status = status;
		}
		
		public function getRoleName():String {
			return this.roleName;
		}
		
		public function setRoleName( roleName:String):void {
			this.roleName = roleName;
		}	
		
		public function getUserDataTable():String {
			return this.userDataTable;
		}
		
		public function setUserDataTable( userDataTable:String) :void{
			this.userDataTable = userDataTable;
		}
	 
		 
	}
}