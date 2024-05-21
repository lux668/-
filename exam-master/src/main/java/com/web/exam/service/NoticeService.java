package com.web.exam.service;

import com.web.exam.domain.Notice;
import com.web.exam.repository.NoticeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NoticeService extends BaseService<Notice> {

  private NoticeRepository repository;

  @Autowired
  public NoticeService(NoticeRepository repository) {
    this.repository = repository;
    super.init(repository);
  }
}
