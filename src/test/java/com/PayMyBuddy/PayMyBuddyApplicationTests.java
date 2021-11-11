package com.PayMyBuddy;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import com.PayMyBuddy.Controller.LoginController;

@ExtendWith(SpringExtension.class)
@SpringBootTest
class PayMyBuddyApplicationTests {

	 @Autowired
	   private LoginController controller;
	   @Test
	   public void contextLoads(){
		   assertThat(controller).isNotNull();
	   }
	}

