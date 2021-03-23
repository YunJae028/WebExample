package org.example.service;

import org.example.domain.EmpVO;

import java.util.ArrayList;

public interface EmpService {

    public void register(EmpVO empVO);

    public ArrayList<EmpVO> getList();

    public boolean modify(EmpVO empVO);

    public boolean remove(int emp_id);

    public EmpVO getUpdList(int emp_id);

    public ArrayList<EmpVO> getEmpName(String name);

}
