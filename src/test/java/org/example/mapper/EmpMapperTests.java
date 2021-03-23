package org.example.mapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:/WEB-INF/applicationContext.xml")
@Log4j
public class EmpMapperTests {

     @Setter(onMethod_ = @Autowired)
     private EmpMapper mapper;

     @Test
     public void testGetList(){
         mapper.getEmpList().forEach(emp -> log.info(emp));
     }
}
