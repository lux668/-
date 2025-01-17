package com.web.exam.controller;

import com.web.exam.constants.SystemConstant;
import com.web.exam.domain.Admin;
import com.web.exam.domain.Student;
import com.web.exam.domain.Teacher;
import com.web.exam.enums.UserTypeEnum;
import com.web.exam.repository.AdminRepository;
import com.web.exam.repository.StudentRepository;
import com.web.exam.repository.TeacherRepository;
import com.web.exam.vo.LoginVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@RequestMapping("/fore")
@Controller
public class ForeController {

  @Autowired private AdminRepository adminRepository;

  @Autowired private TeacherRepository teacherRepository;

  @Autowired private StudentRepository studentRepository;

  @RequestMapping("/index")
  public String exit() {
    return "index";
  }

  @RequestMapping("/exit")
  public String exit(HttpServletRequest request) {
    HttpSession session = request.getSession();
    session.removeAttribute(SystemConstant.SESSION_ADMIN);
    session.removeAttribute(SystemConstant.SESSION_TEACHER);
    session.removeAttribute(SystemConstant.SESSION_STUDENT);
    return "redirect:index";
  }

  @RequestMapping("/login")
  public String login(LoginVO form, Model model, HttpServletRequest request) {
    HttpSession session = request.getSession();
    session.removeAttribute(SystemConstant.SESSION_ADMIN);
    session.removeAttribute(SystemConstant.SESSION_TEACHER);
    session.removeAttribute(SystemConstant.SESSION_STUDENT);
    if (form.getType() == UserTypeEnum.ADMIN.getCode()) {
      Admin admin = adminRepository.findByAccountAndPassword(form.getAccount(), form.getPassword());
      if (admin != null) {
        session.setAttribute(SystemConstant.SESSION_ADMIN, admin);
        return "redirect:/admin/main.jsp";
      }
    } else if (form.getType() == UserTypeEnum.TEACHER.getCode()) {
      Teacher teacher =
          teacherRepository.findByAccountAndPassword(form.getAccount(), form.getPassword());
      if (teacher != null) {
        session.setAttribute(SystemConstant.SESSION_TEACHER, teacher);
        return "redirect:/admin/main.jsp";
      }

    } else if (form.getType() == UserTypeEnum.STUDENT.getCode()) {
      Student student =
          studentRepository.findByAccountAndPassword(form.getAccount(), form.getPassword());
      if (student != null) {
        session.setAttribute(SystemConstant.SESSION_STUDENT, student);
        return "redirect:/admin/main.jsp";
      }
    } else {
      throw new RuntimeException("用户类型错误");
    }
    model.addAttribute("error", "用户名或密码错误");
    return "index";
  }
}
