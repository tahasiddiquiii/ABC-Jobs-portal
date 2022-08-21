package com.demoone.one;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;



@SpringBootTest
class OneApplicationTests {

//	@Test
//	void contextLoads() {
//	}
//	@Autowired
//	leanerdao re;
	private Calc cal= new Calc();

	@Test
	void contextLoads() {
	}

	@Test
	 void testSum() {
	        //expected
	        int expectedResult = 17;
	        //actual
	        int actualResult = cal.doSum(12, 3, 2);
	        assertThat(actualResult).isEqualTo(expectedResult);
	    }
	@Test
	void Checkbool()
	{
		int b=cal.doProduct(10, 10);
		assertThat(b).isEqualTo(100);
	}
	 @Test
	    void isPersonExitsById(){
		 
	     


	 }
}
