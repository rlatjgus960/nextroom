package com.nextroom.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Admin {
	
	
	@RequestMapping("/adminRecord")
	public String record() {
	   System.out.println("record");
	   return "admin/admin_Record";
	}
	
	
	@RequestMapping("/adminRecordModify")
	public String recordModify() {
	   System.out.println("recordModify");
	   return "admin/admin_RecordModify";
	}
	
	
	@RequestMapping("/adminCafe")
	public String adminCafe() {
	   System.out.println("adminCafe");
	   return "admin/admin_cafeModi";
	}
	
	
	@RequestMapping("/adminTheme")
	public String adminTheme() {
	   System.out.println("adminTheme");
	   return "admin/admin_themeModi";
	}
	
	@RequestMapping("/adminThemeDeleteForm")
	public String adminThemeDeleteForm() {
	   System.out.println("adminThemeDeleteForm");
	   return "admin/admin_themeDeleteForm";
	}
	
	@RequestMapping("/adminThemeModifyForm")
	public String adminThemeModify() {
	   System.out.println("adminThemeModifyForm");
	   return "admin/admin_themeModifyForm";
	}
	
	@RequestMapping("/adminAddTheme")
	public String adminAddTheme() {
	   System.out.println("adminAddTheme");
	   return "admin/admin_addTheme";
	}
	
}
