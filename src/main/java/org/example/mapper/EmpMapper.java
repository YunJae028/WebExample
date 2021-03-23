package org.example.mapper;

import org.apache.ibatis.annotations.Select;
import org.example.domain.EmpVO;

import java.util.ArrayList;
import java.util.List;

public interface EmpMapper {
    //@Select("SELECT * FROM SYJ_EMPLOYEE ORDER BY EMP_ID")
    public ArrayList<EmpVO> getEmpList();

    public ArrayList<EmpVO> getEmpName(String name);

    public EmpVO getUpdate(int emp_id);

    public int update(EmpVO empVO);

    public int delete(int emp_id);

    public void insert(EmpVO empVO);

/*    public void insertSelectKey(EmpVO empVO);*/
}
