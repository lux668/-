package com.web.exam.controller; /*
                                 lux的JAVA学习日记
                                 */

import com.web.exam.domain.Account;
import com.web.exam.service.AccountService;
import com.web.exam.util.KeyUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;

@RequestMapping("/account")
@Controller
public class AccountController extends BaseController<Account> {

  private com.web.exam.service.AccountService accountService;

  @Autowired
  public AccountController(AccountService accountService) {
    this.accountService = accountService;
    super.init(accountService);
  }

  @GetMapping("/getById")
  public String toEdit(String id, Model model) {
    Account account = findById(id);
    model.addAttribute("account", account);
    return "account_edit";
  }

  @GetMapping("/toList")
  public String toList(Model model) {
    List<Account> accounts = accountService.findAll();

    Collections.sort(
        accounts,
        new Comparator<Account>() {
          @Override
          public int compare(Account o1, Account o2) {
            return o2.getAccountid().compareTo(o1.getAccountid());
          }
        });
    model.addAttribute("accounts", accounts);
    return "account_List";
  }

  @GetMapping("/toAdd")
  public String toAdd() {
    return "redirect:/admin/account_add.jsp";
  }

  @RequestMapping("/add")
  public String add(Account account) {
    account.setId(KeyUtils.genItemId());
    account.setAccountid(new String());
    insert(account);
    return "redirect:toList";
  }

  @RequestMapping("/edit")
  public String edit(Account account) {
    account.setAccountid(new String());
    update(account);
    return "redirect:toList";
  }

  @RequestMapping("/delete")
  public String delete(String id) {
    remove(id);
    return "redirect:toList";
  }
}
