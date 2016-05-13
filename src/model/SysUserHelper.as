package model
{
	
  
 
	public class SysUserHelper
	{
		private static var  instance:SysUserHelper;
		
		private static var  userinfo:SysUser;
		public function SysUserHelper()
		{
			if(userinfo ==null)
				userinfo = new SysUser();
		}
		public function getUserInfo():SysUser{
			if(userinfo==null)
				userinfo = new SysUser();
			return userinfo;
		}
	}
}