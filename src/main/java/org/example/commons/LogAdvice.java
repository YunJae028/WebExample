package org.example.commons;

import org.aspectj.lang.ProceedingJoinPoint;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.Arrays;

public class LogAdvice {

    private static final Logger logger = LoggerFactory.getLogger(LogAdvice.class);

    public LogAdvice() {
        System.out.println("LogAdvice.LogAdvice");
    }

    public void printLog(){
        System.out.println("--------------------------");
        System.out.println("log");
    }

    public void startLog(ProceedingJoinPoint jp) throws Throwable{
        logger.info("----------------------------");
        System.out.println("--------------------------");
        logger.info("1 : " + Arrays.toString(jp.getArgs()));

        logger.info("2 : " + jp.getKind());

        logger.info("3 : " + jp.getSignature().getName());

        logger.info("4 : " + jp.getTarget().toString());

        logger.info("5 : " + jp.getThis().toString());
    }
}
