package org.example.service;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.example.domain.EmpVO;
import org.example.mapper.EmpMapper;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Log4j
@Service
@AllArgsConstructor
public class EmpServiceImpl implements EmpService{
    private EmpMapper mapper;

    @Override
    public void register(EmpVO empVO) {
        mapper.insert(empVO);
    }

    @Override
    public ArrayList<EmpVO> getList() {
        return mapper.getEmpList();
    }

    @Override
    public boolean modify(EmpVO empVO) {
        return mapper.update(empVO) == 1;
    }

    @Override
    public boolean remove(int emp_id) {
        return mapper.delete(emp_id) == 1;
    }

    @Override
    public EmpVO getUpdList(int emp_id) {
        return mapper.getUpdate(emp_id);
    }

    @Override
    public ArrayList<EmpVO> getEmpName(String name) {
        return mapper.getEmpName(name);
    }
}
