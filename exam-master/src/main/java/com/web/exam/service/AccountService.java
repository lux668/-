package com.web.exam.service; /*
                              lux的JAVA学习日记
                              */

import com.web.exam.domain.Account;
import com.web.exam.repository.AccountRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AccountService extends BaseService<Account> {
  private AccountRepository repository;

  @Autowired
  public AccountService(AccountRepository repository) {
    this.repository = repository;
    super.init(repository);
  }
}
