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
   
   @RequestMapping("/reserveBaseForm")
   public String reserveBaseForm() {
      System.out.println("reserveBaseForm");
      return "reserve/reserveBaseForm";
   }
   
   @RequestMapping("/reserveInfoForm")
   public String reserveInfoForm() {
      System.out.println("reserveInfoForm");
      return "reserve/reserveInfoForm";
   }
   
   @RequestMapping("/reservePayForm")
   public String reservePayForm() {
      System.out.println("reservePayForm");
      return "reserve/reservePayForm";
   }
   
   @RequestMapping("/reserveComplete")
   public String reserveComplete() {
      System.out.println("reserveComplete");
      return "reserve/reserveComplete";
   }
   
}