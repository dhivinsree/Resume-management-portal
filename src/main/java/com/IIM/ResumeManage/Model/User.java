package com.IIM.ResumeManage.Model;

public class User {
         int userId; 
         String userName;
         String password;
         int studentId;
         public User(int userId, String userName, String password, int studentId, int staffId, String activeStatus) {
			super();
			this.userId = userId;
			this.userName = userName;
			this.password = password;
			this.studentId = studentId;
			this.staffId = staffId;
			this.activeStatus = activeStatus;
		}
		int staffId;
         String activeStatus;
		public int getUserId() {
			return userId;
		}
		public void setUserId(int userId) {
			this.userId = userId;
		}
		public String getUserName() {
			return userName;
		}
		public void setUserName(String userName) {
			this.userName = userName;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		public int getStudentId() {
			return studentId;
		}
		public void setStudentId(int studentId) {
			this.studentId = studentId;
		}
		public int getStaffId() {
			return staffId;
		}
		public void setStaffId(int staffId) {
			this.staffId = staffId;
		}
		public String getActiveStatus() {
			return activeStatus;
		}
		public void setActiveStatus(String activeStatus) {
			this.activeStatus = activeStatus;
		}
         
         
}
