package com.web.exam.repository; /*
                                 lux的JAVA学习日记
                                 */

import com.web.exam.domain.Account;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AccountRepository extends JpaRepository<Account, String> {}
