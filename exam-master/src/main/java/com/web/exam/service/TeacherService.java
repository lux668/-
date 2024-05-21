package com.web.exam.service;

import com.web.exam.domain.Teacher;
import com.web.exam.repository.TeacherRepository;
import com.web.exam.vo.LoginVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TeacherService extends BaseService<Teacher> {

  private TeacherRepository repository;

  @Autowired
  public TeacherService(TeacherRepository repository) {
    this.repository = repository;
    super.init(repository);
  }

  public Teacher login(LoginVO form) {
    return repository.findByAccountAndPassword(form.getAccount(), form.getPassword());
  }
}
