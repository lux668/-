package com.web.exam.service;

import com.web.exam.domain.Course;
import com.web.exam.repository.CourseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CourseService extends BaseService<Course> {

  private CourseRepository repository;

  @Autowired
  public CourseService(CourseRepository repository) {
    this.repository = repository;
    super.init(repository);
  }

  public List<Course> findAllASC() {
    return repository.findAll(Sort.by(Sort.Direction.ASC, "name"));
  }
}
