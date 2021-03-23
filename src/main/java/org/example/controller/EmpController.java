package org.example.controller;


import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.example.domain.EmpVO;
import org.example.service.EmpService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@Log4j
@AllArgsConstructor
public class EmpController {

    private EmpService service;

    @GetMapping("/")
    public String list(Model model){
        model.addAttribute("list",service.getList());
        return "list";
    }

    @GetMapping("/updlist")
    public @ResponseBody EmpVO getUpdList(int emp_id){
        System.out.println(service.getUpdList(emp_id));
        EmpVO updList = service.getUpdList(emp_id);
        return updList;
    }

    @PostMapping("/register")
    public String register(EmpVO empVO){
        //RedirectAttributes --> 등록이 끝난 후 다시 목록으로 돌아오기 위해서
        service.register(empVO);

        return "redirect:/";
    }

    @PostMapping("/modify")
    public String modify(EmpVO empVO){
        service.modify(empVO);

        return "redirect:/";
    }

    @PostMapping("/remove")
    public String remove(@RequestParam("emp_id") int emp_id ){
        service.remove(emp_id);

        return "redirect:/";
    }

    @GetMapping("/insert")
    public String insert(){
        return "insert";
    }

    @GetMapping("/search")
    public String search(@RequestParam("sel") String name, Model model){
        model.addAttribute("list",service.getEmpName(name));
        return "list";
    }

}
