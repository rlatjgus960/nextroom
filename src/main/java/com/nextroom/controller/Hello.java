package com.nextroom.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Hello {

   @RequestMapping("/hello")
   public String hello() {
      System.out.println("hello");
      return "user/mypage_main";
   }
   
   
   @RequestMapping("/rankUser")
   public String rankUser() {
      System.out.println("hello");
      return "rank/rank_user";
   }
   
   @RequestMapping("/rankTheme")
   public String rankTheme() {
      System.out.println("hello");
      return "rank/rank_theme";
   }

   @RequestMapping("/party")
   public String party() {
      System.out.println("hello");
      return "party/party_list";
   }
   
   @RequestMapping("/partyRead")
   public String partyRead() {
      System.out.println("hello");
      return "party/party_read";
   }
   
   @RequestMapping("/cafe")
   public String cafe_main() {
      System.out.println("cafe");
      return "cafe/cafe_main";
   }
   
}